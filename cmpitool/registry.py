'''
Variables, regions and models that cmpitool works with.

AUTHORS:
Jan Streffing               2026-09-29      Replaces cmpisetup(), which defined these classes
                                            inside a function and returned a 16-tuple
'''

from dataclasses import dataclass
from typing import List, Optional

__all__ = ['Variable', 'Region', 'Model', 'VARIABLES', 'make_variables']

# Variables whose observations come from the reanalysis chosen with reanalysis=
REANALYSIS_VARIABLES = ('tas', 'uas', 'vas', 'ua', 'zg')


@dataclass
class Variable:
    '''
    A variable to evaluate.

    name                        CMOR short name, also the first part of the file names
    obs                         Observational dataset, the second part of the obs file names
    depths                      Levels, as they appear in the file names
    domain                      'oce' for ocean variables, which get no value over land
                                regions; 'mixed' otherwise
    label                       Replaces the level in the heatmap row name if set
    default_limit               Bias-map colour range +-default_limit, in the units of
                                the variable; None for 3 standard deviations of the bias
    '''
    name: str
    obs: str
    depths: List[str]
    domain: str = 'mixed'
    label: Optional[str] = None
    default_limit: Optional[float] = None

    def row_label(self, depth):
        '''Name of this variable at this level in the heatmap rows.'''
        if self.label is not None:
            return self.label+self.name
        if depth == 'surface':
            return self.name
        return depth+' '+self.name


@dataclass
class Region:
    '''
    A region to evaluate. add_masks fills in mask and sets active.

    name                        Name of a box, ocean basin or continent known to add_masks
    domain                      'land', 'ocean' or 'mixed'
    '''
    name: str
    domain: str
    mask: object = None
    active: bool = False


def make_variables(reanalysis='ERA5'):
    '''
    Return the variables cmpitool knows, by name, with the observations of
    tas, uas, vas, ua and zg taken from reanalysis ('ERA5' or 'NCEP2').
    '''
    variables = [
        Variable('siconc', 'OSISAF', ['surface'], 'oce', default_limit=60.0),       # %
        Variable('tas', reanalysis, ['surface'], default_limit=5.0),                # K
        Variable('clt', 'MODIS', ['surface'], default_limit=30.0),                  # %
        Variable('pr', 'GPCP', ['surface'], default_limit=5.0/86400),               # kg m-2 s-1, 5 mm/day
        Variable('rlut', 'CERES', ['surface'], default_limit=20.0),                 # W m-2
        Variable('uas', reanalysis, ['surface'], default_limit=3.0),                # m s-1
        Variable('vas', reanalysis, ['surface'], default_limit=3.0),                # m s-1
        Variable('ua', reanalysis, ['300hPa'], default_limit=5.0),                  # m s-1
        Variable('zg', reanalysis, ['500hPa'], default_limit=100.0),                # m
        Variable('zos', 'NESDIS', ['surface'], 'oce', label='st. dev. ', default_limit=0.3),  # m
        Variable('mlotst', 'C-GLORSv7', ['surface'], 'oce', default_limit=100.0),   # m
        Variable('thetao', 'EN4', ['10m', '100m', '1000m'], 'oce', default_limit=3.0),  # K
        Variable('so', 'EN4', ['10m', '100m', '1000m'], 'oce', default_limit=1.0),  # psu
    ]
    return {variable.name: variable for variable in variables}


VARIABLES = make_variables()


@dataclass
class Model:
    '''
    A model to evaluate, or to evaluate against.

    name                        Model name, the middle part of its file names
    variables                   'all', or a list of variable names or Variable objects
    '''
    name: str
    variables: object = 'all'

    def __post_init__(self):
        if isinstance(self.variables, str):
            if self.variables != 'all':
                raise ValueError("variables must be 'all' or a list, not '"+self.variables+"'")
            self.variables = list(VARIABLES.values())
            return
        resolved = []
        for variable in self.variables:
            if isinstance(variable, Variable):
                resolved.append(variable)
            elif variable in VARIABLES:
                resolved.append(VARIABLES[variable])
            else:
                raise ValueError("Unknown variable '"+str(variable)+"' for model "+self.name
                                 +'. Known: '+', '.join(VARIABLES))
        self.variables = resolved
