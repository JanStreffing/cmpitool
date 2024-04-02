def plotting_biasmaps(models, seasons, obs, out_path, verbose):
    '''
    AUTHORS:
    Jan Streffing		2024-04-02	Copied from plotting_heatmaps

    DESCRIPTION:
    This optional function plots bias maps for every variable and season
    
    INPUT:
    models         		List of models to be evaluated
    seasons                     List of seasons to be evaluated
    obs                         List of variables objects for which observations
                                will be loaded
    out_path                    String pointing to the folder in which results will be stored
    verbose                     Boolean for verbose output

    RETURN:
    '''

    from collections import OrderedDict
    from tqdm import tqdm
    import matplotlib.pyplot as plt
    import numpy as np
    import pandas as pd
    import cartopy.crs as ccrs
    import cartopy.feature as cfeature
    from cartopy.util import add_cyclic_point
    import cmocean

    print('Plotting biasmap(s)')

            
    plt.rcParams.update({'figure.max_open_warning': 0})
    for model in tqdm(models):
        for var in obs:
            for depth in var.depths:
                for region in regions:
                    for seas in seasons:
                        try:
                            if len(var.depths) == 1:
                                reorganized_error_fraction[var.name+' '+region.name,depth+' '+seas]=error_fraction[var.name,depth,seas,model.name,region.name].to_array(var.name).values[0][0]
                            else:
                                reorganized_error_fraction[var.name+' '+region.name,depth+' '+seas]=error_fraction[var.name,depth,seas,model.name,region.name].to_array(var.name).values[0][0][0]
                            r+=1
                        except:
                            reorganized_error_fraction[var.name+' '+region.name,depth+' '+seas]=np.nan
        def add_space(input): #Small helper function added spaces in front of season names
            output = []
            for string in input:
                output.append(str(' ')+string)
            return output

        seasons_plot = add_space(seasons) 
        a=seasons_plot*len(regions)
        b=np.repeat(regions_names,len(seasons_plot))
        coord=[n+str(m) for m,n in zip(a,b)]
        
        index_obs=[]
        for var in obs:
            for depth in var.depths:
                if depth == 'surface':
                    levelname=''
                else:
                    levelname=depth+' '
                if var.name == 'zos' or var.name== 'tos':
                    levelname='st. dev. '
                index_obs.append(levelname+var.name)
        if verbose == 'true':
            print(model.name,'number of values: ',len(list(reorganized_error_fraction.values())),'; shape:',len(index_obs),'x',len(regions)*len(seasons))
        collect_frac_reshaped = np.array(list(reorganized_error_fraction.values()) ).reshape(len(index_obs),len(regions)*len(seasons)) # transform to 2D
        collect_frac_dataframe = pd.DataFrame(data=collect_frac_reshaped, index=index_obs, columns=coord)

        fig, ax = plt.subplots(figsize=((len(regions)*len(seasons))/1.5,len(index_obs)/1.5))
        fig.patch.set_facecolor('white')
        plt.rcParams['axes.facecolor'] = 'white'
        ax = sns.heatmap(collect_frac_dataframe, vmin=0.5, vmax=1.5,center=1,annot=True,fmt='.2f',cmap="PiYG_r",cbar=False,linewidths=1)
        plt.xticks(rotation=90,fontsize=14)
        plt.yticks(rotation=0, ha='right',fontsize=14)
        plt.title(model.name+' CMPI: '+str(round(cmpi[model.name],3)), fontsize=18)
        
        plt.savefig(out_path+'plot/'+model.name+'.png',dpi=300,bbox_inches='tight')

