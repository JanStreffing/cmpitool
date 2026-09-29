'''
The header of the error CSVs: which cmpitool, observations and region masks made them.

    # cmpitool 2.0.0
    # obs siconc=OSISAF tas=ERA5 ...
    # masks arctic=1f0c9d2e4b7a northmid=...
    Variable Region Level Season AbsMeanError
    ...

read_errors refuses a reference file made with other observations or masks
than the current run, since its errors would not be comparable.

AUTHORS:
Jan Streffing               2026-09-29      Written for the 2.0.0 reference format
'''

import hashlib

import numpy as np

from . import __version__

__all__ = ['mask_hash', 'format_header', 'read_header', 'check_header']


def mask_hash(mask):
    '''Short hash of a region mask, to tell whether two files used the same mask.'''
    values = np.ascontiguousarray(np.asarray(mask), dtype=bool)
    return hashlib.sha256(str(values.shape).encode()+values.tobytes()).hexdigest()[:12]


def format_header(variables, regions):
    '''Header lines for an error CSV of these variables and of these regions, with masks.'''
    return ['# cmpitool '+__version__,
            '# obs '+' '.join(var.name+'='+var.obs for var in variables),
            '# masks '+' '.join(region.name+'='+mask_hash(region.mask) for region in regions)]


def read_header(path):
    '''
    Return the header of an error CSV as a dict, and its number of lines.

    The dict has 'cmpitool' (a version string), 'obs' and 'masks' (dicts by
    variable and region name). It is empty for a file without a header.
    '''
    header = {}
    lines = 0
    with open(path) as f:
        for line in f:
            if not line.startswith('#'):
                break
            key, _, value = line[1:].strip().partition(' ')
            header[key] = value if key == 'cmpitool' else dict(item.split('=', 1) for item in value.split())
            lines += 1
    return header, lines


def check_header(path, header, variables, regions):
    '''
    Raise a ValueError if the reference file at path was made with other
    observations or masks than these variables and regions. Variables and
    regions the file does not have, and regions without a mask, are not checked.
    '''
    if 'obs' not in header or 'masks' not in header:
        raise ValueError(str(path)+' has no header naming its observations and masks. It was written before '
                         'cmpitool 2.0.0, whose masks differ; recompute it with use_for_eval=True.')
    for var in variables:
        made_with = header['obs'].get(var.name)
        if made_with is not None and made_with != var.obs:
            raise ValueError(str(path)+' has '+var.name+' errors against '+made_with+' observations; this run uses '
                             +var.obs+'. Choose the matching reanalysis or eval_path.')
    for region in regions:
        made_with = header['masks'].get(region.name)
        if region.mask is not None and made_with is not None and made_with != mask_hash(region.mask):
            raise ValueError(str(path)+' was made with another mask for '+region.name+' than this run '
                             '(maskfixes, cmpitool or regionmask version differ). Recompute it with use_for_eval=True.')
