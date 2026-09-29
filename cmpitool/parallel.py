'''
Running independent jobs, such as loading files or drawing plots, in parallel processes.

AUTHORS:
Jan Streffing               2026-09-29      Written for the bias maps, heatmaps and loaders
'''

import multiprocessing
import os
import sys
from concurrent.futures import ProcessPoolExecutor

from tqdm import tqdm

__all__ = ['default_workers', 'run_jobs']


def default_workers():
    '''The CPUs this process may use (the Slurm allocation, for example), at most 8.'''
    try:
        available = len(os.sched_getaffinity(0))
    except AttributeError:  # not on Linux
        available = os.cpu_count() or 1
    return max(1, min(8, available))


def _call(job):
    function, args = job
    return function(*args)


def run_jobs(function, jobs, workers=None):
    '''
    Return [function(*args) for args in jobs], in order, computed by workers
    processes. None uses default_workers(); 1 runs them in this process.
    function must be defined at module level.
    '''
    workers = default_workers() if workers is None else workers
    if workers <= 1 or len(jobs) <= 1:
        return [function(*args) for args in tqdm(jobs)]
    # fork on Linux, so that the workers need not import cmpitool again
    context = multiprocessing.get_context('fork') if sys.platform == 'linux' else None
    with ProcessPoolExecutor(min(workers, len(jobs)), mp_context=context) as pool:
        chunksize = max(1, len(jobs) // (8 * workers))
        return list(tqdm(pool.map(_call, [(function, args) for args in jobs], chunksize=chunksize), total=len(jobs)))
