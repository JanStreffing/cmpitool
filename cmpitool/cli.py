'''
Command line: cmpitool run config.yaml

AUTHORS:
Jan Streffing               2026-09-29      First version
'''

import argparse
import inspect
from pathlib import Path

import yaml

from .pipeline import cmpitool
from .registry import Model

__all__ = ['main', 'run_config']

# Keys of the config that are not passed to cmpitool() as they are
MODEL_KEYS = ('models', 'eval_models')


def _models(entries, key):
    '''Model objects from a list of {name: ..., variables: ...} entries or plain names.'''
    if not isinstance(entries, list) or not entries:
        raise ValueError(key+' must be a non-empty list of models')
    models = []
    for entry in entries:
        if isinstance(entry, str):
            entry = {'name': entry}
        if not isinstance(entry, dict) or 'name' not in entry or set(entry) - {'name', 'variables'}:
            raise ValueError(key+': every model needs a name and may have variables, not '+repr(entry))
        models.append(Model(entry['name'], entry.get('variables', 'all')))
    return models


def run_config(path):
    '''
    Run cmpitool() with the arguments in a YAML file. The keys are the arguments
    of cmpitool(); models and eval_models are lists of models, each a name or
    a mapping with name and optionally variables (default: all).
    '''
    config = yaml.safe_load(Path(path).read_text()) or {}
    if not isinstance(config, dict):
        raise ValueError(str(path)+' must contain a mapping of cmpitool arguments')

    known = set(inspect.signature(cmpitool).parameters)
    unknown = set(config) - known
    if unknown:
        raise ValueError('Unknown keys in '+str(path)+': '+', '.join(sorted(unknown))
                         +'. Known: '+', '.join(sorted(known)))
    for key in ('model_path', 'models'):
        if key not in config:
            raise ValueError(str(path)+' needs '+key)

    kwargs = dict(config)
    for key in MODEL_KEYS:
        if key in kwargs and kwargs[key] is not None:
            kwargs[key] = _models(kwargs[key], key)
    return cmpitool(**kwargs)


def main(argv=None):
    parser = argparse.ArgumentParser(prog='cmpitool', description='Climate Model Performance Index')
    commands = parser.add_subparsers(dest='command', required=True)
    run = commands.add_parser('run', help='run cmpitool with the arguments in a YAML file')
    run.add_argument('config', help='YAML file, see example.yaml')
    args = parser.parse_args(argv)
    if args.command == 'run':
        run_config(args.config)


if __name__ == '__main__':
    main()
