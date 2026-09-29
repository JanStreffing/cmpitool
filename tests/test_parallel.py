"""Jobs run in parallel processes give the same results, in the same order, as in one process."""

from cmpitool.parallel import default_workers, run_jobs


def test_parallel_matches_serial():
    jobs = [(base, 3) for base in range(20)]
    assert run_jobs(pow, jobs, workers=3) == run_jobs(pow, jobs, workers=1) == [b**3 for b in range(20)]


def test_default_workers_is_between_1_and_8():
    assert 1 <= default_workers() <= 8
