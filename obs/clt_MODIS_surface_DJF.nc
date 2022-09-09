CDF      
      time       bnds      lon    �   lat    [      ;   CDI       @Climate Data Interface version 1.9.9 (https://mpimet.mpg.de/cdi)   Conventions       CF-1.6, ACDD-1.3   source        1idl 8.4, mcd06cosp_preyori 20220218-1, yori 1.5.0      YAML_config      MHgrid_settings:
  gridsize: 1
  projection: conformal
  lat_in: Latitude
  lon_in: Longitude
  lat_out: Latitude
  lon_out: Longitude
  fill_value: -999

variable_settings:

  - name_in: Solar_Zenith
    name_out: Solar_Zenith
    attributes: 
    - name: long_name
      value: Solar Zenith Angle (Cell to Sun) for Daytime Scenes
    - name: units
      value: degrees
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: 0.0
    - name: valid_max
      value: 180.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0
    masks:
    - Mask_Day

  - name_in: Solar_Azimuth
    name_out: Solar_Azimuth
    attributes: 
    - name: long_name
      value: Solar Azimuth Angle (Cell to Sun) for Daytime Scenes
    - name: units
      value: degrees
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: -180.0
    - name: valid_max
      value: 180.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0
    masks:
    - Mask_Day

  - name_in: Sensor_Zenith
    name_out: Sensor_Zenith
    attributes: 
    - name: long_name
      value: Sensor Zenith Angle (Cell to Sensor) for Daytime Scenes
    - name: units
      value: degrees
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: 0.0
    - name: valid_max
      value: 180.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0
    masks:
    - Mask_Day

  - name_in: Sensor_Azimuth
    name_out: Sensor_Azimuth
    attributes: 
    - name: long_name
      value: Sensor Azimuth Angle (Cell to Sensor) for Daytime Scenes
    - name: units
      value: degrees
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: -180.0
    - name: valid_max
      value: 180.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0
    masks:
    - Mask_Day


  - name_in: Cloud_Top_Pressure
    name_out: Cloud_Top_Pressure
    attributes: 
    - name: long_name
      value: Cloud Top Pressure for Daytime Scenes
    - name: units
      value: mb
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: 1.0
    - name: valid_max
      value: 1100.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0
    masks:
    - Mask_Day


  - name_in: Cloud_Fraction
    name_out: Cloud_Mask_Fraction
    attributes: 
    - name: long_name
      value: Cloud Fraction from Cloud Mask for Daytime Scenes
    - name: units
      value: none
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: 0.0
    - name: valid_max
      value: 1.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0
    masks:
    - Mask_Day

  - name_in: Cloud_Fraction_Low
    name_out: Cloud_Mask_Fraction_Low
    attributes: 
    - name: long_name
      value: Cloud Fraction from Cloud Mask (Low Clouds, CTP GE 680 hPa) for Daytime Scenes
    - name: units
      value: none
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: 0.0
    - name: valid_max
      value: 1.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0
    masks:
    - Mask_Day

  - name_in: Cloud_Fraction_Mid
    name_out: Cloud_Mask_Fraction_Mid
    attributes: 
    - name: long_name
      value: Cloud Fraction from Cloud Mask (Mid Clouds, CTP GE 440 hPa AND CTP LT 680 hPa) for Daytime Scenes
    - name: units
      value: none
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: 0.0
    - name: valid_max
      value: 1.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0
    masks:
    - Mask_Day

  - name_in: Cloud_Fraction_High
    name_out: Cloud_Mask_Fraction_High
    attributes: 
    - name: long_name
      value: Cloud Fraction from Cloud Mask (High Clouds, CTP LT 440 hPa) for Daytime Scenes
    - name: units
      value: none
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: 0.0
    - name: valid_max
      value: 1.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0
    masks:
    - Mask_Day








  - name_in: Cloud_Optical_Thickness
    name_out: Cloud_Optical_Thickness_Liquid
    attributes: 
    - name: long_name
      value: Cloud Optical Thickness for Liquid Water Clouds (3.7 micron Retrieval for Cloudy Scenes)
    - name: units
      value: none
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: 0.0
    - name: valid_max
      value: 150.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0
    2D_histograms:
    - name_out: JHisto_vs_Cloud_Particle_Size_Liquid
      primary_var:
        edges: [0.0, 0.3, 1.3, 3.6, 9.4, 23.0, 60.0, 150.0]
      joint_var:
        name_in: Cloud_Effective_Radius
        edges: [4.0, 8.0, 10.0, 12.5, 15.0, 20.0, 30.0]
    - name_out: JHisto_vs_Cloud_Top_Pressure
      primary_var:
        edges: [0.0, 0.3, 1.3, 3.6, 9.4, 23.0, 60.0, 150.0]
      joint_var:
        name_in: Cloud_Top_Pressure
        edges: [0.0, 180.0, 310.0, 440.0, 560.0, 680.0, 800.0, 1100.0]
    masks:
    - Mask_Valid_Range_CER
    - Mask_Liquid_Water_Phase_Clouds

  - name_in: Cloud_Optical_Thickness
    name_out: Cloud_Optical_Thickness_Ice
    attributes: 
    - name: long_name
      value: Cloud Optical Thickness for Ice Clouds (3.7 micron Retrieval for Cloudy Scenes)
    - name: units
      value: none
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: 0.0
    - name: valid_max
      value: 150.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0
    2D_histograms:
    - name_out: JHisto_vs_Cloud_Particle_Size_Ice
      primary_var:
        edges: [0.0, 0.3, 1.3, 3.6, 9.4, 23.0, 60.0, 150.0]
      joint_var:
        name_in: Cloud_Effective_Radius
        edges: [5.0, 10.0, 20.0, 30.0, 40.0, 50.0, 60.0]
    - name_out: JHisto_vs_Cloud_Top_Pressure
      primary_var:
        edges: [0.0, 0.3, 1.3, 3.6, 9.4, 23.0, 60.0, 150.0]
      joint_var:
        name_in: Cloud_Top_Pressure
        edges: [0.0, 180.0, 310.0, 440.0, 560.0, 680.0, 800.0, 1100.0]
    masks:
    - Mask_Ice_Phase_Clouds

      
  - name_in: Cloud_Optical_Thickness
    name_out: Cloud_Optical_Thickness_Total
    attributes: 
    - name: long_name
      value: Cloud Optical Thickness for Combined (LiquidWater+Ice+Undetermined) Phase Clouds (3.7 micron Retrieval for Cloudy Scenes)
    - name: units
      value: none
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: 0.0
    - name: valid_max
      value: 150.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0
    2D_histograms:
    - name_out: JHisto_vs_Cloud_Top_Pressure
      primary_var:
        edges: [0.0, 0.3, 1.3, 3.6, 9.4, 23.0, 60.0, 150.0]
      joint_var:
        name_in: Cloud_Top_Pressure
        edges: [0.0, 180.0, 310.0, 440.0, 560.0, 680.0, 800.0, 1100.0]
    masks:
    - Mask_Valid_Range_CER
    - Mask_Combined_Phase_Clouds








  - name_in: Cloud_Optical_Thickness_PCL
    name_out: Cloud_Optical_Thickness_PCL_Liquid
    attributes: 
    - name: long_name
      value: Cloud Optical Thickness for Liquid Water Phase Clouds (3.7 micron Retrieval for Partly Cloudy (PCL) Scenes)
    - name: units
      value: none
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: 0.0
    - name: valid_max
      value: 150.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0
    2D_histograms:
    - name_out: JHisto_vs_Cloud_Particle_Size_PCL_Liquid
      primary_var:
        edges: [0.0, 0.3, 1.3, 3.6, 9.4, 23.0, 60.0, 150.0]
      joint_var:
        name_in: Cloud_Effective_Radius_PCL
        edges: [4.0, 8.0, 10.0, 12.5, 15.0, 20.0, 30.0]
    - name_out: JHisto_vs_Cloud_Top_Pressure
      primary_var:
        edges: [0.0, 0.3, 1.3, 3.6, 9.4, 23.0, 60.0, 150.0]
      joint_var:
        name_in: Cloud_Top_Pressure
        edges: [0.0, 180.0, 310.0, 440.0, 560.0, 680.0, 800.0, 1100.0]
    masks:
    - Mask_Valid_Range_CERPCL
    - Mask_Liquid_Water_Phase_Clouds



  - name_in: Cloud_Optical_Thickness_PCL
    name_out: Cloud_Optical_Thickness_PCL_Ice
    attributes: 
    - name: long_name
      value: Cloud Optical Thickness for Ice Phase Clouds (3.7 micron Retrieval for Partly Cloudy (PCL) Scenes)
    - name: units
      value: none
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: 0.0
    - name: valid_max
      value: 150.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0
    2D_histograms:
    - name_out: JHisto_vs_Cloud_Particle_Size_PCL_Ice
      primary_var:
        edges: [0.0, 0.3, 1.3, 3.6, 9.4, 23.0, 60.0, 150.0]
      joint_var:
        name_in: Cloud_Effective_Radius_PCL
        edges: [5.0, 10.0, 20.0, 30.0, 40.0, 50.0, 60.0]
    - name_out: JHisto_vs_Cloud_Top_Pressure
      primary_var:
        edges: [0.0, 0.3, 1.3, 3.6, 9.4, 23.0, 60.0, 150.0]
      joint_var:
        name_in: Cloud_Top_Pressure
        edges: [0.0, 180.0, 310.0, 440.0, 560.0, 680.0, 800.0, 1100.0]
    masks:
    - Mask_Valid_Range_CERPCL
    - Mask_Ice_Phase_Clouds



  - name_in: Cloud_Optical_Thickness_PCL
    name_out: Cloud_Optical_Thickness_PCL_Total
    attributes: 
    - name: long_name
      value: Cloud Optical Thickness for Combined (LiquidWater+Ice+Undetermined) Phase Clouds (3.7 micron Retrieval for Partly Cloudy (PCL) Scenes)
    - name: units
      value: none
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: 0.0
    - name: valid_max
      value: 150.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0
    2D_histograms:
    - name_out: JHisto_vs_Cloud_Top_Pressure
      primary_var:
        edges: [0.0, 0.3, 1.3, 3.6, 9.4, 23.0, 60.0, 150.0]
      joint_var:
        name_in: Cloud_Top_Pressure
        edges: [0.0, 180.0, 310.0, 440.0, 560.0, 680.0, 800.0, 1100.0]
    masks:
    - Mask_Valid_Range_CERPCL
    - Mask_Combined_Phase_Clouds









  - name_in: Cloud_Optical_Thickness_Log
    name_out: Cloud_Optical_Thickness_Log10_Liquid
    attributes: 
    - name: long_name
      value: Cloud Optical Thickness Log10 for Liquid Water Clouds (3.7 micron Retrieval for Cloudy Scenes)
    - name: units
      value: none
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: -2.0
    - name: valid_max
      value: 2.176
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0
    masks:
    - Mask_Valid_Range_CER
    - Mask_Liquid_Water_Phase_Clouds

  - name_in: Cloud_Optical_Thickness_Log
    name_out: Cloud_Optical_Thickness_Log10_Ice
    attributes: 
    - name: long_name
      value: Cloud Optical Thickness Log10 for Ice Clouds (3.7 micron Retrieval for Cloudy Scenes)
    - name: units
      value: none
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: -2.0
    - name: valid_max
      value: 2.176
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0
    masks:
    - Mask_Ice_Phase_Clouds

      
  - name_in: Cloud_Optical_Thickness_Log
    name_out: Cloud_Optical_Thickness_Log10_Total
    attributes: 
    - name: long_name
      value: Cloud Optical Thickness Log10 for Combined (LiquidWater+Ice+Undetermined) Phase Clouds (3.7 micron Retrieval for Cloudy Scenes)
    - name: units
      value: none
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: -2.0
    - name: valid_max
      value: 2.176
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0
    masks:
    - Mask_Valid_Range_CER
    - Mask_Combined_Phase_Clouds






  - name_in: Cloud_Effective_Radius
    name_out: Cloud_Particle_Size_Liquid
    attributes: 
    - name: long_name
      value: Cloud Effective Radius for Liquid Water Clouds (3.7 micron Retrieval for Cloudy Scenes)
    - name: units
      value: microns
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: 4.0
    - name: valid_max
      value: 30.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0
    masks:
    - Mask_Valid_Range_CER
    - Mask_Liquid_Water_Phase_Clouds

  - name_in: Cloud_Effective_Radius
    name_out: Cloud_Particle_Size_Ice
    attributes: 
    - name: long_name
      value: Cloud Effective Radius for Ice Clouds (3.7 micron Retrieval for Cloudy Scenes)
    - name: units
      value: microns
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: 5.0
    - name: valid_max
      value: 60.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0
    masks:
    - Mask_Ice_Phase_Clouds




  - name_in: Cloud_Effective_Radius_PCL
    name_out: Cloud_Particle_Size_PCL_Liquid
    attributes: 
    - name: long_name
      value: Cloud Effective Radius for Liquid Water Clouds (3.7 micron Retrieval for Partly Cloudy (PCL) Scenes)
    - name: units
      value: microns
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: 4.0
    - name: valid_max
      value: 30.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0
    masks:
    - Mask_Valid_Range_CERPCL
    - Mask_Liquid_Water_Phase_Clouds


  - name_in: Cloud_Effective_Radius_PCL
    name_out: Cloud_Particle_Size_PCL_Ice
    attributes: 
    - name: long_name
      value: Cloud Effective Radius for Ice Clouds (3.7 micron Retrieval for Partly Cloudy (PCL) Scenes)
    - name: units
      value: microns
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: 5.0
    - name: valid_max
      value: 60.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0
    masks:
    - Mask_Ice_Phase_Clouds





  - name_in: Cloud_Water_Path
    name_out: Cloud_Water_Path_Liquid
    attributes: 
    - name: long_name
      value: Cloud Water Path for Liquid Water Clouds (3.7 micron Retrieval for Cloudy Scenes)
    - name: units
      value: g/m^2  
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: 0.0
    - name: valid_max
      value: 3000.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0
    2D_histograms:
    - name_out: JHisto_vs_Cloud_Particle_Size_Liquid
      primary_var:
        edges: [0.0, 10.0, 30.0, 60.0, 100.0, 150.0, 250.0, 20000.0]
      joint_var:
        name_in: Cloud_Effective_Radius
        edges: [4.0, 8.0, 10.0, 12.5, 15.0, 20.0, 30.0]
    masks:
    - Mask_Valid_Range_CER
    - Mask_Liquid_Water_Phase_Clouds

  - name_in: Cloud_Water_Path
    name_out: Cloud_Water_Path_Ice
    attributes: 
    - name: long_name
      value: Cloud Water Path for Ice Clouds (3.7 micron Retrieval for Cloudy Scenes)
    - name: units
      value: g/m^2
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: 0.0
    - name: valid_max
      value: 6000.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0
    2D_histograms:
    - name_out: JHisto_vs_Cloud_Particle_Size_Ice
      primary_var:
        edges: [0.0, 20.0, 50.0, 100.0, 200.0, 400.0, 1000.0, 20000.0]
      joint_var:
        name_in: Cloud_Effective_Radius
        edges: [5.0, 10.0, 20.0, 30.0, 40.0, 50.0, 60.0]
    masks:
    - Mask_Ice_Phase_Clouds



  - name_in: Cloud_Water_Path_PCL
    name_out: Cloud_Water_Path_PCL_Liquid
    attributes: 
    - name: long_name
      value: Cloud Water Path for Liquid Water Clouds (3.7 micron Retrieval for Partly Cloudy (PCL) Scenes)
    - name: units
      value: g/m^2  
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: 0.0
    - name: valid_max
      value: 3000.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0
    2D_histograms:
    - name_out: JHisto_vs_Cloud_Particle_Size_PCL_Liquid
      primary_var:
        edges: [0.0, 10.0, 30.0, 60.0, 100.0, 150.0, 250.0, 20000.0]
      joint_var:
        name_in: Cloud_Effective_Radius_PCL
        edges: [4.0, 8.0, 10.0, 12.5, 15.0, 20.0, 30.0]
    masks:
    - Mask_Valid_Range_CERPCL
    - Mask_Liquid_Water_Phase_Clouds

  - name_in: Cloud_Water_Path_PCL
    name_out: Cloud_Water_Path_PCL_Ice
    attributes: 
    - name: long_name
      value: Cloud Water Path for Ice Clouds (3.7 micron Retrieval for Partly Cloudy (PCL) Scenes)
    - name: units
      value: g/m^2
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: 0.0
    - name: valid_max
      value: 6000.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0
    2D_histograms:
    - name_out: JHisto_vs_Cloud_Particle_Size_PCL_Ice
      primary_var:
        edges: [0.0, 20.0, 50.0, 100.0, 200.0, 400.0, 1000.0, 20000.0]
      joint_var:
        name_in: Cloud_Effective_Radius_PCL
        edges: [5.0, 10.0, 20.0, 30.0, 40.0, 50.0, 60.0]
    masks:
    - Mask_Ice_Phase_Clouds



  - name_in: COPR_Liquid
    name_out: Cloud_Retrieval_Fraction_Liquid
    attributes: 
    - name: long_name
      value: Cloud Optical Properties Retrieval Fraction (Liquid Water Clouds)
    - name: units
      value: none
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: 0.0
    - name: valid_max
      value: 1.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0

  - name_in: COPR_Ice
    name_out: Cloud_Retrieval_Fraction_Ice
    attributes: 
    - name: long_name
      value: Cloud Optical Properties Retrieval Fraction (Ice Clouds)
    - name: units
      value: none
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: 0.0
    - name: valid_max
      value: 1.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0

  - name_in: COPR_Combined
    name_out: Cloud_Retrieval_Fraction_Total
    attributes: 
    - name: long_name
      value: Cloud Optical Properties Retrieval Fraction (Combined (LiquidWater+Ice+Undetermined) Phase Clouds)
    - name: units
      value: none
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: 0.0
    - name: valid_max
      value: 1.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0






  - name_in: COPR_PCL_Liquid
    name_out: Cloud_Retrieval_Fraction_PCL_Liquid
    attributes: 
    - name: long_name
      value: Cloud Optical Properties Retrieval Fraction (Liquid Water Clouds) for Partly Cloudy (PCL) Retrievals
    - name: units
      value: none
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: 0.0
    - name: valid_max
      value: 1.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0

  - name_in: COPR_PCL_Ice
    name_out: Cloud_Retrieval_Fraction_PCL_Ice
    attributes: 
    - name: long_name
      value: Cloud Optical Properties Retrieval Fraction (Ice Clouds) for Partly Cloudy (PCL) Retrievals
    - name: units
      value: none
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: 0.0
    - name: valid_max
      value: 1.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0

  - name_in: COPR_PCL_Combined
    name_out: Cloud_Retrieval_Fraction_PCL_Total
    attributes: 
    - name: long_name
      value: Cloud Optical Properties Retrieval Fraction (Combined Clouds (LiquidWater+Ice+Undetermined) for Partly Cloudy (PCL) Retrievals
    - name: units
      value: none
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: 0.0
    - name: valid_max
      value: 1.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0









   Yori_version      1.5.0      input_files      ��MCD06COSP_G3_MODIS_Aqua.A2002185.0000.062.2022125093440.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0005.062.2022125092240.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0010.062.2022125091615.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0015.062.2022125090103.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0020.062.2022125085212.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0025.062.2022125080904.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0030.062.2022125071908.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0035.062.2022125091516.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0040.062.2022125090902.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0045.062.2022125091826.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0050.062.2022125084530.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0055.062.2022125093012.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0100.062.2022125093238.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0105.062.2022125090305.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0110.062.2022125092726.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0115.062.2022125073327.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0120.062.2022125083510.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0125.062.2022125091411.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0130.062.2022125080807.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0135.062.2022125091245.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0140.062.2022125075316.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0145.062.2022125091810.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0150.062.2022125090152.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0155.062.2022125091354.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0200.062.2022125082905.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0205.062.2022125084849.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0210.062.2022125092113.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0215.062.2022125092100.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0220.062.2022125082308.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0225.062.2022125090855.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0230.062.2022125091432.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0235.062.2022125082348.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0240.062.2022125073508.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0245.062.2022125082248.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0250.062.2022125085905.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0255.062.2022125090352.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0300.062.2022125084647.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0305.062.2022125080932.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0310.062.2022125093512.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0315.062.2022125073743.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0320.062.2022125085816.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0325.062.2022125091313.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0330.062.2022125074737.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0335.062.2022125093527.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0340.062.2022125090559.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0345.062.2022125092009.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0350.062.2022125085733.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0355.062.2022125084407.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0400.062.2022125072804.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0405.062.2022125083435.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0410.062.2022125090323.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0415.062.2022125074029.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0420.062.2022125092711.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0425.062.2022125093609.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0430.062.2022125090551.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0435.062.2022125091509.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0440.062.2022125093107.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0445.062.2022125083451.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0450.062.2022125084839.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0455.062.2022125083942.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0500.062.2022125084632.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0505.062.2022125085408.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0510.062.2022125091126.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0515.062.2022125093026.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0520.062.2022125090929.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0525.062.2022125084012.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0530.062.2022125073116.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0535.062.2022125073540.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0540.062.2022125092924.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0545.062.2022125090656.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0550.062.2022125084156.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0555.062.2022125091208.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0600.062.2022125092152.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0605.062.2022125091943.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0610.062.2022125093052.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0615.062.2022125083926.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0620.062.2022125091741.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0625.062.2022125092532.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0630.062.2022125082121.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0635.062.2022125085229.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0640.062.2022125090718.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0645.062.2022125090941.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0650.062.2022125084433.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0655.062.2022125092547.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0700.062.2022125091501.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0705.062.2022125072016.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0710.062.2022125090134.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0715.062.2022125092142.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0720.062.2022125090755.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0725.062.2022125090056.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0730.062.2022125091005.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0735.062.2022125084229.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0740.062.2022125092344.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0745.062.2022125091037.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0750.062.2022125093408.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0755.062.2022125075829.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0800.062.2022125081237.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0805.062.2022125091102.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0810.062.2022125084420.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0815.062.2022125085204.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0820.062.2022125083229.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0825.062.2022125091752.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0830.062.2022125090257.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0835.062.2022125075702.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0840.062.2022125085001.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0845.062.2022125080738.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0850.062.2022125090030.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0855.062.2022125093117.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0900.062.2022125092019.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0905.062.2022125083138.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0910.062.2022125092002.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0915.062.2022125080004.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0920.062.2022125085749.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0925.062.2022125083743.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0930.062.2022125072243.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0935.062.2022125085946.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0940.062.2022125093351.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0945.062.2022125092553.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0950.062.2022125090451.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0955.062.2022125075248.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1000.062.2022125093401.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1005.062.2022125074444.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1010.062.2022125085841.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1015.062.2022125090643.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1020.062.2022125091139.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1025.062.2022125084903.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1030.062.2022125083048.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1035.062.2022125092744.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1040.062.2022125083344.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1045.062.2022125085050.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1050.062.2022125085514.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1055.062.2022125082224.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1100.062.2022125085911.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1105.062.2022125092228.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1110.062.2022125085639.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1115.062.2022125093228.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1120.062.2022125080356.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1125.062.2022125090636.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1130.062.2022125083031.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1135.062.2022125090128.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1140.062.2022125073848.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1145.062.2022125091659.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1150.062.2022125074341.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1155.062.2022125090827.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1200.062.2022125093059.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1205.062.2022125092106.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1210.062.2022125085239.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1215.062.2022125072559.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1220.062.2022125082510.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1225.062.2022125092418.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1230.062.2022125075124.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1235.062.2022125092600.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1240.062.2022125083628.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1245.062.2022125080137.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1250.062.2022125091851.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1255.062.2022125092840.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1300.062.2022125085934.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1305.062.2022125081059.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1310.062.2022125090839.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1315.062.2022125090425.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1320.062.2022125075605.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1325.062.2022125083717.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1330.062.2022125081843.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1335.062.2022125092047.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1340.062.2022125074552.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1345.062.2022125085528.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1350.062.2022125083014.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1355.062.2022125091843.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1400.062.2022125092614.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1405.062.2022125084814.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1410.062.2022125091046.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1415.062.2022125090515.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1420.062.2022125084247.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1425.062.2022125085221.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1430.062.2022125093534.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1435.062.2022125093452.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1440.062.2022125090401.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1445.062.2022125072909.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1450.062.2022125072628.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1455.062.2022125073216.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1500.062.2022125092606.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1505.062.2022125085607.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1510.062.2022125092654.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1515.062.2022125083213.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1520.062.2022125090741.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1525.062.2022125085040.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1530.062.2022125085601.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1535.062.2022125092525.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1540.062.2022125090957.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1545.062.2022125084751.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1550.062.2022125091133.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1555.062.2022125093005.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1600.062.2022125084617.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1605.062.2022125084100.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1610.062.2022125090621.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1615.062.2022125085012.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1620.062.2022125092214.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1625.062.2022125093043.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1630.062.2022125083804.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1635.062.2022125091258.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1640.062.2022125085401.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1645.062.2022125085147.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1650.062.2022125085714.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1655.062.2022125080258.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1700.062.2022125092821.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1705.062.2022125074841.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1710.062.2022125085130.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1715.062.2022125090249.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1720.062.2022125084122.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1725.062.2022125090201.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1730.062.2022125093602.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1735.062.2022125085156.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1740.062.2022125093131.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1745.062.2022125091329.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1750.062.2022125090434.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1755.062.2022125085312.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1800.062.2022125090723.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1805.062.2022125084741.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1810.062.2022125085139.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1815.062.2022125093421.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1820.062.2022125080232.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1825.062.2022125090846.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1830.062.2022125082849.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1835.062.2022125090629.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1840.062.2022125083554.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1845.062.2022125085846.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1850.062.2022125091803.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1855.062.2022125085121.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1900.062.2022125091221.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1905.062.2022125072729.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1910.062.2022125092917.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1915.062.2022125075220.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1920.062.2022125084542.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1925.062.2022125085332.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1930.062.2022125092755.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1935.062.2022125083610.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1940.062.2022125073007.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1945.062.2022125082729.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1950.062.2022125093205.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1955.062.2022125075932.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2000.062.2022125084447.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2005.062.2022125091758.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2010.062.2022125085620.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2015.062.2022125093415.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2020.062.2022125093148.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2025.062.2022125085727.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2030.062.2022125081444.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2035.062.2022125082035.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2040.062.2022125090224.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2045.062.2022125085345.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2050.062.2022125092908.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2055.062.2022125093124.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2100.062.2022125074203.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2105.062.2022125072326.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2110.062.2022125085249.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2115.062.2022125092459.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2120.062.2022125084938.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2125.062.2022125075537.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2130.062.2022125081123.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2135.062.2022125092328.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2140.062.2022125090344.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2145.062.2022125090016.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2150.062.2022125092403.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2155.062.2022125072655.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2200.062.2022125085353.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2205.062.2022125092829.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2210.062.2022125080518.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2215.062.2022125091933.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2220.062.2022125092642.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2225.062.2022125093548.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2230.062.2022125090048.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2235.062.2022125082410.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2240.062.2022125085703.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2245.062.2022125092335.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2250.062.2022125073043.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2255.062.2022125072442.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2300.062.2022125085627.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2305.062.2022125092410.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2310.062.2022125090146.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2315.062.2022125091546.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2320.062.2022125081358.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2325.062.2022125092849.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2330.062.2022125091620.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2335.062.2022125081420.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2340.062.2022125092648.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2345.062.2022125093620.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2350.062.2022125071835.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2355.062.2022125093141.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0000.062.2022125085503.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0005.062.2022125080834.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0010.062.2022125090507.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0015.062.2022125092733.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0020.062.2022125092541.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0025.062.2022125085918.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0030.062.2022125084517.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0035.062.2022125074517.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0040.062.2022125092220.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0045.062.2022125090704.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0050.062.2022125091251.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0055.062.2022125082923.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0100.062.2022125084500.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0105.062.2022125092956.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0110.062.2022125082204.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0115.062.2022125091651.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0120.062.2022125090210.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0125.062.2022125091606.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0130.062.2022125085854.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0135.062.2022125073610.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0140.062.2022125093221.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0145.062.2022125085810.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0150.062.2022125081820.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0155.062.2022125074101.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0200.062.2022125090923.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0205.062.2022125091423.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0210.062.2022125080451.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0215.062.2022125090809.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0220.062.2022125091338.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0225.062.2022125075634.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0230.062.2022125074133.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0235.062.2022125091345.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0240.062.2022125090333.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0245.062.2022125090410.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0250.062.2022125084556.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0255.062.2022125083417.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0300.062.2022125074309.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0305.062.2022125085925.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0310.062.2022125085551.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0315.062.2022125091728.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0320.062.2022125092356.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0325.062.2022125073817.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0330.062.2022125085414.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0335.062.2022125085613.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0340.062.2022125091144.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0345.062.2022125080032.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0350.062.2022125092350.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0355.062.2022125091149.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0400.062.2022125073958.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0405.062.2022125072051.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0410.062.2022125093020.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0415.062.2022125090005.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0420.062.2022125082057.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0425.062.2022125072525.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0430.062.2022125093248.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0435.062.2022125081034.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0440.062.2022125093313.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0445.062.2022125091642.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0450.062.2022125081932.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0455.062.2022125091019.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0500.062.2022125091321.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0505.062.2022125091913.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0510.062.2022125080714.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0515.062.2022125082942.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0520.062.2022125090417.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0525.062.2022125080612.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0530.062.2022125091721.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0535.062.2022125085101.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0540.062.2022125082710.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0545.062.2022125090802.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0550.062.2022125091119.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0555.062.2022125073249.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0600.062.2022125082749.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0605.062.2022125093157.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0610.062.2022125082959.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0615.062.2022125092126.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0620.062.2022125082142.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0625.062.2022125081530.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0630.062.2022125090316.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0635.062.2022125085438.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0640.062.2022125084319.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0645.062.2022125080326.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0650.062.2022125091214.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0655.062.2022125085110.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0700.062.2022125074412.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0705.062.2022125073147.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0710.062.2022125092806.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0715.062.2022125080546.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0720.062.2022125093507.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0725.062.2022125093541.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0730.062.2022125072125.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0735.062.2022125092029.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0740.062.2022125093256.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0745.062.2022125091238.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0750.062.2022125083643.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0755.062.2022125090538.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0800.062.2022125090039.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0805.062.2022125090748.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0810.062.2022125073926.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0815.062.2022125074235.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0820.062.2022125091531.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0825.062.2022125075345.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0830.062.2022125092936.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0835.062.2022125085721.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0840.062.2022125091447.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0845.062.2022125084729.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0850.062.2022125084027.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0855.062.2022125091634.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0900.062.2022125080103.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0905.062.2022125093615.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0910.062.2022125092308.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0915.062.2022125090607.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0920.062.2022125083908.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0925.062.2022125092053.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0930.062.2022125092431.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0935.062.2022125092628.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0940.062.2022125091954.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0945.062.2022125081554.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0950.062.2022125082653.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0955.062.2022125091551.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1000.062.2022125090729.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1005.062.2022125075152.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1010.062.2022125081508.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1015.062.2022125093344.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1020.062.2022125081756.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1025.062.2022125085542.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1030.062.2022125093554.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1035.062.2022125082428.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1040.062.2022125081145.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1045.062.2022125091525.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1050.062.2022125093334.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1055.062.2022125074626.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1100.062.2022125090459.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1105.062.2022125080642.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1110.062.2022125090121.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1115.062.2022125091559.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1120.062.2022125091028.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1125.062.2022125093322.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1130.062.2022125091455.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1135.062.2022125085651.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1140.062.2022125082809.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1145.062.2022125075053.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1150.062.2022125085302.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1155.062.2022125091012.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1200.062.2022125085536.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1205.062.2022125083958.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1210.062.2022125092621.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1215.062.2022125084828.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1220.062.2022125090530.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1225.062.2022125090935.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1230.062.2022125085425.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1235.062.2022125081620.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1240.062.2022125090914.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1245.062.2022125081909.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1250.062.2022125092201.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1255.062.2022125091440.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1300.062.2022125091054.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1305.062.2022125092814.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1310.062.2022125083247.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1315.062.2022125083539.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1320.062.2022125092425.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1325.062.2022125085756.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1330.062.2022125090231.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1335.062.2022125080208.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1340.062.2022125085323.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1345.062.2022125092119.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1350.062.2022125083525.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1355.062.2022125075437.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1400.062.2022125081710.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1405.062.2022125091401.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1410.062.2022125072404.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1415.062.2022125073644.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1420.062.2022125092300.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1425.062.2022125075509.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1430.062.2022125084212.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1435.062.2022125083849.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1440.062.2022125083309.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1445.062.2022125092701.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1450.062.2022125092636.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1455.062.2022125085029.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1500.062.2022125081644.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1505.062.2022125092207.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1510.062.2022125082014.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1515.062.2022125090734.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1520.062.2022125093444.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1525.062.2022125074915.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1530.062.2022125075021.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1535.062.2022125084142.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1540.062.2022125084044.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1545.062.2022125083829.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1550.062.2022125072835.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1555.062.2022125082830.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1600.062.2022125081332.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1605.062.2022125073432.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1610.062.2022125093305.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1615.062.2022125092509.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1620.062.2022125085956.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1625.062.2022125093212.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1630.062.2022125090948.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1635.062.2022125073715.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1640.062.2022125091905.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1645.062.2022125092948.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1650.062.2022125092322.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1655.062.2022125090649.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1700.062.2022125083400.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1705.062.2022125092136.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1710.062.2022125091705.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1715.062.2022125092929.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1720.062.2022125091110.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1725.062.2022125092857.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1730.062.2022125084350.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1735.062.2022125082327.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1740.062.2022125083106.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1745.062.2022125084333.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1750.062.2022125091628.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1755.062.2022125091818.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1800.062.2022125093429.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1805.062.2022125081734.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1810.062.2022125082634.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1815.062.2022125083700.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1820.062.2022125085825.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1825.062.2022125092516.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1830.062.2022125090544.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1835.062.2022125080425.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1840.062.2022125090833.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1845.062.2022125092452.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1850.062.2022125075411.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1855.062.2022125090217.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1900.062.2022125073357.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1905.062.2022125084918.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1910.062.2022125093519.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1915.062.2022125085451.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1920.062.2022125091306.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1925.062.2022125091835.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1930.062.2022125082449.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1935.062.2022125072206.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1940.062.2022125091714.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1945.062.2022125074703.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1950.062.2022125092042.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1955.062.2022125085740.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2000.062.2022125091231.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2005.062.2022125092446.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2010.062.2022125093435.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2015.062.2022125075729.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2020.062.2022125074950.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2025.062.2022125081210.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2030.062.2022125093038.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2035.062.2022125090711.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2040.062.2022125090444.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2045.062.2022125082614.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2050.062.2022125082553.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2055.062.2022125090817.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2100.062.2022125091925.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2105.062.2022125084704.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2110.062.2022125075758.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2115.062.2022125081307.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2120.062.2022125090023.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2125.062.2022125083156.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2130.062.2022125071942.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2135.062.2022125092438.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2140.062.2022125083326.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2145.062.2022125092718.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2150.062.2022125092941.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2155.062.2022125093502.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2200.062.2022125091858.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2205.062.2022125092317.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2210.062.2022125092234.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2215.062.2022125075901.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2220.062.2022125081953.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2225.062.2022125084301.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2230.062.2022125090239.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2235.062.2022125091159.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2240.062.2022125092251.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2245.062.2022125091538.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2250.062.2022125085834.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2255.062.2022125084716.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2300.062.2022125090112.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2305.062.2022125081003.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2310.062.2022125084951.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2315.062.2022125074811.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2320.062.2022125093033.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2325.062.2022125082528.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2330.062.2022125085522.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2335.062.2022125090140.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2340.062.2022125090524.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2345.062.2022125072936.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2350.062.2022125085803.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2355.062.2022125083122.nc    daily_defn_of_day_adjustment      False      date_created      2022-05-05T07:18:10Z   product_name      0MCD06COSP_D3_MODIS.A2002185.062.2022125093622.nc   LocalGranuleID        0MCD06COSP_D3_MODIS.A2002185.062.2022125093622.nc   	ShortName         MCD06COSP_D3_MODIS     product_version       6.2.0      AlgorithmType         OPS    identifier_product_doi        $10.5067/MODIS/MCD06COSP_D3_MODIS.062    identifier_product_doi_authority      http://dx.doi.org      DataCenterId      UWI-MAD/SSEC/ASIPS     project       NASA VIIRS Atmosphere SIPS     creator_name      NASA VIIRS Atmosphere SIPS     creator_url       https://sips.ssec.wisc.edu     creator_email         sips.support@ssec.wisc.edu     creator_institution       ESpace Science & Engineering Center, University of Wisconsin - Madison      publisher_name        LAADS      publisher_url         'https://ladsweb.modaps.eosdis.nasa.gov/    publisher_email       modis-ops@lists.nasa.gov   publisher_institution         9NASA Level-1 and Atmosphere Archive & Distribution System      time_coverage_start       2002-07-04T00:00:00.000000     time_coverage_end         2002-07-04T23:59:59.000000     xmlmetadata      �J<?xml version="1.0"?>
<!DOCTYPE GranuleMetaDataFile SYSTEM "http://ecsinfo.gsfc.nasa.gov/ECSInfo/ecsmetadata/dtds/DPL/ECS/ScienceGranuleMetadata.dtd">
<GranuleMetaDataFile>
  <DTDVersion>1.0</DTDVersion>
  <DataCenterId>UWI-MAD/SSEC/ASIPS</DataCenterId>
  <GranuleURMetaData>
    <CollectionMetaData>
      <ShortName>MCD06COSP_D3_MODIS</ShortName>
      <VersionID>62</VersionID>
    </CollectionMetaData>
    <ECSDataGranule>
      <ReprocessingPlanned>no further reprocessing anticipated</ReprocessingPlanned>
      <LocalGranuleID>MCD06COSP_D3_MODIS.A2002185.062.2022125093622.nc</LocalGranuleID>
 
      <ProductionDateTime>2022-05-05 09:43:55.240730</ProductionDateTime>
      <LocalVersionID>62</LocalVersionID>
    </ECSDataGranule>
    <PGEVersionClass>
      <PGEVersion>6.2.0</PGEVersion>
    </PGEVersionClass>
    <RangeDateTime>
      <RangeEndingTime>23:59:59.000000</RangeEndingTime>
      <RangeEndingDate>2002-07-04</RangeEndingDate>
      <RangeBeginningTime>00:00:00.000000</RangeBeginningTime>
      <RangeBeginningDate>2002-07-04</RangeBeginningDate>
    </RangeDateTime>
    <SpatialDomainContainer>
      <HorizontalSpatialDomainContainer>
        <BoundingRectangle>
          <WestBoundingCoordinate>-180</WestBoundingCoordinate>
          <NorthBoundingCoordinate>90</NorthBoundingCoordinate>
          <EastBoundingCoordinate>180</EastBoundingCoordinate>
          <SouthBoundingCoordinate>-90</SouthBoundingCoordinate>
        </BoundingRectangle>
      </HorizontalSpatialDomainContainer>
    </SpatialDomainContainer>
    <Platform>
      <PlatformShortName>Aqua, Terra</PlatformShortName>
      <Instrument>
        <InstrumentShortName>MODIS</InstrumentShortName>
        <Sensor>
          <SensorShortName>MODIS</SensorShortName>
        </Sensor>
      </Instrument>
    </Platform>
    <InputGranule>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0000.062.2022125093440.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0005.062.2022125092240.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0010.062.2022125091615.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0015.062.2022125090103.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0020.062.2022125085212.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0025.062.2022125080904.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0030.062.2022125071908.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0035.062.2022125091516.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0040.062.2022125090902.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0045.062.2022125091826.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0050.062.2022125084530.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0055.062.2022125093012.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0100.062.2022125093238.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0105.062.2022125090305.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0110.062.2022125092726.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0115.062.2022125073327.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0120.062.2022125083510.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0125.062.2022125091411.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0130.062.2022125080807.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0135.062.2022125091245.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0140.062.2022125075316.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0145.062.2022125091810.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0150.062.2022125090152.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0155.062.2022125091354.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0200.062.2022125082905.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0205.062.2022125084849.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0210.062.2022125092113.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0215.062.2022125092100.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0220.062.2022125082308.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0225.062.2022125090855.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0230.062.2022125091432.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0235.062.2022125082348.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0240.062.2022125073508.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0245.062.2022125082248.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0250.062.2022125085905.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0255.062.2022125090352.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0300.062.2022125084647.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0305.062.2022125080932.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0310.062.2022125093512.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0315.062.2022125073743.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0320.062.2022125085816.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0325.062.2022125091313.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0330.062.2022125074737.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0335.062.2022125093527.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0340.062.2022125090559.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0345.062.2022125092009.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0350.062.2022125085733.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0355.062.2022125084407.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0400.062.2022125072804.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0405.062.2022125083435.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0410.062.2022125090323.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0415.062.2022125074029.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0420.062.2022125092711.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0425.062.2022125093609.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0430.062.2022125090551.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0435.062.2022125091509.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0440.062.2022125093107.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0445.062.2022125083451.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0450.062.2022125084839.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0455.062.2022125083942.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0500.062.2022125084632.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0505.062.2022125085408.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0510.062.2022125091126.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0515.062.2022125093026.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0520.062.2022125090929.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0525.062.2022125084012.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0530.062.2022125073116.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0535.062.2022125073540.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0540.062.2022125092924.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0545.062.2022125090656.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0550.062.2022125084156.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0555.062.2022125091208.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0600.062.2022125092152.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0605.062.2022125091943.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0610.062.2022125093052.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0615.062.2022125083926.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0620.062.2022125091741.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0625.062.2022125092532.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0630.062.2022125082121.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0635.062.2022125085229.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0640.062.2022125090718.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0645.062.2022125090941.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0650.062.2022125084433.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0655.062.2022125092547.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0700.062.2022125091501.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0705.062.2022125072016.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0710.062.2022125090134.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0715.062.2022125092142.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0720.062.2022125090755.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0725.062.2022125090056.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0730.062.2022125091005.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0735.062.2022125084229.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0740.062.2022125092344.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0745.062.2022125091037.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0750.062.2022125093408.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0755.062.2022125075829.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0800.062.2022125081237.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0805.062.2022125091102.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0810.062.2022125084420.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0815.062.2022125085204.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0820.062.2022125083229.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0825.062.2022125091752.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0830.062.2022125090257.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0835.062.2022125075702.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0840.062.2022125085001.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0845.062.2022125080738.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0850.062.2022125090030.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0855.062.2022125093117.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0900.062.2022125092019.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0905.062.2022125083138.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0910.062.2022125092002.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0915.062.2022125080004.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0920.062.2022125085749.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0925.062.2022125083743.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0930.062.2022125072243.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0935.062.2022125085946.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0940.062.2022125093351.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0945.062.2022125092553.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0950.062.2022125090451.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0955.062.2022125075248.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1000.062.2022125093401.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1005.062.2022125074444.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1010.062.2022125085841.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1015.062.2022125090643.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1020.062.2022125091139.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1025.062.2022125084903.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1030.062.2022125083048.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1035.062.2022125092744.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1040.062.2022125083344.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1045.062.2022125085050.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1050.062.2022125085514.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1055.062.2022125082224.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1100.062.2022125085911.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1105.062.2022125092228.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1110.062.2022125085639.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1115.062.2022125093228.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1120.062.2022125080356.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1125.062.2022125090636.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1130.062.2022125083031.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1135.062.2022125090128.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1140.062.2022125073848.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1145.062.2022125091659.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1150.062.2022125074341.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1155.062.2022125090827.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1200.062.2022125093059.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1205.062.2022125092106.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1210.062.2022125085239.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1215.062.2022125072559.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1220.062.2022125082510.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1225.062.2022125092418.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1230.062.2022125075124.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1235.062.2022125092600.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1240.062.2022125083628.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1245.062.2022125080137.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1250.062.2022125091851.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1255.062.2022125092840.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1300.062.2022125085934.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1305.062.2022125081059.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1310.062.2022125090839.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1315.062.2022125090425.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1320.062.2022125075605.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1325.062.2022125083717.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1330.062.2022125081843.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1335.062.2022125092047.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1340.062.2022125074552.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1345.062.2022125085528.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1350.062.2022125083014.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1355.062.2022125091843.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1400.062.2022125092614.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1405.062.2022125084814.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1410.062.2022125091046.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1415.062.2022125090515.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1420.062.2022125084247.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1425.062.2022125085221.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1430.062.2022125093534.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1435.062.2022125093452.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1440.062.2022125090401.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1445.062.2022125072909.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1450.062.2022125072628.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1455.062.2022125073216.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1500.062.2022125092606.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1505.062.2022125085607.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1510.062.2022125092654.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1515.062.2022125083213.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1520.062.2022125090741.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1525.062.2022125085040.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1530.062.2022125085601.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1535.062.2022125092525.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1540.062.2022125090957.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1545.062.2022125084751.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1550.062.2022125091133.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1555.062.2022125093005.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1600.062.2022125084617.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1605.062.2022125084100.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1610.062.2022125090621.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1615.062.2022125085012.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1620.062.2022125092214.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1625.062.2022125093043.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1630.062.2022125083804.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1635.062.2022125091258.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1640.062.2022125085401.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1645.062.2022125085147.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1650.062.2022125085714.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1655.062.2022125080258.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1700.062.2022125092821.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1705.062.2022125074841.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1710.062.2022125085130.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1715.062.2022125090249.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1720.062.2022125084122.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1725.062.2022125090201.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1730.062.2022125093602.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1735.062.2022125085156.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1740.062.2022125093131.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1745.062.2022125091329.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1750.062.2022125090434.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1755.062.2022125085312.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1800.062.2022125090723.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1805.062.2022125084741.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1810.062.2022125085139.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1815.062.2022125093421.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1820.062.2022125080232.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1825.062.2022125090846.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1830.062.2022125082849.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1835.062.2022125090629.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1840.062.2022125083554.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1845.062.2022125085846.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1850.062.2022125091803.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1855.062.2022125085121.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1900.062.2022125091221.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1905.062.2022125072729.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1910.062.2022125092917.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1915.062.2022125075220.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1920.062.2022125084542.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1925.062.2022125085332.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1930.062.2022125092755.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1935.062.2022125083610.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1940.062.2022125073007.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1945.062.2022125082729.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1950.062.2022125093205.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1955.062.2022125075932.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2000.062.2022125084447.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2005.062.2022125091758.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2010.062.2022125085620.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2015.062.2022125093415.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2020.062.2022125093148.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2025.062.2022125085727.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2030.062.2022125081444.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2035.062.2022125082035.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2040.062.2022125090224.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2045.062.2022125085345.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2050.062.2022125092908.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2055.062.2022125093124.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2100.062.2022125074203.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2105.062.2022125072326.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2110.062.2022125085249.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2115.062.2022125092459.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2120.062.2022125084938.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2125.062.2022125075537.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2130.062.2022125081123.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2135.062.2022125092328.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2140.062.2022125090344.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2145.062.2022125090016.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2150.062.2022125092403.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2155.062.2022125072655.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2200.062.2022125085353.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2205.062.2022125092829.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2210.062.2022125080518.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2215.062.2022125091933.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2220.062.2022125092642.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2225.062.2022125093548.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2230.062.2022125090048.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2235.062.2022125082410.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2240.062.2022125085703.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2245.062.2022125092335.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2250.062.2022125073043.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2255.062.2022125072442.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2300.062.2022125085627.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2305.062.2022125092410.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2310.062.2022125090146.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2315.062.2022125091546.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2320.062.2022125081358.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2325.062.2022125092849.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2330.062.2022125091620.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2335.062.2022125081420.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2340.062.2022125092648.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2345.062.2022125093620.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2350.062.2022125071835.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2355.062.2022125093141.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0000.062.2022125085503.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0005.062.2022125080834.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0010.062.2022125090507.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0015.062.2022125092733.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0020.062.2022125092541.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0025.062.2022125085918.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0030.062.2022125084517.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0035.062.2022125074517.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0040.062.2022125092220.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0045.062.2022125090704.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0050.062.2022125091251.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0055.062.2022125082923.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0100.062.2022125084500.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0105.062.2022125092956.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0110.062.2022125082204.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0115.062.2022125091651.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0120.062.2022125090210.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0125.062.2022125091606.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0130.062.2022125085854.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0135.062.2022125073610.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0140.062.2022125093221.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0145.062.2022125085810.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0150.062.2022125081820.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0155.062.2022125074101.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0200.062.2022125090923.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0205.062.2022125091423.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0210.062.2022125080451.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0215.062.2022125090809.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0220.062.2022125091338.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0225.062.2022125075634.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0230.062.2022125074133.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0235.062.2022125091345.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0240.062.2022125090333.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0245.062.2022125090410.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0250.062.2022125084556.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0255.062.2022125083417.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0300.062.2022125074309.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0305.062.2022125085925.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0310.062.2022125085551.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0315.062.2022125091728.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0320.062.2022125092356.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0325.062.2022125073817.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0330.062.2022125085414.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0335.062.2022125085613.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0340.062.2022125091144.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0345.062.2022125080032.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0350.062.2022125092350.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0355.062.2022125091149.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0400.062.2022125073958.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0405.062.2022125072051.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0410.062.2022125093020.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0415.062.2022125090005.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0420.062.2022125082057.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0425.062.2022125072525.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0430.062.2022125093248.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0435.062.2022125081034.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0440.062.2022125093313.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0445.062.2022125091642.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0450.062.2022125081932.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0455.062.2022125091019.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0500.062.2022125091321.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0505.062.2022125091913.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0510.062.2022125080714.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0515.062.2022125082942.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0520.062.2022125090417.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0525.062.2022125080612.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0530.062.2022125091721.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0535.062.2022125085101.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0540.062.2022125082710.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0545.062.2022125090802.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0550.062.2022125091119.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0555.062.2022125073249.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0600.062.2022125082749.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0605.062.2022125093157.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0610.062.2022125082959.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0615.062.2022125092126.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0620.062.2022125082142.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0625.062.2022125081530.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0630.062.2022125090316.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0635.062.2022125085438.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0640.062.2022125084319.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0645.062.2022125080326.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0650.062.2022125091214.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0655.062.2022125085110.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0700.062.2022125074412.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0705.062.2022125073147.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0710.062.2022125092806.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0715.062.2022125080546.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0720.062.2022125093507.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0725.062.2022125093541.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0730.062.2022125072125.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0735.062.2022125092029.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0740.062.2022125093256.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0745.062.2022125091238.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0750.062.2022125083643.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0755.062.2022125090538.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0800.062.2022125090039.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0805.062.2022125090748.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0810.062.2022125073926.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0815.062.2022125074235.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0820.062.2022125091531.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0825.062.2022125075345.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0830.062.2022125092936.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0835.062.2022125085721.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0840.062.2022125091447.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0845.062.2022125084729.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0850.062.2022125084027.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0855.062.2022125091634.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0900.062.2022125080103.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0905.062.2022125093615.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0910.062.2022125092308.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0915.062.2022125090607.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0920.062.2022125083908.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0925.062.2022125092053.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0930.062.2022125092431.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0935.062.2022125092628.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0940.062.2022125091954.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0945.062.2022125081554.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0950.062.2022125082653.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0955.062.2022125091551.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1000.062.2022125090729.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1005.062.2022125075152.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1010.062.2022125081508.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1015.062.2022125093344.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1020.062.2022125081756.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1025.062.2022125085542.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1030.062.2022125093554.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1035.062.2022125082428.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1040.062.2022125081145.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1045.062.2022125091525.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1050.062.2022125093334.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1055.062.2022125074626.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1100.062.2022125090459.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1105.062.2022125080642.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1110.062.2022125090121.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1115.062.2022125091559.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1120.062.2022125091028.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1125.062.2022125093322.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1130.062.2022125091455.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1135.062.2022125085651.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1140.062.2022125082809.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1145.062.2022125075053.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1150.062.2022125085302.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1155.062.2022125091012.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1200.062.2022125085536.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1205.062.2022125083958.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1210.062.2022125092621.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1215.062.2022125084828.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1220.062.2022125090530.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1225.062.2022125090935.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1230.062.2022125085425.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1235.062.2022125081620.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1240.062.2022125090914.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1245.062.2022125081909.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1250.062.2022125092201.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1255.062.2022125091440.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1300.062.2022125091054.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1305.062.2022125092814.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1310.062.2022125083247.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1315.062.2022125083539.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1320.062.2022125092425.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1325.062.2022125085756.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1330.062.2022125090231.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1335.062.2022125080208.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1340.062.2022125085323.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1345.062.2022125092119.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1350.062.2022125083525.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1355.062.2022125075437.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1400.062.2022125081710.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1405.062.2022125091401.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1410.062.2022125072404.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1415.062.2022125073644.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1420.062.2022125092300.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1425.062.2022125075509.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1430.062.2022125084212.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1435.062.2022125083849.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1440.062.2022125083309.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1445.062.2022125092701.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1450.062.2022125092636.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1455.062.2022125085029.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1500.062.2022125081644.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1505.062.2022125092207.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1510.062.2022125082014.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1515.062.2022125090734.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1520.062.2022125093444.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1525.062.2022125074915.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1530.062.2022125075021.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1535.062.2022125084142.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1540.062.2022125084044.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1545.062.2022125083829.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1550.062.2022125072835.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1555.062.2022125082830.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1600.062.2022125081332.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1605.062.2022125073432.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1610.062.2022125093305.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1615.062.2022125092509.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1620.062.2022125085956.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1625.062.2022125093212.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1630.062.2022125090948.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1635.062.2022125073715.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1640.062.2022125091905.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1645.062.2022125092948.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1650.062.2022125092322.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1655.062.2022125090649.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1700.062.2022125083400.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1705.062.2022125092136.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1710.062.2022125091705.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1715.062.2022125092929.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1720.062.2022125091110.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1725.062.2022125092857.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1730.062.2022125084350.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1735.062.2022125082327.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1740.062.2022125083106.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1745.062.2022125084333.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1750.062.2022125091628.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1755.062.2022125091818.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1800.062.2022125093429.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1805.062.2022125081734.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1810.062.2022125082634.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1815.062.2022125083700.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1820.062.2022125085825.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1825.062.2022125092516.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1830.062.2022125090544.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1835.062.2022125080425.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1840.062.2022125090833.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1845.062.2022125092452.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1850.062.2022125075411.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1855.062.2022125090217.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1900.062.2022125073357.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1905.062.2022125084918.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1910.062.2022125093519.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1915.062.2022125085451.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1920.062.2022125091306.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1925.062.2022125091835.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1930.062.2022125082449.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1935.062.2022125072206.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1940.062.2022125091714.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1945.062.2022125074703.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1950.062.2022125092042.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1955.062.2022125085740.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2000.062.2022125091231.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2005.062.2022125092446.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2010.062.2022125093435.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2015.062.2022125075729.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2020.062.2022125074950.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2025.062.2022125081210.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2030.062.2022125093038.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2035.062.2022125090711.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2040.062.2022125090444.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2045.062.2022125082614.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2050.062.2022125082553.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2055.062.2022125090817.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2100.062.2022125091925.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2105.062.2022125084704.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2110.062.2022125075758.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2115.062.2022125081307.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2120.062.2022125090023.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2125.062.2022125083156.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2130.062.2022125071942.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2135.062.2022125092438.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2140.062.2022125083326.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2145.062.2022125092718.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2150.062.2022125092941.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2155.062.2022125093502.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2200.062.2022125091858.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2205.062.2022125092317.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2210.062.2022125092234.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2215.062.2022125075901.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2220.062.2022125081953.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2225.062.2022125084301.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2230.062.2022125090239.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2235.062.2022125091159.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2240.062.2022125092251.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2245.062.2022125091538.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2250.062.2022125085834.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2255.062.2022125084716.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2300.062.2022125090112.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2305.062.2022125081003.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2310.062.2022125084951.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2315.062.2022125074811.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2320.062.2022125093033.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2325.062.2022125082528.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2330.062.2022125085522.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2335.062.2022125090140.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2340.062.2022125090524.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2345.062.2022125072936.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2350.062.2022125085803.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2355.062.2022125083122.nc</InputPointer>
    </InputGranule>
    <AncillaryInputGranules>
    </AncillaryInputGranules>
  </GranuleURMetaData>
</GranuleMetaDataFile>     platform      Aqua, Terra    
instrument        MODIS      processing_level      L3     format        NetCDF4    title         UAqua/Terra MODIS Cloud Properties Level 3 daily, 1x1 degree grid (MCD06COSP_D3_MODIS)      	long_name         1Cloud Fraction from Cloud Mask for Daytime Scenes      
version_id        062    geospatial_lat_max        @V�        geospatial_lat_min        �V�        geospatial_lon_min        @f�        geospatial_lon_max        �f�        NorthBoundingCoordinate       @V�        SouthBoundingCoordinate       �V�        EastBoundingCoordinate        @f�        WestBoundingCoordinate        �f�        latitude_resolution       ?�         longitude_resolution      ?�         license       Qhttp://science.nasa.gov/earth-science/earth-science-data/data-information-policy/      stdname_vocabulary        4NetCDF Climate and Forecast (CF) Metadata Convention   keywords_vocabulary       ;NASA Global Change Master Directory (GCMD) Science Keywords    keywords      �EARTH SCIENCE > ATMOSPHERE > CLOUDS > CLOUD MICROPHYSICS > CLOUD OPTICAL DEPTH/THICKNESS, EARTH SCIENCE > ATMOSPHERE > CLOUDS > CLOUD PROPERTIES > CLOUD TOP HEIGHT, EARTH SCIENCE > ATMOSPHERE > CLOUDS > CLOUD PROPERTIES > CLOUD FRACTION   naming_authority      gov.nasa.gsfc.sci.atmos    units         none   
_FillValue        ��8        	valid_min                    	valid_max         ?�         scale_factor      ?�         
add_offset                   NCO       _netCDF Operators version 5.0.6 (Homepage = http://nco.sf.net, Code = http://github.com/nco/nco)    history      (Fri Sep 09 14:27:54 2022: cdo timmean clt_MODIS_surface_DJF.nc djf
Fri Sep 02 14:51:40 2022: cdo splitseas Modis_Cloud_Mask_Fraction_ymonmean_cmor.nc Modis_Cloud_Mask_Fraction_
Fri Sep 02 14:37:47 2022: cdo mulc,100 -chname,Mean,clt Modis_Cloud_Mask_Fraction_ymonmean_r.nc Modis_Cloud_Mask_Fraction_ymonmean_cmor.nc
Fri Sep 02 14:24:28 2022: cdo remapbil,r180x91 Modis_Cloud_Mask_Fraction_ymonmean.nc Modis_Cloud_Mask_Fraction_ymonmean_r.nc
Fri Sep 02 14:21:08 2022: cdo ymonmean Modis_Cloud_Mask_Fraction_daily.nc Modis_Cloud_Mask_Fraction_ymonmean.nc   CDO       @Climate Data Operators version 1.9.9 (https://mpimet.mpg.de/cdo)         time                standard_name         time   bounds        	time_bnds      units         days since 2002-7-4 00:00:00   calendar      proleptic_gregorian    axis      T          �4   	time_bnds                            �<   lon                standard_name         	longitude      	long_name         	longitude      units         degrees_east   axis      X        � ��   lat                standard_name         latitude   	long_name         latitude   units         degrees_north      axis      Y        � �\   clt                       units         none   
_FillValue        ��8        missing_value         ��8        cell_methods      
time: mean     title         Cloud_Mask_Fraction: Mean       �� �L        @       @      @      @       @$      @(      @,      @0      @2      @4      @6      @8      @:      @<      @>      @@      @A      @B      @C      @D      @E      @F      @G      @H      @I      @J      @K      @L      @M      @N      @O      @P      @P�     @Q      @Q�     @R      @R�     @S      @S�     @T      @T�     @U      @U�     @V      @V�     @W      @W�     @X      @X�     @Y      @Y�     @Z      @Z�     @[      @[�     @\      @\�     @]      @]�     @^      @^�     @_      @_�     @`      @`@     @`�     @`�     @a      @a@     @a�     @a�     @b      @b@     @b�     @b�     @c      @c@     @c�     @c�     @d      @d@     @d�     @d�     @e      @e@     @e�     @e�     @f      @f@     @f�     @f�     @g      @g@     @g�     @g�     @h      @h@     @h�     @h�     @i      @i@     @i�     @i�     @j      @j@     @j�     @j�     @k      @k@     @k�     @k�     @l      @l@     @l�     @l�     @m      @m@     @m�     @m�     @n      @n@     @n�     @n�     @o      @o@     @o�     @o�     @p      @p      @p@     @p`     @p�     @p�     @p�     @p�     @q      @q      @q@     @q`     @q�     @q�     @q�     @q�     @r      @r      @r@     @r`     @r�     @r�     @r�     @r�     @s      @s      @s@     @s`     @s�     @s�     @s�     @s�     @t      @t      @t@     @t`     @t�     @t�     @t�     @t�     @u      @u      @u@     @u`     @u�     @u�     @u�     @u�     @v      @v      @v@     @v`     �V�     �V      �U�     �U      �T�     �T      �S�     �S      �R�     �R      �Q�     �Q      �P�     �P      �O      �N      �M      �L      �K      �J      �I      �H      �G      �F      �E      �D      �C      �B      �A      �@      �>      �<      �:      �8      �6      �4      �2      �0      �,      �(      �$      �       �      �      �               @       @      @      @       @$      @(      @,      @0      @2      @4      @6      @8      @:      @<      @>      @@      @A      @B      @C      @D      @E      @F      @G      @H      @I      @J      @K      @L      @M      @N      @O      @P      @P�     @Q      @Q�     @R      @R�     @S      @S�     @T      @T�     @U      @U�     @V      @V�     @�     @f�     @��     @G;떽�@B?f,3@A�'��@@��K��@=�3�rLX@:p���z+@7\ʇ��L@8�iU�	�@<U�"ͦ!@D��5��@R\0Do��@V���}rl@W����M@W��?@W�0��@W�{#�}@W�)�y �@WiA��w5@WO���cX@WR��*S@W>��/��@W	[>���@V=���?�@U�FԳC@U5�bW@T6�w���@SSzm�`q@Q�-�{�C@O�iqe@L���?�@J�z s�e@J����	#@K�KO��\@Mm��;�@N�rՅ@P*uf�@Pۂ���@P�p���Q@P�W1q:�@Pd|��N�@NWȳl(�@Mh��@O�@{�@Q�b����@S�tDQ�k@UFMj�)�@V$j.�9M@V&[�ux@P��{[�@A���;�{@2=k-վ�@-��(�B{@.O����O@2t�I�i�@4�
�"p@4�+�(��@6"bi ��@4u	nw�I@5���x\@2���_�@5mZ�@9��\1��@FE�4��@L�����@K�܋��O@J�����%@PL��@R����@S6IL�lS@T9K��@S�=b�@S�~�5=�@SP<�p��@T��:/�#@U>0d��@U�_&��@WA���e@W}âT@Wצ5���@W��W*�@X#g���@X^Bp_o@X��#gu@X�5������8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@B ��x@@�q��@@d���@=E\�0r�@9䊀&��@6�N�6K@8�N�+�@<
���@B�F�hp@R:ӥ�w@V�����@W��+�@W�$��5@W�%ʐ��@W��k�ĝ@W��o!�@Wo��ot@W9LE��@WUT����@WL;VSp@V�9p7@VAߜ�80@V'h�!~@U��2z@T1�t���@S�\�{�@Qך�U��@O��#.)u@L��o��@KY1h@K�Q��@M,M\��]@N����BU@P.���	@P���^�@Qke
ߏ+@Q�;+�.:@Qv"�@P��Sn.@O-��P@N�����@Py�ѓ@R�˨_��@Tx$:�P@U��$��@V1i�CTc@Vp����@T'�M4�@C>���_!@3�!�]�@-p���.�@-}z}�@0��4_8�@3ِ��@5O�T�y@5���-)@2�v�Sv@28]�{qQ@0jg�"�@4y��@:�Md�@EI����@LS�0	��@M:�����@L�m�Gg�@M/��x}G@R����C;@S��{r�|@T�����@T��.�@S3N��v�@S~��Z�@UX�$��@Uo���@U��O��@W�:|��@W�ܶi�@X� � @W��@��@X�]�j%@X^(@�6@X��	���@X�N�2����8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@BdJq�@@��X?kG@?��wKn�@<գc��@8�<R��|@66� f۸@8�K�\��@<&T�z�@A���w@Q�Bmu��@V�h9R�%@W�����@W˲��@W���,�T@W���n�@W����E@W�_N]��@W-����@W*A҇u�@Woa�Y�@V� Q�S@V�)�O0s@V(]��+@UVu�AJ�@TFe��س@S8�w攛@Q�7z1B�@O�N�n&`@ML�1\�E@L�\d�Eg@L�'�U�@M��p6�@O���%�C@P�����9@Qkl5B�#@Q�)��w@R,j�� �@R�a��R@Q<�Q�mC@Pť���@P(0���@Q����7�@S���m��@U[ϵ2U�@V'��|�U@V`x���@V�SBܒ}@UA2U�o@EP:4��@3LJ����@-��@,Ң�0�@0�#K�@2���2�@64Ӫ�@5;��B�@3z݁�_�@1���0��@2V}c�@2�0�cS@6&X�� #@A#�;E��@K�OC�Iq@OJ9,��@P$
A8�9@N����@P<�s�w�@Th6�@T���״O@U�=&L�@T#���@T;�r�p@U25U@U�`~��H@Vm$�:;�@V��Ls�4@W�`�4�X@W�<���1@W��.}� @W��h�@�@XTDF�{@X�P�5�!@Xٳ��;+��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@B	�}�@@�4�$�T@>�8��(�@:�-Zq�`@7�s����@5��ڜ��@83R����@<�0sMX@B�u�7��@QZ�4S��@VϦ6[h�@W�|=�Ip@W�|s��g@W�\�@W��U���@W�E���@W�x�F3@W3��]@WK�~��@V��b� @V���	��@V!a�c�S@U�q�um�@UGr���@@TFe���[@S;���@QL_���@OW�Ž��@M�[U�u@M�Q�@MX�2GK�@N�rL�@P�VFO�@P���g�@Q��=�(}@R)�����@R�z<�D�@R�7�VaX@Q�BNJ#�@P�Q^��S@P�	`�n^@R��K��@T��5܊/@U��|�@Vw*Z�H@V��:v�@V>ű�cH@QԪ��D@D��o5��@3����@,��9�'@,T˶NC@0#S��@/��{�@3��9�@5 P� .t@5�3@2d�k��@3����3�@54�W��@>k���p�@G*N���@M_T�`��@Pw�O�mw@Qw4U���@P)ƆN�e@M��M4�@R���@T�
��|@U\W�G��@T��Ց�)@T���ޙX@U^�.@U-��X�@S�σ��S@S� :d�'@V�W�t�@W��9�uJ@W���10@X�Ӫ�y@X_����@X���O�e@X�d�`���8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@Bz�L6�@@VH4v�_@=֙� �@9j��g�@6���"�{@5�l���@7Q�[� @=���(/@B� ���@PВ3�O@V�!�=�@W�H��/@W�C�*^L@W����D@W�T�o�U@W���w`�@Ww��@W3M����@W[TS��@V����@V�l�%��@Vj�@@U��K'��@U$�9�Q@TR���M@R��"bŴ@Q��7)@N���4-l@M	��?�@Lt9��D@M 8Mj�@N:��O4C@P��A@P����*�@Q��7��}@Rh���=�@S��(T@S}���u@R�~����@Q���c��@Q�w��	@S�� ���@U�^tE]{@Vx!�:} @V�_fC��@W,c@߬�@V;}�C?�@P�x8�j@B��Ty'@1�fA�Y@/D��S�@+s͕$"�@.{y�k;@+�%ӉA@1Hr��;�@3i�*���@4+2��nt@3#�=[�@2��rr=/@4�H� �@>���-��@J]�(�XI@N��qHC7@Pi��*J@P��~�@P�sX�@Ou�좂�@P���Mu@T|����@U���;�@UV�y4�@T�ݓ&�@TyJߴM�@T	=D�@@Rg,���@R�9v%e�@U~w��@W�5cj@W�?�z@X�d?݅@X;����@Xt�u|[@X�y��N���8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@A�X(#��@@9~g�@<��~K �@8u��S�+@5�M��4�@4�B6U@6�#_��@=�6���@B4e�ޅ@P��k9E@V��ܐ��@W�5�X� @W��66\�@W�w��d@W��n	�@W�����@Wz
Zy�@W|\XO@WF�w�!@V��Q�e@V������@V�S�k�{@U�C+ݏ�@T�l�6�W@Tu�Ō�=@R�� �%@P�F���@NWbb��@Lv�*@K�RH
��@L�ǢY(@L�(��3@N�D���@Q/��M@Q�l�<h@QtL7�@S��T�@S�>s�@Rv_��V@R.�}yM@R��+mn@U
"F��@VHښ�E@V�O��r @V��`���@VsWV��%@T�u�6�@FG�t��@>[u����@2m��c�@0qzp���@&�*{�&[@)�f"��@,q�g;@1s�BL�T@2����@4W�����@3e��<�@2�R�4�}@7.�:���@>A7�U!=@D�f�@N�}/��@N��b_��@N��᏿@N,?�"B�@P�%��A@P���c��@S�_ٜ�@U���I�@U���h�4@Ut(<���@T˥1��@Tw(�ϊ-@RZ�ukt�@R�WMtM@S��%U+@We���~@W���i�5@W��*�1�@X3��B�@Xr��>�@X�x�o����8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@A��a(�I@@��zG�@;�j�{��@7u�M�&�@5�P�@3��7C@6 /���@>
4q0�@D��7�]h@P���K�@V�H<l��@W��-��@W��ڟS@W��y@W��(ƲA@W���b�@W���3��@W�s��@V�ͨ�Y@V��.x�@V���yw@V��͂��@U����4P@UTN�D�@T���-g@R��>�L,@Pie�'7@M����@KD-��@J���C��@J��Ce5@HiQ1,�@LD�<���@Ql&��@O��r�-@E@B$Ǌ�@H*�ʄ��@O�q(��\@R�A2!+@R���Iw@S�J���8@Um�E�1@V�O��i�@V�����@V���@V\:T�5@R5h�o$@AX����@8d�즭@2@�῕E@)���bb@'`����@)��sv��@,��Fpt@-�n�\x@0��f�Μ@6��^G@4`���W@4 ��r�@6�1T���@C8�_�Q7@G�2t�Y�@L�����@O��ON�<@P=>�JX@O�n2*ɷ@Q�p[�D(@PҵbK�@Sw��Ā@Uml��4�@U>rgzk@U_��5h@T���^ �@TT�S�@S)����@Rʥ�`*N@SV��9f@Ucd?�@V�����@W��=��$@X�V�[�@Xb�y���@X�
-�b��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@A�uV�@?ܹ��à@:��A�@6��87@4g�.\:�@3&]�Eٵ@5D*�J@?��=6��@D,!���U@O�z�ʊ@Vt�±@W��t$S@W�i=û@W����`X@W�
��*�@W���0V�@W��1�@W@
�@��@V����@V���6@V�xi��@V�0�@V$ڑ�@U��?��x@T����{@RA8kW)�@O�8��(@K�.7�k@H���_3L@F&4�-@FkJ��@G<:Y �U@G���oYp@H�z���@<�����p@E��Ms@KJ��@PMC��|:@Re_p�,�@T����=@U�}��@�@Vߺ8X�;@W�FNWD@VJ J�b�@U�Smx��@T��z�Q�@P��r@@��f�d|@6K���@1�}g��@)Ht
� [@(��o@0����J@)��0��H@*�F~4{@/��l�,@43%���@5�L�Ӈ@7��L���@9�����@E([e��@@N��a�J�@M�4ƀ�@P#�NOa�@P@�l҆�@Q-�@P� �-�@Q��f�@S��F�@Us����@U'Ż�P�@Uw�\��	@Uq�4���@U
O�
�@Sqs�Q-@RlǬ��@S����	]@S��5��!@T�h�6m/@WI��&@X ��~�@Xb9YM[�@X��(���8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@A�ִMn@?�5�H@d@9�y�:V@5��]��@3�Ψ�/@2g�n��@4�͘Ȫ�@?g-�g[�@B<�u<@O:v�L�@V��b�o@W��_�@W�/-�b0@W�rU"��@W�93��/@W��a鹣@W�����@W`��O�@V�\$g��@W�槵K@V�@�	1@V/(U��@Vt���c@U�=��rM@T|;�Lh@Q���Z�%@M<�����@H�>�@B�֮"I&@A�`T�`@9�vgX-@@-+K5�~a@2���~�)@=�.��Xs@E��lG��@J[�^��@O-����i@Q�gu�V@S�K�%\@T�_��@T�Q����@U���*!�@U�Z�Ø4@U
�m��+@TL�$�F@R��ôb�@L�@�(?�@?�KAb�@4ݫΣ��@/J���C@&Jb�@)�Q�	��@5eϔ�@%���L��@%���KP�@0GJp�@4����@4w6�+��@8e	��@=p�P�9�@I��{H��@O�60y�@M�$�mh?@NZ[��@P�B�"�@P	UG���@Q�=�@S�O.5��@T7X2��@UHj�]@U?v���y@U�7��{@U�3��@T�m��l@SX)4�7�@RC�{�h�@R��w��@Sz�nc��@R��r�q�@V1ہ�@XF�ѯ@X`X���j@V��ju��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@B�b�@?�Ų;6�@9^P$$��@4�;|��@3dE��@1��m���@49t�?�0@>��9ғ@BE$�ЅG@PFQ�>�@V����@W�`+(�@W��s�y@W�v>U[S@W���oX @W�慸��@W��g�@Wi!�ݰ%@W5�f�X@V�䯕�@Vj�rN��@V/�(?�@U�>� ��@U�j�u@T>�x��@Q+�$g@K�7Y���@D��,�C@;j1W��@-�o�+@)�(���@@2/�[���@9�8�It@F �2�(@K"�y�N�@ODr���c@Qd�e���@S�Ĕ5@T����]�@T�!Ul@Ua8k�@U�贃�@Ua*���@T�UMk��@Sr�`-<p@R.']@K���L@@.E.c��@3��-Zc@+:P���7@#*.�۫@#����%�@1�	���g@&U	^�Ɲ@$@	u�^@+E���K@4'`�Z\@729<T[@=��ہI@Db��4�=@L�5�c�@P���:S@P�u�L'�@P��03��@P�r��@P|ݹ٥@S����@S�\*M�3@T2'���@U.��T�@U_&��b�@U�I���@UD�	@P[@T�{���@T!m@S��\�C�@R'��jS	@RW�5�0@R�伈s�@Tg8/:@W�\����@W����Z�@U����%���8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@B14c�@?�ݷ�h�@8�J.���@4T U�@2*����o@17_���@3����T@=q7}�M@A�No/@QU����@V�3�J�q@W�^��̀@W�>9~��@W�� š�@W��M@W�2[�t@W{�V��@WPft ��@Wк�@V�U�X`�@V\kچ$@U�f�� @U?a>�d@T��H#Ɖ@S�w1��@Q��b�/@J����@@�3g�;�@+Z���˄@*/Dg���@0�"�s�5@6��%�k�@A5c��@JAb,Rџ@NP�z��!@P�
�h@R�Ŧ�I|@TN���*@UR����@U��[�L�@U�K[��@U��<���@U-�<�,@T�I�g@S�[�V�@QW1V��@K϶�se@@�Y���@4��y�@*[^�J�@!�̆���@���KC@!��~�*�@!�g:œ @#�We'a@)�͂+);@39k���@?'8O�=@A޽� @GamK@@L���7�@Pr��}@Q�w"�X[@P�Qw��9@Pm�;��@Q��]qO�@S���mC�@St�츣�@S�d���5@Tԡb��@U�T�)@U�F&��@@U��}S!@U�IM[a@U2\���@U&��KT&@R�T0T�@Q��ﴥ@R6�ʥ�@Sz�5qh7@W�6!��@WM�̂��@T�F����8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@BL��R;@@~ȷ@8��wks@3��8/�!@1W�;���@0p�:c�|@3����}@=/��l�@A��U1�<@P�����@V���\d@W��%���@W��'s�@W��?��@W���|��@W��ݯ@W{ �{�@W3��1�@V��b��@V����u@VF��4t�@U���;�@U\��V�@TS,r9�@SO�}��@Q��5)�@K��@���@B���.g�@3Kw�dc�@2��EA�i@97�0e�@?�_YX��@Gs1F�/�@L֕�g�U@N�����@Qb+j�IM@R�U��@T'���81@T��a��@U�xˮ��@U�`��<@U�r�Z@UY���]@T�#��@S�v��@Q\���@J�z=	�-@@����[@3���e�@(�
1�s@ ��� �)@�е�5@>����@<@��e@!dC�	�`@%�%��@3]-��@;�?�H�y@A@����S@Gdgʤ\�@G��o-�@Pg�!��g@Q�=�C/@P:���@P�ŸK�@R�՛	a�@S��b*�@T+8RT�@T��у�@Uy���@U�E�@U����@UrmP��@U�\���;@T����@S�9+�2�@T��2��@RL"�e��@Q���3�t@R˚�4�@W�!��c�@Wظ���@S����v��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@BX�����@@.�m�q@8�I�OL@3��63@0�;�ڠ1@.���1� @3c���@>	���&M@BV��d�9@Q�IO��@V��DI?�@W�d5@W�񑰚@W����X�@W�3�䃅@W�<�DP@W����@D@W/���D0@V��O��@V�p��=	@VX��}K@U��p��m@U+���b@S�x"�c@Rm�ʱ4@PI浕�@N���@�@Fj�=��9@;M���d@:��㍚�@B����?�@G�U*�_@KZ��)@M��sYJK@O�-s��@Qi1�F9@S&y��^�@T4��I|@U����à@U��C��a@U�|M���@U��z�ܬ@U��9..�@U
�D�@S�`�`�@Q#\��@KUӰ��@@eP�qM�@2�h[@N�@(4�!��@@-�7��%@�p@�V@㙵��,@ٷ��O@ ׮��,7@$��؊�@+>1铵0@2�0w�@>�����@D~���co@IR/F�͌@O�ސ<@P�G��k�@P��y~�@Q~/Hѭ�@Q�
p"'@R`3Lz3/@T$R���1@Uo�n�@UdH���@V1���@UU��@U~����@U[#<O�@T����*2@S�T�;�@S>��0��@R�Mz$��@Q��C@RW5Wgk�@WK`Ƈ�&@XQX\ͪP@S��2%M��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@B]c���@@R��]��@90��j�@3���4^o@0`�7t�@-G��I��@3{˼��O@A��-��$@D�i[�^@Q��5	*@V��N�@W��u%@W�y��@W���Q�@W�Dϒ(�@W����1@W��ڵ@WD+<��<@W��<@V�%�Om@V�w2��'@U��S*�@T��J�-@S��e��T@Qc���1@Ou�9�]S@NL�K��@L�:��^�@B���@B����@E �n�L@H}�i̽U@KZ�_r�@L��e�6�@M�&�a��@Q����J5@SD�^�@T��yD�@U+,�L^o@U`꓍�l@T�5p=�@UH&yC3@U1U�	�C@T�߭�ڨ@S��� @Q��	�H�@I�kñ�u@?f	��`�@3I-�$�N@'>��]y�@��{V$�@ӿ*�f�@��g�5�@�c�u�a@���ג�@#���/G@+���@7�;��r�@@ ����@C�0 G2U@L/���d@O�`x@Q�c{|@P�Ao�@Q��� �q@R4�Q3mY@R�Ł\.�@S�H@V��@Th{N��+@U�C^��@Vea��C@V
����@U�F��>K@U�X!�no@U��Eu@S�Ŕ�ы@R̚;nC�@R�=�8J@Q�zEB+�@Rw*Һ�@W]�c}UL@Xq P1@U�j�W���8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@Bp�$��c@@����]�@9t�z�M@3Mi󍊥@.��k(S@+�����8@3L��	��@@�2��P@BQ�����@P��H*�a@V�u ��@W�ƌ2��@W�!Βc@W�����S@WĆ|,�|@W�!a`*|@W�Iy@��@W�M#j�@WbI��+@V��:�i	@Vr����y@U��w~��@T�Cd��@S1F�K�@Q�x���*@P?�X3��@Nɡ�8\�@P^Eg�'@L�R��@GT�Ȯ�@G�P�ek�@I�qy0�p@KΧ �\�@M=˃�#@Oy��X�@Q��e8�@R�D��,�@T�<�W@T�a0PN:@T�2����@T��h�@U˪��A@U�Ğ#$@T`�;g�@Sn���i/@P��n(UG@Gf���V�@<��B1E@4��j�K@'��R���@9�ܓ��@|Ф-M�@��F@�&/۽@���^C@&À�6�W@,.��վ�@5VUλ![@?�~�W@DYO�D�@NR�p��@O�ywCC@NA�%8@O�A.�y@R��s[�?@R�/�(�@R��_��@S�2{&@UX��@U�)]��@V/AmɅ�@V����@VA��݋@U�:=�@U=���@S��i�F�@Sc�X��@R��~�xI@R���@RL��d(@W�f�l�@X��y��C@WBu�$���8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@B��!E�@@��R��@9�Zķ�(@2��,w@-q'QS�k@*z���c@2ɕ��|]@=��%M�@@�����@N�.{��d@VAY�v��@Wp����@W���/w@W���[@W����8S@W�&CD�@W��c.z@W�$	a�k@W���7�'@WF)%��@Vί��_x@U�(o�]�@T�<x�~�@Sv�����@R�a;܇@Q�,t�@O���FM@O�O�P�@P����y�@N-�נ?�@J_�~��@K}��x�@M��¼@N�P����@O���@QT0���@S"���q�@T?�^x�@TN���@@T׾��w@TP�y@T 2�D�@Tt�!�@S�8����@Rz0����@M.�q��@D����@=f8�DO@7���]%@'{G�{@;��ڻ@?���@�$lT�E@����@o�o�'�@$?�F�a@*�����@7���@1D@?�mm$@FcY����@Mx�"	��@N���a�@N"����@Q
����@R�*��
@T��C�@TK4@�,@S�gl���@T��m��@U�'R��|@V]om� @V���u�@Vm{��/@V'�;�#�@Ua�u,ϣ@TQQ�T��@S& twB@RM*K�}@R*ʪc�@SbӶ5�~@X�L�&�@X��O��@Wڒ������8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@Bш�/�@@���2d-@9��{H@2�/��g@,F��a@)��!@2)� #f,@;�	Ƈk@@��(p�@L�3��7@U�ڃ��e@WW��VU�@W��C[�%@W��3Z� @W�\^��@W���G�@W�p��UT@W��Ey��@WW~�TN7@W��yԝ@V�H4,d�@U���|�e@T�2����@SO��v�@Rv�&��@P�0i^�@N���-�@N;��@�@Nu���n�@M�C�@N�&,@P�6H@P�P?j�X@P�U�%1@O�$úi@Q&ԣI�O@R�v���@T v�P�@T�KܙQ�@TG�����@S7�З��@S/G�a@R�H}š�@Q_�dY�@P�l(@G-g��@A�^�<��@?����ֻ@9M9-M�c@(��\I�@�0ˑ�@����@3}���@�r�G@�-|�@ ۹��B;@-���ܩ@5�$2��4@:��Ɍ� @F �M�{@K]$?g��@N���2��@N��<<'�@R$�y���@Su�6��[@S�ܡ���@U�{�]K�@T�#����@T���j}@U�.IL�g@U�m�rY@V`qA�cS@V��c���@V-v(qr�@U�x��ј@TX�o��@SE�	�@R.�xx7�@R@�6"�@U,��;��@X"D�v�@X`��֥�@W�L�t ��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@B�YK`@@��bS@9�����/@2oڌM@*��Z�@(>��$=�@1�e�@:���/�I@@_[� �h@G�B]U��@U��M�@WCs��T�@W��L��@W���{�@W�E`�@W�M
��@W��>^�@Wp�H��@W-��j��@V�n�I��@V3��{;@Ub��}(�@T;�=O@SF�5�ҟ@R~�Kl�/@Q>����@O])�l@M�m��l�@L�IjWI@L8�7���@K�l���@JQ�0f�@P���k@P� e�@Pڵ��@R�쩧@R�q�	w�@S�sO��@T'�po��@T+`AƓo@R�#,��@Q�5��/�@N�tU8��@K|�@cS�@F�@5�iM@Cф#\7@A�f��&4@B��#��@@��k*��@,����c@H��xga@3ӽ�9+@b�Wc @כ�,��@��@F��De@%!3l��S@3\LEa��@8)�2�u@D"��c@L��W�U`@N&�S�U@OH~�k�@R"�u=xQ@Sy-I?�@S�G����@T��T�t@T�����@U'_Dи�@U�/5��t@U�0-4g$@V��)_�@V�
7��X@U�^Ѫrt@UThT&'�@TKx�13@SR�Me
b@R��;���@RzO�e@V�U2��^@X:K�Dg@XE���r@V���w���8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@B�K6E�@A�Í@9���d��@2#�̷��@*��� @'LG`Kg�@0SȊɾ@9�氇2y@@�$���)@GC0���@Tg����@W)���4�@W�a�B��@W�KEǄ@Wt,_�@WcU6��}@Wb�M8�@Wm�,�]@W03\��x@V�=3�G�@U���
�@U@���ʌ@T:�vIg@S`����@R�bM��O@Q�=H��@O��&�(@N-yM"�5@L��Cԉ@L����{@J�j��@Jl��+u@J�߫�m@KV�~X@K�:��)�@Q���p@R���S�}@Ttv����@U6�?�
y@T��z��@SG~_K@Pl(j�M@K߭�u�\@G?�3g	@E��T�K@<XC���@8i��c@C	�_��@A�9����@,ڄ4�@;#:���@��q��@��7M��@��y�h@!&�|{M@2Q0��h�@?>���@@@^y/k�@685����@@���T�@M��?e@@OJ �~h@Pa���#P@Q�����@R��@S[{=���@T������@T��>a��@U4�{��@U� ��� @U��
��@V4��٦g@V*>&}��@U�/(&9@T���{�@T�F!�'�@S��N�G�@T\@Fݡ@R�,����@W9�E|@XTq���@X>8�B�@VA�%"xt��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@C�J��@@����9 @9j����@1�ĺ�8@@)<�zL�H@&u�c��@/��kN�@9��p��@@�]�{V @G���l4@Sÿ� ��@WlO��L@Ws6���@W~��&�@Wl���{@WP�uق�@WP
���@WSr ?~e@W��#u@V�۴Ӏ\@U���Ac�@T�t:n�\@S���<��@SO�}�[�@R�@�2]@Q�)	�U@P��];@N}��b��@Mw�5'�@Lm�!�@J�����@I�Ď@I��V�P@@JbM�١`@L/2��@MT=����@R։D�@TVSD� �@TՊ}q��@U%lGI�@T�U9�@Q����@M�법	T@MR�C^R@I�+�I�=@Css�~3@=aFD��@=�Ҹ@8����@1Ѡ�*�q@%a�S�@����@"�7�i�@CG�����@Kz�ቢ�@F'8乽�@:����Pw@2$	;@6#F��&9@<ٔ�
[�@DV�ɨ�@J?,H6w@Q����@Q�+��l�@R�
xj@SyF�{�@T!iP�"�@T�B��@U|�YD�@Uh����@U.+� (�@U�yl�T@V.�`u�@U��'��@U%0h��@T]���v'@S��E�4�@T�����@S� i��@W�LtV��@X<XI�>�@XC�q�@U�S�-?���8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@C.Â�@@!�T��@8�~X�!�@0�����@(9*�XU�@&ze���_@/�Yюc4@9��|���@@;	"M�o@E��3��@R��[<�q@V�+֟a@WpV��C@Wt�l��@Wb�m��@W-1�K�@WR�5�(@W�	4�T@V�����@V3�ɒJ9@U���ڕ7@T�X���@TN�y��@Ss�)�w@R�\�[�@Qr�g�C�@P,�9���@N�Lfb-@M��K��)@LԜ���l@K�Xt>�@J��5Z�@I�0�i�@I#T��k)@K/[���@M��:i��@Qwd"~@�@S��'�L�@Sq=a��@R����@PT��(a@N[KѴO@O��L�@R!y���@N�Y�[1@Bw��0�@;]��+G@8�ZBR�@6���G@4��e��@4�8���5@2[gm�q@F���s�m@L�p��@D��3M�@3�b?Ч@0K��d@2��.Xe@8��r�ס@<S���%K@A����@F�"m�:W@P񜸼V�@P�p��M@Q�?��ΰ@SP�9G�{@SV[>��@Tb�\;\i@U�L&�0�@U`��}�L@U0�@US*>��@U��q�h@U��?�H@U9z�}@T����-@S�X;9�$@T"�N���@U!!�� @W�mhpR@XG+���@XZjU��P@Vo/1����8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@C+Ui�5�@>�`*�d8@6��,��@/X����g@'3����@&8�6��H@/���_�5@8�hd�@@?����@B�6��d@P��i�A�@Vx_s��[@WW���<e@W~1�i�q@W^@(E��@W  ���@V�
ՙ�@Vʨ#��@VX�p�@VOx��@U����@U?�I�f@T8��w�@S��=�r\@Sd����@Q�B�3�P@PR�]p�@N�5��Ո@M��l���@M;>&'$�@L7}�a�U@I��s�@EfT��@F��Ȼ�@JP~h���@N׾����@QH$h�=y@R67�a�.@Qs�{KG%@PV�d-�@NX:�A+@M4|�Q��@M�ݳ�c�@K�I�m@L7O�+@@!��	�@2v�R��@-~�Dƕ@*����M�@-NUJݽ@1�X�D��@:�1}��W@F����@A>�IXc@0��<%�m@'P���+@1bͪd�#@7�z��v@;�)<�@?�A��\@@A$PB@J�2�&�@Q:�@"�@Qc��6P�@P���@Rh��@S�BP��@T�9�jw@U��,Q<@UG�̩@T�z�N�P@U�ހ\��@U�@ҟU@U����E@UUn�kI@T���Sߍ@SDP�93@R�B��7@U�8�=W�@W�7�V@XA�-��z@Xv:j��@W]hV�\���8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@C VQs@=uk��@5�A��Q@-��֠�S@&R�%�@&AY�+@0*����@8+���L�@?E��'�)@Bru�;�@M߸��@V0#�G
H@WS���	 @W��i\�@W|	1m��@WDU���@V��¿ge@V�L��)�@VU�#x@VDm�P�+@U�.b�ӝ@Uy��tC	@T$���@S��� 6@S� ׾�5@R  �@P���:�@N�_�I�9@Mǂ/	ć@M��+�H@L%iޥ�@GaV�>-@F����M@K�'M@K�)��@P�~��O�@Q� D_�<@S(Wa@Q��G�2�@OyZ}E@L�A���@J�[#K�8@HaM`q��@Hɟ__�@H883�@A ��i�@3��p�@'��[�+@!wEd�@7��J�ظ@E����S@2���"�@*�_JS�@!�F�{�T@"�Y�|-@(4z��@2���igM@=��`1h�@?*�kWlG@B�|l���@H�x��c@O�'��L	@Q�1K/qz@P84��?@Q�s}�@R+q�	�f@T���V�@U�1t-@U��ǋ�@U��CM�@T�/�
�@U>Ou\|@U۲#�c@U�\l��@U"X&g@Tu�h	�@S/�Y�Xb@R}��I��@S�__�b@V����3@Xi#�)�)@X�E���L@W��\����8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@B�0�`:@<AG�Ep�@4���G��@,}�׍��@%��c �3@&VA��f@1M=�.�P@8<���HM@? �?HD�@C�T4�<@J��^���@U�0���@WM��'�@W���E��@W��i�d@WgbZ�@W����@V{O����@Vϱ��@V?�����@U�f.�h@UaAO��@S޸n#]L@S�e�I)@S�� �5@RH{u�|0@Pߙ�A{�@Oh��?��@NK�RV��@Mb�P�;d@L4x�=��@H�f���@KdT�3@L�l� �@OƆ�ջ@RrW]%��@S	?M[�@S����1@RX�h�6E@O���p�@N(r;�E@L�%%9U@J��7�@Hq��@G�hȬK@F����<�@@�_��m@/�6]�-[@!���2�@/��e��@E
�#cq�@-Rb��@���kB�@j.6�e@&/�X�h@,�q�cs@4�/��@=z)�o�@FE::a[s@IA���P�@M���'@P ��ya5@Q�b�@Q o��@QJ&c`S>@Q��H� @U4��@Ut�W��@U �2"|@T\�C��@TW�š�u@U6�;!�@U`9b=�@U�&�P@T����p@T�%S@R���j@RK
�O`G@S��)��@V��C5�@XX�O�*@X��M<@X6�d-�9��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@B�u�Yʥ@;������@3�b�[��@+N�)�R}@$��"Pu@&����M=@3"��K��@9���::�@? ЇЫ�@D�d�e��@I���O5�@U�Rh�7@WZ���T�@W��s��@W�*+�	S@Wj��x�?@W5���@V�.�'�@V�{��@VRA!݈a@U�����[@T�>��_@S���~@S�$���S@S�@1@RN(��"�@P�����@O��پ��@N�8]���@M�.+rk(@LeL���@L5�fTW�@N�F��3@P���C{@Q�(Eg�@R�y� DD@S���$@R���
\@Qd\�É@P�q�@O�A�/g@O�֏�@K�#���@I������@H�'[�cE@I�l3�@FuK湴�@:���X�@%ls��p@ ^��Ν�@B:4��0?@44Z=Z o@+�7Q@�Kt��@%�o9x�@/�3�28�@7S�:���@C)�<hC@J�FO��{@Hߡvl�[@O9���;�@Nң�R�@P N���@Q^�,�@RT���@S ���{@T���=@UX%$�4�@T�Z�;$�@S�Y����@SU�t4�|@TB�&�Y@T�´��@T�C��X�@T��\A{@S�ଽ_�@RO�����@Rc��79�@Swr��t�@VU�wPP�@X��Ds@X��m��@XE@0>}b��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@B���2@;���[�@3u)I*@*���a@$����Ƌ@)S��WX�@5C}�)�!@<Xp��@?���h�I@C#��+�@H)�X��@T��� @WJ�����@W���\k@W��j�4G@Wp�(�=�@WR�Tpf�@Wų��h@W𑞨�@VQ�_�Ա@UvG3�T!@T�[C���@TRo<А@S�0ɜ�I@S�b'Zy�@R^zٷ?�@Q�v�c�@P8�s�~@N��#Js@NZ�A�"�@Mb�n]��@L@�D���@L�"�@M��N��@N���� @P�K�Ek@R]��7	+@R&�!~��@Qc�����@P��&�p@P��@�@Ps��C@NK��C@K���\�@I;�;�@@Ir̬� @Kf���@H��u�@@�F!p��@4P��Ҧ#@@!�~�@?��'���@��`��]@3(@�e�@"�O���d@.��3T�@8����@C�d�5�@Ga�@J� .��@M4p�Q0k@K���s܈@O�����o@R�G�כ[@R�w�w7@U 7��K@T]Vl*��@SY2���@T�)���@S�Η�@R�6dS�@T:#����@T>#V��u@Tzw����@T�5�_`@S��5�Y@R#P���@Q���*�@R�o��!�@U��0lY@W&?�R�P@Xr���@X(1����8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@BJ7�\w@:����@�@2�]j��@)r��j,�@$�C���@,���{�@6�7�[�@@��Bd@A�i��@B밶�o@F^A���D@R��,�p@W,%Q��l@W���>�@W�##W�@Wm����@WT�}Z�@WR�q-@V�\�h@V)|c���@U��P��@T�)4��@T�U�J��@Tb&���@T�7�Y@R����?@Q#�:]U@Pl�kq��@O�q_��@N�h���@M��Y]@M���=�@M����~�@M�G�8^u@N:5���@O:�$t-@P-E�Fo@PgRf��@P�,ϰK�@P�7s�@P��T2�@Q
o�KԼ@Pk���@M��4�@I����ZS@J>���:�@K�P_�m�@K�s��@I^�p!X�@F�x
@�8@C�.'[B�@CP}��@0�,�4��@`=Q�M,@6�g.#E@(���w��@9��][�@D�懤(�@F����}	@HR�Z@D�fE��\@G �+}h{@N�MM���@P���z%	@R��'��@S � ]F@TH��0�@Rh�e;�@S�[	�U�@S3���@S-3|	z�@S�d�O��@TN����@T�S�R?@TN��\�@Si�;�D@R|O_?F@Q��[<T@R�I�s�@T��=m�@TS>�~z@V�l�:��@Wߝ��B��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@B��@:{̭m��@2OX�#^�@(w�n@%R�kW-'@/&�,�@7�xOw��@Arׂ���@Cy��F�@C�x�.�\@HjXܟ@P�k|h�M@V�gȱ�@W|�ȁص@Wx�Ǩ�T@WJ����@WO�m�@W
]�S@V���k@V8�%��@U��l@��@TɄ���'@T�G�	�@T�9V�@T$$�=f�@RwUo@Q>�1	@P`>,)(�@O�9��@N�p2��h@N%T"��@M�xwC@MN:Z`�@LB�g�J|@MϾ��@M����s@N����Rk@O��%��@PIK��m@P��\I�/@P��QD�@P�[�ٖ4@Py	�3�@N�� 旃@JM��;��@Jp�z�b�@L�	r�!�@K�/�W��@J9I�޽@Hib�Ƕ@DL��}��@Du>s?�<@<.���p@�Mi��3@�b�Ү�@"���@8��讛@B�8B/))@B��u9��@A{d��@A��Б)�@D�F�+@L�����T@OҜg�@Q¶)���@R)�e��@S��ŹKp@S�:��<�@S.����g@R���n�@S4�Q�Y@S��0ϒ@S��\��@T7�F!@T�u�r�@SO1�r8�@R�D\E@Q�_�5�@R�D���@S�͈�,�@S�S���@Tbahv63@Vp�80����8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@A����~|@:���@1�a���7@'���a<@&~+h�}@1A�j!@8,b9;�@B
���6@ED�����@D���y@GU�:�@QAdl�'q@V�]�o�@Wu!M��@Wu�b3�@W@v�%�@W:�v�D]@W"y��D@V�sjT�o@VH�j��@V�H4�q@U�j!��@UK&�.
�@T��MM@S���W�}@R��2� �@QvJ3W6�@Po0~�yX@O�z��S�@N�����@NTV�c� @M��X��@L�..�Ϋ@KϚ�Fz�@K��df�|@L�1щX�@M�5Xs%@N�,����@P!�rQ@Q	����@Q��`�@P�R�[��@O�m��X@Nkq�_�8@J;��f5@J�Ԓ��@Mf�{y�@M��fU@K�'�b-�@It��@G������@E� s���@A�iF�@q@0��[2`@�G�9��@!����<@0�p���'@@���#��@?�n�3u�@B�s�]/@B/;(�h�@FWFt�@K�J����@Q�Ɂ,_@S�D� @T�V��@S[(#�/@Rò�u�@R9�C��@RVî�(�@S�l�2�@Tb�&�K�@T?l��6 @T�� �L�@T-ش&-�@S?@�b�@R�V��s@Qϣ9�:q@S'� >�@R쪆t��@R�$��@R�4u�5@U�(��R��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@AiQ�v$@9��p���@1�b�or�@'Fm�>��@&Z5�\@2��2m@8���k@A���T	@E��`*o�@Eaj�4@G$�>��@R����/�@V����@Wv�{ �@Wr]Y m�@WO��ϼ�@W#��-�@V�V���@V�vKPT@V9�$_�+@VJ��ft@V��K�@U�w���@U_�\��@S��c�k@R�9��`@Q��n�_3@P��}g5@O� �ـ@O7+	�NG@N#�g��\@M���k%@L���c�@Kh���@L>�h���@K�6(�;@M��I��@NZ[~�}@P��e�r@P���,�@QF>J7@P�A@�<�@PƍH �@Nm4���@J�Z\&�G@J�,��@M�r���@NhA �=@M8J��@U@J�Ⴘ�c@HU:>ޘ@G :'ݛ@D��"�?@@Yx^'��@0�/x��@ ��)�K@9�N�Z�;@:���YY8@=��Y%��@>��2��@?� �(�`@G^s3�?�@M%#�p@R�~f�@Re�[��@SH��`�@T�]O�@Rr0���@Q�o�[&�@R��"�@R�wQ#�@T�uD@��@T��{�80@T���~<@Sǻ���
@SH*�7 @RV�t|@R ���@S!�yg|@Ri�k�X�@Q�Veid7@R�y[元@U$�!����8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@A%��@9G���2@1x�3�T@'�Z�5@@&�^ �H�@2���	@@:Iã�D�@A�n�IM@D��X7߭@Ei����)@Hj�O��@S�5��L@V�\u|{@W����@W�kf	�@W\j�gz@W!L¥�@VڻW9�@V��r4�M@VA"���@U��M�ˏ@V"fG��?@V�u��@US�'���@S��9 ��@R�Ds��@Q}Z��(h@P���@O���H�@NڸW'L@M�pk�@MI�	��e@K�~�0.�@K).�"�@KL����@K�N��z@L�c��(�@M�F�o@P!���@P��;�\Z@QNU��4@QR .�@O����@NoB���@Kv8�<�G@K��I�4@N��j��@O�u��@Nw���m�@K��v@@H�y�d@G�ґ��@FXDE��@C.w	}#@?��B
�@8�p���p@?>�r慸@6$@���P@;��B�@=a��c'@B����+@J�V�	��@P
WY��@Q��*�p�@R�����@Sb�K��'@T���+ �@R�S��]�@Q�x4�@Qw����@Q+����@R1*���@T����';@T�[��t@S*� �k@R��+��@Q�5sp@R	���z@R��Q�b�@R%��
K@QS
u�@Q�|���@Tj������8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@@���/5@8���7��@1i�Z+��@&�>�#m@&`w5LiK@3a>�ɭ}@:�.X|��@@@&SJЭ@C��W@EC�_�@I�e5�@Tq�k�s@W��:��@W��X0W@W��I4L@WR�\s�@@W��9�@V��q���@Vuc�;@V,ݶ(�Q@U����E5@U��\��;@VFP�c@U�v�5@S�o��Q@R�����@Q��P9@P���Ӟ�@O���- @NjK"a@M���(@L��;]�@@K8�[�@J��X�/@K�����@K���Ø@MY�FWK@N�6�J �@P7%w�3@P�{�J�@Q�W�1��@Q.z�t$z@P.'N���@N2�n�@K�w���@K���0�@N?G�B�@Oa?�� �@Ni�GR��@K�N#��@Im+o߬@G���Γ@F�
��H@C�*_�ע@@t�gf��@>D?�ϝ�@@�fx?@4{��p�@8S����9@@R s5��@FW�����@K�0<).�@Rm��@Q����@R�@��@R����!�@S3f^�@R��Wj�@P��]�??@P�(I�@Pʈá��@Q�vg'_9@Se�# Z�@T6�α@Rdvv��@Q5L+c.@P񑶮 $@Q����@S;Lж�@RSr�h@Pŕ�=[@P���Η@Sb������8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@@�܃Q�@8��%_=@1O�k3�I@&߯u��@&CN�`��@3��º�c@;(K;�(@<���Y@A$�\��@D�WDd��@J9�B=�@Uּ�E@WF���	@W��T�@W���~Й@WXdJ�:�@W��\[h@V����p@V�z�\��@U��/aȍ@U/~'vt�@U]�=� t@U�R�(�@T�w`@S}F� C@Rk�G�o@Qm��<,@P�񘛄�@O�VZ�@N�4�N2{@M�V�@@L��{{{@K
WO�@J�zBKn@J�sG�@L0g[�8@Mv��x�{@O:�,�q@P{PH�]�@QmΒ=$A@Q�OU�[@Q`�sZ�@Poe���@NP{⡹@L6�N��=@K� I���@NU�D�h5@O��L�8�@M�vh+YE@KԎ���@IJ����Q@Gy�SF�;@E��(D�@Br*P"��@>X��ߗ@<HH��E@@>A7�4@3��v�A @7����[@?{LM�c@F��A��@N������@Q�����W@R����]@RoqxF-@RK�P��@R�C�b|�@R;P�Ex,@P�, @Pm9gc7^@P���w[p@QZ_i�'�@S"��n�@S�����@Q�Ж�Ϳ@P�Z�0@Pr��2$@Q��Ŧ�@Sd��E�@Q}Wxɕ@P6���@O���Tc@R������8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@@Hh�P�@8D�wM�@1,�����@'���@%��c�?D@4G���H�@;@�g��@<��Y���@?K=���C@D�-d�@L�%O���@U�P?��<@We&���@W�r9�@W��^�b�@Ws����@V�
�<hh@Vź��@Vy��V�@Uъ���@U6j{���@T�<�M�@U)��\@Tg�0��@S6}a���@RJ���6�@Q����A@P�P2#��@P"���@N��]�Q�@Mi+�KY�@L��i�@K�q�h@JK�C�?�@JmԐ�{@L�?wX\@M���h��@OZ�7��@P�
�+)L@Q�t�©p@R�؇�@Q��s��@P��fL>�@N�?̌X�@L��9�t@L��jq+@M���\@N>��
$@M\��K�[@KD���@Iu��׵�@F۸�>�@C��J{��@@7n���@:ؗ&"b�@:4�
��@=5��M@3$��7@:�:���@A�B��@HL�*=��@O���@Q�u覾�@R����@@S4�̯��@S#;���@Se��v�@R+���~�@P���K@PN?g�N�@P��\��@Q$~���@R���o;y@SUnK�̍@Q+�f��@Q,&vO�o@P�}��ar@Q�SZr&�@R;@�.�~@Q��v�@P;�˒�@N�\ ���@Q��R����8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@@��E�@8�4p+@15���@'<���P@%�����t@4�m��@;l���@>N�)2nL@CN�U�z�@F>z�[��@O��1X�@V%�,�\@Wt�D�=@W�yhc&@W�H���@WQ͝"�@V�U�6��@V�B'@Vq�L���@V/OU��@U�vW�us@T��8x�u@U$W/Q�`@Tp�0�9@S)"$�ϫ@R_��@Q�X'�@P�"� �@O��@N���{��@MW���I�@L�[��@Jα�8��@I�C���@J����@K�t�긳@MLZ��ܧ@OCD���$@P�C�@��@Q���B @RV�K ��@Q��m�y}@P��\wP@O[ص��@M�I����@M
��u@MW�0��@L�Zx�0@L�R9'L@KoM=�@Ip��Ƞ0@Fܺ!Q�-@Bw+?d�@=���w��@8wK%$�@2Є>�8�@7[6�C�O@=H��rRg@E��} @B]]ƕZ\@FU��D+I@M2�KS�@RQ�=�E@R���2��@S	�H1��@SM�Q�9�@R��Q��`@Q��Be�	@O��C@PKjp�1�@QV�#��@Qzok}�Z@R��ܳ�/@SO���}�@Q%m^��@Q_�����@PY���0@Q}����z@Q�}PM��@RvXk$�@Q6�!���@N{���@PP��t&��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@?����^|@7��3�� @0��耄�@'VQ�;@%�z���@4z1�&Z�@:�� �$@<��!�ѐ@B�@�(@J.M��l#@Q� ڸҳ@VN��@W�k�Z;@W���6�@W�=�	@WA�G���@Wn9���@V�jR1^�@VQ��}�|@UQ)�؁)@T,*�:�@U �Ư�@Up�\�W`@TxÁ�"=@STN��x?@R~�k�;�@Q�mY-�@P�� ���@O��SXE@Ng���@@M(�QN�@K��~pE�@J8��=(@J�̧�\@I�X���=@L	�b��@M�ET.{Y@O�0_�Z�@P�?d��=@Q���@Rpi����@Q���9�@Q��犖@P
�isJ@N'w�nH}@M4��W%@LيQ�h@LM�Ymy@K�~��@K]���@J'�pe?�@GcO]5@B�N-�1�@=��6�@0�Y�>��@$ٚ����@0��k�_�@1��{�c@@H��7Ec@B��4��@E������@K-4���@Qٍ<��x@R3� -��@S9�}S�@Q=Rvʪ�@R�L�b��@Q���7�@N�@�xmq@PX���ѿ@Q@Y+��@Qj��@��@RАud��@SJ+���@Q�O�e 5@Q�Ͳ�@Qd.ޞ@Q�c+B%�@R�2��<7@R�I}��@R���&m(@O<�2�@M8G��ǟ��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@?���rռ@7cZ'H�0@0mfMBE@'@����@%�ؽ�%@4)W��/@:ƒ��-@=Pu����@@���i�@JӜ*8�@R�.��K�@V~�)��?@W�N"R��@W�J����@W~��d��@W=�"��@W
~ǘ��@V�:W��@V6�~���@U5Qk�@S���{@USS*oYu@U�[��@T{~��oS@SV�����@Ruh*a�@Q����^@P�Z3n�@O���y2�@NBdY$c@Lq5�wK@K
Kf�@I��BO�@I���S�@J��g�+@K\��''@M�Q�)@P0Rk�@Q۝�� @Q�Z����@RS�5>�7@Q/���h^@Q1/6ە[@P���-@Nt2C�h�@M�a�u�@L�ˡ�D@LK� �@L9j��@L����@I�x&-`�@E�N �><@A��mt@4 !�+0@,�Ź��@2����@.,!w�{@0���D9@;M���{@J	x��]@JQ�K@�@IՏ��C�@R  ���C@R��1��@S�x�i�@R��Q��@R��-u�M@P�0d_ޘ@MÇ<I��@P> vR@Qc7~2��@P�]c�@R�{�y�@R�M��@Q¯�;G@R&�ۺ@@Q��#�@R$���@R�ZH�K@RW�
�7@R\��5�@P �.o��@K��z��P��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@?X<�*##@7>Y��X@0n�}���@'I=��@%�rR��@3K�@dк@9C-��-@=M���G�@@跒eP�@I�~�@T�[��@VƮ�c@W�e�@W���f�@Wu���U@W6����w@V�� ���@V�{���@V�����@U$
M�@T�=@ՠ�@V)1j�4@U��/��@Tm)Օ[@Sl7N,�@R��TC��@Q˩]a�O@P��V��x@O�G<$�9@M�,ȟ�@K��+���@J�(
e @I��#VGw@I̖��#�@I��<Y�@K���F��@M|�H�.(@PP��׮�@Q>	�~�3@Q�qb׭3@R7<�͞�@Qܚ��k,@Q=N��H@P6�"�`&@O>*�"(@O9�)da@N*����@M��aD�E@Mh;o0�@Mf9��~�@G�C<���@:i&-`@/y-��f+@)�7���@'�|���@*�B�[�@,�KpC@2{tz��C@;
�Q$@JT���@L>zrM(@M��b���@SPw�g@S���f�@R>i��@Q$�X��C@Q�[�=��@QdQD�6@M*�ǽ�\@P#���@QB1�m��@P�En�f�@R�����@S)v{�5I@Q�$�U@Rb���@Q�"���@R��Ei@�@RY�D�'�@Rs�9�i@R�l���@O���㷭@J u2��3��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@?MYE>�@7$��r�O@0���@'>>5d$u@%<�ߜ�=@28����@8�3�@;���bm@@�hY�@Hi8Ӂ��@TagTTT@V�#HV̈@W������@W��Pu�@W�ȃ��O@W8�v�(@V֛L��E@V�"`��@U��2з@Um}fC�@Uڌ��@@Vy��y@U�BE0��@T`+�^	�@S��qNPm@R�R�}@Qޭ�lt�@P��@Og�,J0�@MB8��3@LW��PH@J���@Ib� ��#@I�q�q
�@Iț��@K�SMK�@M�a�44$@O�ƴ�L@P����m}@Q�tv���@R<��]@Q�e�i�@QY"�͈\@P�]&_zm@P�1�4;@P�R�-<@P+�S�&<@OV���(0@J��
]@D�����@>�U�a.0@5��4�@0^JO;-@+���M�M@+�-m@.�[6���@1�gJ�(@;:m\?
@Ch�-��@K#6�V+�@K&pOg@Qխ:$�@TP����*@RE)P�@Rj6�1�@Q`+��-@RL�i���@QEy���&@L�e���@P�e�A��@Qqt��m�@Q���s@R�E�M�|@Rᾁ��l@Q�Ǆ�'�@RE�L���@Rc�
��@S1�"���@S���@R�Y��V�@Q�0�t�@O�,�]��@J�q�����8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@?0n+�@6�
q�S@/��k0�m@' ��=4�@%�����@1��q��@6�ܴ��S@<7q�<S�@@�-STG@ELh=���@SG�ql@V��#�@W�r[W�@W�n;�@W����@WPR�y=@V�"A?�@V���9� @U�4��?�@VS��f�@V)"����@V�`���@UX��?D�@T�q����@SѐQ��G@R��
�@Q�PO�9@@P�0o�� @Oyլ8�@M~Q2W�h@LCZ�f.Y@J� ���]@J��t�y@I�@չ`@J"��MZ@K��I��g@M��$�+@O�¼rû@P�]SG��@Q"�R��@Q�	�m�@R���t@Qg�Te˘@P��Y9�@P�.�P�@Pp5�PA�@PҜ/ʑq@P���h� @L��@��@J���`]%@D+��3\@;��`@4�v~��@0����@/
J��U�@2�垶�@6E�ˁ�k@A(U�]2F@K�qg���@G��c�l@O�����@Shf��m@R�����@Q#���M@Rۧ ɯ@Q�aGx�L@P��:��@P���C��@N薿M@Q;ʾ�qh@Q[��8`�@QU�_G@S���w@R���@R>nL�s@Q�>�Sy@R�47�i@S���\�@R����$h@R���<@Q��I�@P3Q1��@I�|?�[���8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@>���v�@6���`�@/��E�a@&�F�@%o"�L�@0pIYkf�@5˺O�23@<V�v�a@A���J@C��#�]�@N�Gٯ@Vo�Z��@W�7�7u@W�e�b�@W�h�H@Wj�~ײ}@V�L�
�@VJ��å@U�O.�@V�bPu)�@VNV�>�@U�޺���@UG�3�;�@T���.�@S�v}@R�󶖍�@R �zde@P�UA�<�@O���0�@M�@��>�@Lq��S�@K�,��4@JNC6�c@J"���@J��V�
d@LF��&,@M�Q�5`�@OVC��w@P��w2+@P��a]��@Q��ۇ��@Rn����@Q�J��#@Q�-�)@P�n�ha@Qu5��@Q`��@M��L�'@O[�?RO�@Lf3��3@L�G�ϯ@H��#��X@D���h�@9�R���@4Ij_���@3܉	_M@9gf�<@HI�z� @L����]	@F���
��@J���8@O��(��[@PH��N�|@P-~��w@Q�Y@�4�@Rg}D�@P���y�@O)�4'Y@O�8g�@P�Y��ޔ@QI5�y�@Q�.�D��@SNaA�RP@S�����@R8�߻@R1(�z2@R:���&@R�A	C�@SC����@S��|@Q�_��@PB��E@J�02����8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@?^�b�@6��1@/�9�7�@&�E�(�<@$$�By@.U���@4�C���&@;^�##��@AӃ��g@DC@��=@K�J���@U��{܁@W��ߞ��@W�Iח\�@W��|@Wo�(U�M@W^�_ �x@Vz&�@V!K�h@@V�>�6��@V6�q�+\@U�'��@U��V��@U ���k@T!�2x4\@S!�;6��@R|��u@P�eLuj�@P m�� �@M�	�j�@L�R�Y%�@K��	��@J>5ϋ��@J"���@KM�c@X@L����A]@Mʍ����@O��.��@PW���@P�.q��@Q��@�3@RE�-c�@Q�w���@QS{����@Q#�>z�@Qf��j�E@Ri���@Q#4F��@QiNW�D	@O���&_=@LU�kC=@JK�]��@I�i�>�@8%&�W�-@2����@5�P��@;�q��#�@NB����@G}$�@H�����@E!m<N	@LcG_��@P�`��2@Nc��
_�@P����f�@S��e�E@P��q��@O�ђ}�@Oq�*u��@P����(@Qb��\W@R���\)<@T�ݮ�#\@S��4�?@R=�'@p+@R��8�@Q��Y���@R�̄n�@S>�)��@R˪zM�@Q�[�3@PK$6�5K@L������8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@?Ѱ�0@6���i
I@/{N���@&��[�c@"��&��@+�,�| @2�,�=��@:?���:�@Bנ��@D�^�2˵@Hm�Wo��@T����I�@Wt�ן��@W�`vZ�@W���Q�@W���<��@W��KxmL@V�x��@W8Y|�jD@W ��#�9@V����@VED�ۉ1@U�3p��@U"'L���@T7����@S$���@R"��1@P����@O�#7��K@M�h�}y�@L��P�$�@K�z�,��@J|Y|c@J��_�l�@Kt,-�@L�z"��@M�\�Qh@Oy8����@P"�h	|�@P�����@Q��n�0<@R97�b@R��װ�@Q�G���@Q~���2e@Q���|>�@R\�su�@RC���j�@Qu�Z��f@P8� j@L��ˡ*M@IqQ*�x@Io=�4&|@D�n�R|@6л�0y@7{J��%@?i�z��@P����0u@G�_��	@C8�]��@C<�3s��@J�.y��[@N�D��@N��b��H@PT�`?�u@Rr)FI@Qtr.��k@P�i>[i@O�d�̠3@O_CO<F�@Q���"H�@Sa����@T?����@S�nn�eG@RM�q��@Q���@QW]0�N�@Q�Q�S�@R����K@R�?Te�@Rг�u�@P�>���@K
�����8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@?V��(�@6e5�>�@/�5QM3@&���Ep#@!�?�@(?=�[q�@13��?@8���: M@AZL`@E+&��@GO�S���@S�8iJ��@WM��:h@W�u�@@W��<��@W՘w^U@W�əpC�@W^��ݚ@Wn�S��@W��Ѿ�@V��xP�`@Vuk[6�#@U��T#��@U=�[�@TH���@S8���I@R.@�ȯ
@Q##5m�^@P��.�~@M�iw��@MBh��@L2�=x�@J��>s1@K��fw�@K�!d?�@L��)=4�@M����ͽ@O`U���[@Pp�;��@P�o7	�@Q������@R\~ьϬ@R}:;=�%@Q�s�=h@Q�<�CD@R3iߘ�@R���@RUm:s(�@Q�d���@PtqĄ��@L���=/�@H���6�@G�AV�-@I���%�@D�P2@<����@A�f���1@Ov���`@B� �9�@>ͼׯ�@CC��� @L4�@7��@Pmͫh�@P�[J�@Oִ+u��@Ri�2L�z@R4��S[@R#�zi@O�<虔�@P��>@Q���^��@SZ�Ȋ�J@Tb-φ�_@TuVTP@R�4J�L@Qu�¾��@QQҫ�.�@P��`9�@R;"��3@R�P}O)A@R&5vH}r@QO���@K�P��1��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@>���͈@6c��#Z%@0	��P"@',B�{�,@!��[���@%�B��@.�F{���@6���}5@@�5刦�@D��Y"۝@F�����@R�\���@WAf�{(@W��Y�@W����}�@W��5�@Wt3*�S@WE��9�@W63�	��@V�əxl@V����Hk@V;�_�@U���V�@U!�F=��@Tf���m�@Sx���:�@R{a'���@Q^�
�@PD�WY@N�UD�	@MG��@L��,K�)@K������@K�����@LOG�M{@L�y'�@M�q"*�@O3��[@PxFϠ@P��&w!�@Q��<��Y@R�˕�z'@R�0e�@RzEEp@RU%�]��@R�Uf](�@R�Xexi	@Rh\�t]@Q���@P߯�0%/@M@��[��@H�ٽ�f�@E�:�P�@Gb��%@I2�'�f(@BQW>�%t@F��p�=@K�~��}�@A��N�{@<�����@Ei�ǎ#@L�=U3g@PSM�/@Q�N��@P�"�B�@P�Tl
�@Q�4~^O�@M
�J�g@L��`
�@P.�Ƌ!W@P����@R�1�v�@T�$����@T���Q�@R�DV�@Q@��q@Q�=��@Q��`t&@R��1}�@R��B�&�@RxLg��s@QƳ��a@LkY�!��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@>�3�/@6y~�T7�@0��;�@'[BI�)@".��0�@#�i4h��@+ȽgLw@5m"[ >�@?�Y�\&�@D0��0�W@E��?�v�@Rq,d�3@WCl���-@Wǁ1�/�@W�/��@W�ckw�u@W'�N2L@W$�Ϸ�@W>d�+@V係��@V��y1��@V�E���@U���Kō@U2Dg�B~@Tl����@S�����@R���\^W@Q��w�+�@Pb�t.��@N��\�;@M�<f=I@L����>�@L��A��S@LZ��{U@L�Ĥ5��@L��}l@M8;��E@O	��"<�@PH]j��9@Q�ߛ~@R	(##@R�ӱ��S@S�H3��@S 	6��@R��l���@S-��xn�@S]�J^�@R�^��<�@Q�Q�B� @P���g�@@Ll�ݠe@G�84��@D��U�u@D�Y� _�@Epb��C@A�R.���@F�&�]�0@F묠v�%@A��G�M@@��j���@DFR�i_E@N��`��@Q!s��@NK�H��l@Q�h=��@O����D@O�Q���C@L&Z�M@P�ͪ�@P����^f@Q���L@T��Xt@TP�:4y@UT�ר�)@R�CC��@Q��v��@Qu
@Q����@R��8&#�@Q������@R�E�-@RY��@K�ĉ��M��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@>��� E@6��U)-@0A�0�@'��L�[@"�WR�@#�,�3E@(�%Y��8@4'-�N�@>��u�:`@D)�*MGT@EW�bs��@R;�u-�@W;�.e��@Wϗ�`�@W�赂�?@Wk&��'C@V�� �D@V����@V�HG�d@V���L@V4��4�@U���m@U^E���@U6���K@T�7�Λ@S��l1�@R�U�4v@Q㖻e%P@P���S'�@P���2%@O%�E�E@NM�!n�@M��f׭�@MaR��ڄ@ME����@L����@M��+G�e@N�M�6��@Po;���m@QObz��@RXl,�ӽ@S5�_�D@S�`K�5E@Se��N�@SO�6��@Sq?n�}@S�C�&�@R�:@Q��;�h@O�_Yb�o@H����@EI>$��@A�!��j�@@�5M�	@=џ���U@:��f�@B���/}@E%��4�@D�i�p-@D�K�XX�@H�4"�}@Lq�	� �@N_u���@M7�zz�@N)�k���@M56#I�@O�&`�W@Pn�x$q�@Q�>�E�@Q�*�i^�@Qʐ+x'�@SG�_F^�@Tx�����@T�c��1@R.�J��@Qs�����@Q���5`@Q�%��V@R p�{V@P�mtTl�@R�wL �T@Rpp<\�@L6`�����8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@?�Mx@6�o�DI@0���@(5,�:qQ@#>|'�_@"gh���e@'���@3Xe`Q��@>l��J�@D�?K�Z�@EVEx���@R��Po�@V�4��}@W�b&n�Q@W��-��=@WFR7��@V�]���@V�q�yi@V�g�rh�@Vg�DHx@U����@U�ֵ�ם@Uq�n�!S@UT �@T�8�91@S�8�Ы�@Sޝ�¤@R�jv��@Q�����@P���q�@P\��P�(@O�'(L�@O,V��c�@N�7j�`@N�;�@M�����@M�2�@N���4@�@P�I<W^�@Q���1@R�d#{�@S��u��%@T	�BE>�@S�sӍ�'@T�ˊL�@T<�^���@S���./@R�����@R-�w�C�@PD�y�c@J�����@B��V��@8LJgP�@4�'N�@/�{�g-@4�?'R@<c7� @C��8���@L�X7�u@P�[��@O��ʻ��@M����@K�\�-&�@J4Rqe�@ND��Sd@N��>���@M��^H�@O���;@P�+�&|@P�^���@Q����%@R�tʇ�@T��8$ƹ@T����@Rk�#�@Q9=��@Qò�"V�@QJ��_ @Q�Y<�'@P�1�k�@R+��-�@R{��T��@N6��0V��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@?6?���@7P�+ @0�C:6��@(�MܹuH@#�C�H�?@"�a�-L@(L\����@2��˚�@=���+@E�U��NI@Es*��z5@Pʑ!�+@V�a��+�@W��4BÛ@W�KfG�U@W/��Ӑ@V���n@�@V�|@�o@V'��I��@U��15��@U��nEE@UU�4��M@U�B���@U^�-��@T��xA7�@S���/��@S8���W@RP��*��@Qe�\i�+@Q#s@N�@P�V�Xv�@PC��Ex�@P���0@O���@�@O.����@NVS8�p@N�A�?�@OB�{�ni@P��s��@Q��� ��@S	QQ�9.@T-���@T{�M���@T����@T��7��s@T���p�@SH¼~�@@S�����@QLiK��8@MZ9���`@H$��6Y@?�)~��@9K�R���@2n�7��@0��xj�@3�[/��/@;�c��@@C�0V�D@J�r@!A@O�9e�R�@N"ʼc�A@PO����@K�T�n͛@P)��PB@P�U�P�@P-NhO��@L�n����@PnC�D@M�­�=@O9S�vX+@R�tf��m@S	��{��@T?�э�@@S����@R%�1J�@Qt?��@QR�ց�@P��Ʉ��@QF%,	[6@Pr(�3x�@Q��8?�@R�4z���@N������8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@?�����@7�(����@1']��&i@)�T�T@�@%5���L@#]rWV�i@(#�npU@2ș	�W-@=�#�i@E�^��Y@G����L@P)H�p�3@V��$�@W�T�n�e@W�;~w�@W�k�\t@V��6L�@VL��ݰ@U�"�b��@U��=v��@Ub�E�O�@Uf��M@U�����@UBC���@T�;�,,g@TS��<@SK��1K#@Rk�U���@QҜ��l@Q�{jJ�@Q6�:v�@QI��I�@P���C�@PZS��.�@O�s;G��@NѸ���	@NK��@O1�F�@P�Z/_��@R}���@S���u@T�0�Z@U&C��@UaÓ��h@T���_ڃ@S�ۑ�.�@UZ�w8� @Q�`�[@K�~��c�@HV@;���@A�"��@:�dΜġ@98�nd~�@8h��I@7M[k�t@9����@>�����@B�^K$�t@M�=����@F9'ݳ�E@M"�"�@P�&d�&@P��`vi@O�!�]�p@PD�?��<@M�g��;@L����@O×Ë��@L{u
�q�@O�5�l@Q{�Rõ@S~��M @T堄���@S��V|Y�@Q�"�]�@Qu�x�,@P�|�z@P0o���@Q��`X&@Pl�b��@QSQ�ͱ@Rװ����@M+�G�!��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@?J悢�@8�����@1����=8@*���E3�@&B�Z�3]@#���@(X�ؒ�@2ᘓ7�@<��|%$�@C���yZ�@F���	Ml@Phb-�I@U�`�~ek@W���#8;@W��$�h1@W�9[_@V����-�@V�r	@U�2�M	y@U����h@UM���@Uķ}2�@U�� ��@UC�H�Es@T���U�@T*�:jY@Sb	��@R�}��HI@R��ݥ�@Q�e�1 +@Q���(׵@Q�kTY�g@Q*����y@P��2� @P��̍�@O=�+YD%@N.`N�@O�)oT@P�V#ƣ�@RE�c+��@T	�e	@UQ$c)�@U�5u��k@Um9���@Uྍgs0@Vgey�X@S�q>n��@P���5�@Q�{�U^y@P	�^@H�(����@E���]��@C���R@@��'�!�@A��´@A^L���@A҆%���@?�eh��@AH��ջ#@D�z��֯@L�$�6�@O�[`�B@H�32㯨@L]�SJ�3@M'vEZщ@K������@O�q��O@P#�	&�@Q���%@R*��5�@Q����@S�
���@T���`��@S�� �H@Q����@P�5\�>@P7�U!L@OMo_]fX@Q'�K��6@Ql�73��@PȈ��5@R���}��@O��������8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@?��q�y�@8p�+�1@2m�G�\@+~���@&�v�S]@$�vI�u@'��3/@@2�����@<�x�As�@CS�\$�@E���	dm@N��=�=}@V ^>l9�@W���l�W@W���}@W�����@Vq��� I@U�Ȯ=��@U��YA��@U~��@U2s7x��@U�&/){�@U��W�<@U@i�X�@T�����?@T �<�@S~Q���@R�~����@RQR�1%@RM�O;3@Re��/�@R8���@QA��J~@P��.V��@PA����@O�ܝ�x�@N�- "w@O��]���@P�!z�<}@Ro�`���@T�\]��|@U���c�@U�b�4�@Wql�+@W�> �@T��>]��@UJ上w@S�w����@R
}d�>^@O��z�@H�0��P@G]�V�~�@BNƃt�T@B�g�Y�@F
 @0@I��/�@E�'L`��@@�4gy�@B�8�E%@K���H�q@K������@I���2�c@J'>^F��@O#p��#@L�k��x@Kf����@O�i�PQ�@Qd"�U�+@Q�M}[@S�ժ(�@R6�k�t@S�r��i@T�v��@S�P;=��@Qu�.�z@@Pw���@O�ǒ�ʆ@OJ�)���@P�\#x@Q��'�=@P�m���@Rg��~D�@OM-^�\m��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@?���a?k@8�
�`�(@2�q�n�@,v����@'�Ó��@%�Z���@'}'��u�@2I]N�)@<iE:B�5@C��h&�@G-����@Nfꨔ1@V,K��@W�Ї��@W���;�@WM�jD�@V�W�i�@U��U[m@U؉@�@Uv�X�E@Ur��U@U|��b]@U�/�ڭu@U*�L�O�@T���E�@T.���˱@Sn�^�m@R퇅��0@R���Ց@R�3ٱa@RDz���[@Q�I���@Q7W�ª=@P���i�@PMJ@�@O��|yE�@O�a��@O}B��0@P�-��@R�"�@U pZG_@V��	@W��P��9@W���  @Ui�&�Ph@UNf����@T�i���@S��[�j�@Pp9�FAq@M���/@K�i���@F����@B�їX}@B t��ws@N!�G�ף@R �4�g@L�g@�'�@J\�^Ձ@Rߺs��@U��O��@Q��ͧ�@M9P��@M��K�Ը@N5w��@O3|nu@Lq��O@O�@�Ԝ@PľdA�@O�����@S�WF��@RTi��=@S�ũ���@T ��4��@S:
���u@Q�πK؇@O��p���@N_:�OwQ@NS��jȓ@L��}.��@Kf~��o�@P���CN@R��/0@O��1�k��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@@�d�@8�G?�kh@3;���u�@-��{�-�@(��L��m@%|n�E�]@'��
W�@1n�Y�@;{�-_o�@D#�W
�@H�QP �@P X5��M@VA���@�@W�P��0@W���#{u@WR���@V�u4��@VT����	@U�>!�,Y@Ur� )j�@U�ײ�j @V#/Qn��@U��((��@T��V�r{@T�}!�I�@T�p��@S�=�%8�@R���[�@R�A� �q@Rub�ЁY@Q� �tM@Q)9iտ�@P��{���@P�WNW@O���Q_@O�0]�D@O��u(��@O� z��=@P���\��@S�3h�@UC�+�/S@V�#��T�@V��H�=@Vz�S�@Uj"U@TkM!�@T�t3��@S��(|@Q��\䏵@P��9�@K;~;��@CXV}O5�@E��hKP)@R�z_)��@U���ʞ@UD���P@So��@T�к�1�@V2j�� @V�zC9!�@TFP�ci+@Qq>��@O燮R+�@N�̿��A@N�Z,��@NL��m��@Oۧ� �@O����9@M�\kc�@P�J!sf�@S��=�@T��n"�@S��V]�@S����@RH�z|��@O����D�@N�%����@Mb�n�Oe@J� ��[-@O�b�R�@Qcqa%��@RR����@P
 �w��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@@;!�l��@8��RΟ[@3��i�K@/Ű�w�@)�S��0@'��k%�$@(�P<`?�@1�+��@:zZU��@C��w�7�@G����5@R.0�*� @V��WaQ@W�Pov@W~RI*�G@WM��@V�k[y�}@Vw��Ő@U�e"�-	@Ut+?c@U����d@V�~��@Uezz@L�@T��Ѓ@Tx�����@T5{�s�@SLR��.@Reң*@Q�&��M@Q���@P�'�U��@P���Q@N����@NU��@M���0�]@N:bӔS-@O��gZ��@P �$�!@Q �f�@SrX�/�`@U���q�@V�ͷo�k@Uۧl��@U�J�4@T���B��@UE�\��W@T�J��j�@SϲD�[�@R׷�M��@Mߊ���@Lovq��@LN�ְH�@Rm
1�ȹ@RF�q�;@R�q���L@T=X�p@T���F��@Ud�@V%�>[2@Vs�o:�[@Td�ѿU@QF�m�ͩ@Nn�C��(@O���s@O���@P~�Q�՗@O$)P��@N�2c@YH@Q_/��\Y@S�����@R�DKy�@R퀤zT�@T
wJ�6@S��^ɸZ@R���\z\@O�H7�jX@M�U?A�@L�����@J`���a@P�	Dt�]@P�K78�@Q`g��k@M��P����8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@@f}��@98c<B�I@4}=K�<�@0R�L}�@*���t@(�8N��@)0H��j@0��x�@:u��l8@DJ����@Gp�`�	<@SKːݸ�@V�*�xo@W�(#�@W�k��3�@W:�7���@V�@��@VJ�֨ӧ@U��e�5@U� �c��@U��S�Ɨ@U�����@U4��]�@T�h��@TV'&%7�@S쾓
@RԜ��j�@Q�b�4I�@P�>��r@O�e���@M= s0�i@K��f�@J� �4�@KC"	�+@Kc��پ�@L�S�&�@N�8�n�C@P2�����@Qv#�~��@S�6���=@U�l��3�@V�z��K@U�9�Lܘ@U�*|�8@V�q��?@VZ�Vo�@U�f�HM@T���^ g@T�纯��@S��7�%@R�۫�:@R�ݕ�LC@R5n3	|@Qx�Z�)@R;��� @S��$Q�@T�S{jw@T���j�@T�����@Th]/	�-@Q��+�L�@P�Z�\@N��I��@N�%Y��@O�z�F�@P��8k��@P�\l
/@NsȳQ�S@P�z�к�@U
����@S��ޏ3�@R�KmYȄ@ScA�I\@S��YܩF@RK�0~�@O�+I��@L���ZO�@MKW>��@HG����@O��,${�@P���v�@P&W���D@M�x{[��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@@��ο@@9P���{�@4����P�@0��8� @@,Q:����@*-�2�@)9��l�@0��q�@; <�$�%@D!��/ʼ@H�οPk�@Q��=ƙ@W),�f'�@W�n·�@Wr���W�@W8riM�P@V7�@VP��I5@U�B�Rڼ@Uo"L��@V���@U摮 Uc@U,����u@T�E_ǧ@T#���T@S� ��@R6��(�@PC�՟��@L��^�@I���N��@GL�cH'@ECѿ�!@C)���i�@E(��Õ@Hix@J��W@N|���@PGâl�Z@Q��x�zo@S��Ƈ�@U���{@U�J��@V6�cD��@W-���@W`���@V��l���@Uj�O�zP@U�Gg@Tu`
9�@S����@S#9Ħ��@Rr�S|@Q�$$�i@RŚ ���@S��Hc�@Q�9u�@R����b'@T*����@TdGQ�C.@T3�I闑@RaB��#�@P�mkݭ@O�ic.-@N�v*-�,@P�g�._@Q?�8I�@N�T�nK�@M��"ȰX@MʈpZj�@Tn�Όs�@TJ�>�U�@T��˼QX@S��f��@Sڔڃ5@Rk���&@P�끝�@L|���2@K9�Z@G��#`�@K[y&�r{@PyX�pm@P&�B:�X@O��i-F���8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@@��\)e@9z�"��3@5EisL�D@1Bx*�@-�ה�#8@+�V����@)�&�>�@0�񧭲$@;P(�x6@C�L�NWS@I4[�_>S@RZo���@WF5B�x@W�z�x�@WuM�[@W+oNd�@W(#"C6@V�����@U�x���{@Ux9l�G@U�?�X�@U�`��@U����@T�j���@T�����@S>��M@Qq���O@J�嶇�M@DK�$#�@A&uf�7�@<R����5@4�?E��@3�q�/1�@:$m�4@D�_�u�@I�_�j��@M߬��4s@P�G��g@Q�Bs��7@Stl�J{e@T��Cy�@U^�c@V`�Y�bM@W�=R�@W#L�J�@V�Y*]@U!�UY��@S�룍͋@S���%�@Sc-Cu@�@R��@`@RE޵�g@Q�q�2��@R`~&�0�@T{q��Og@R�� ��@Q]ǆ��@R��tڽg@S\���'�@S)�5@R&ڤ�[�@R�!	���@R('���@P������@Pyu����@R<�^9@NSH����@L�"y��@LP,��E@Q�q��d@TW*�y@U_��9��@S�Cok�q@S��t @S(�:�X�@PD��&�@LA�[�A�@I
�M�@F5<�]K@G5���@P8��%@M.�}!qX@G�V�����8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@@ܬT�w�@9��#%�|@5ag��W[@1�����@/��7��\@,�hY I�@*(eHL(@0գ�RH@;4�ӿUO@D/,m�E1@Ix�:)�@SAc9�@W:7����@W�r��M@W{${z(e@Wu�j�@W
J��$@V���h@U����P@U�8�0�@U�j��D@U�:���@U��
�D@T����={@S��K@S#�HY�@P����c@C��&��e@9�Q�5X@4�w*�x�@3+�@��@3?�_��@6C�K/��@:	�]�^�@A��!�J@IS6��~@Nc�}@P�[	@R��M�@Se��,C@T���n�!@U����bp@V ��O@W=�*�@W���@V��7�٨@V%թ^<�@S%����@R���Y.,@R���ES?@R_懦�[@Q̎a]U@Q ul�K�@Qӭ*��@TW_ױ�@S�O��@P1C���P@Q�tF>vs@S,�	EH@RYZE.�@R�9I�@R��:�@S+�l�@RI'��@PR�mB�@R^�1�18@Po70a��@P�0nZ�T@M�ƪ�ӫ@O�u$r=@Sk/����@Ut�yR`�@T.�@d�@T\:��2�@Sz��_�@P��q��@L�8i*@G5U�V޳@Ey��h�@D���o@P�F���@L�2Yl]�@C���K�!��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@@���6ih@:FYeUC�@5�-��3�@2����@0��'�,@.̑�c=�@+�q�Z�@1��L}?@;/�8��@DV\|C�@I�����y@T�d�C@WU�6,vQ@W�+��%@WR����5@V�v�*+@V��
'��@V��<'s@V�a�/@VV�-���@U��f��@U��+�7@T��߇%a@Tz�ߣݩ@S�G�9G@R�g���@P���~{Y@Cqg���@6���Q1�@6�;me��@6p��@�p@7w�}��@;�V�Q3@?t]/�|e@A�'Q��@IR�5��@O��M@Qw�ty$0@R��\?x�@SY��Q�@T�R� x.@V?����@Vx[�a"q@V;rB�XP@V^��%	�@V{���@T�����I@T,�<@R�d���@P�0�LK@P;"HϹ@Nc�8d�%@L��/@N�uψ^�@S7�t��@U�X����@Q�	;�g@P��e�@Q�}�ʏ@Qs\���@R>QJ<�g@R
v�+B`@Q�V�W�@P���S�@Oɕk,z-@O��"��@P�Ax��`@N2�؇ @LÞ�O<@Q)ɛ�@U6X��E�@T�b/�l@S
>��?@T�o+�A�@St�H�4@P?�L%ӵ@Jwo�r@F�p)���@De;���@D��[��%@P���b�m@K����@B�Ppr�6��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@A36N��@:�W�`��@5�
7��@2<8B��@1d<�(@0v��@-Q�����@1b(�|�@;N,ж�|@DG���c@I��v��@U
�g�;@WyOyAn�@W�5��T�@W@����@V���X@V�sxQ�@V��ѐkS@V;�fmD�@V%�>7_@U��Z]�@UD���Q�@T�W�<��@Tw�T�^H@S�bJ�@R��z�@P�:4��@G�ŀuF�@<�&X�@;{*�@9Ŝ��A@<����=@?d���@@7�8��g@C�nh%�@I�he�jp@O��[Cy�@Q��Ͱ@R�����B@S}.+�&@Tc)M�@Uӱ�E`@V4�0ݭ�@VW;d"�@U��~�E�@U���"p�@T��A-�@S*�o��(@S)'$�[l@P���C=@J��@D��@K=M8�@H@y����@G{��N%(@Rv���.�@R��$l�@R���!@R�����@QQHg@Q�ϥ=֫@R!�a�b@Q��z	c�@P��>�H�@Md3,�h@J�>�e�C@M��(Ym�@M����@R���K�@Q�Ƞ��@Pjt�*��@V���@Uh�P�8@S�I�R�x@TR��:�'@R�T�$@M�y�}�@I�O�S/@EV#Xޡ�@C>$+�@E�h�@P�x̙�0@Iz8���@B���G�}��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@Ah�IP��@;H��r[Q@5�#��@2k���@1�n���@1�B��@/���lk@1�d!i�P@;`����3@D%rrm)@H���W�@T0��K|@W��t@W�����@W9��ӹ�@V��7��@Vx�:�p@VnyKdr�@V"��E0@U����@U�C%��@Ur�~^z�@T�h4�@Ti�~K@S�]��Fo@R祦���@P���d*�@I{���@@
��� @<��s�@@<~II�@=�Վ��@>S��l��@@v�O,]@D���C��@Kʤ���]@N^}���@R�1���@S.|wn��@Sc9����@Tk��Ȝ�@Ug.��!@V�e�
Y@U�JwI��@T��ȉ@U
��@THu� �@RnͤeS@Q^�t�V�@P�/�e�@Q(:�un�@R��5�g@S�'��@S�dT�T@@S

��@TuG*��@T�j���@U����q@S����'@R�H�@Q(�~vO�@QTފ���@P6��E1@N�\܊�@P�W�i!4@P@Ÿg5@N�/�ݜ(@Q��m+@T��Cǯ@Vkn5�60@V\V?��%@U����lS@TE�#@S��`F@QD��n@L���ll@J �-�@JrG�A�@G��Yɾ�@H����@P~�N��@I��]��@A��
}�3��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@A��0a@;����:�@5�'��n@2zL���@2Bw䘟.@2�n^,��@1��]\q@2B}���@;2���@D@�0SF@H{Z{�L�@S�?ν�4@W��B5�-@W���id@W%Ex�@V������@VN�5�H@V;I��#@V(]i�@V���79@U�w���@U^/χ�+@T����MC@Tc���Yc@S�^���n@S��1��@Q�ћP�8@M���� %@B~��E�@?YI��@=�XA�/�@>Q�$P4@?�2K��@A-���@E���g�@M/�1��/@PR����)@Qw��
]@R�9s�a�@S�̽�GJ@T:��z�@U+�lSg@U���|��@T�%ZI�@TE��E��@T�7b��x@S��)m:@S..2<��@S�#&�@SlQ�>�@R��0q�<@R�ݴq�#@RD]�pP@R)�痢@R��j�@R�x�U��@T����@U�C�=��@U6��K�-@T�t�_'�@R}"V��q@S��si�@ST����@PN��?@P���\s1@R���Ui�@P�y�}FI@QQ����@P7��WA@TuO�,h@V���*ۨ@U��|�`@T���MP@SJ#f��@Q��PO{@MU��x3�@L�s{*�@P�m"Ğ�@Qq��\�@P��Α$@Qo|��T@J��j��	@C%���S��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@Aѓ�.7@<|{d9x@5��`/@2VYNɛW@2�=�8M@3��x�Y�@2R��yf@2�q���@;f�f��@D[߈М$@I��\��@R��@Wrn��ka@W�~.��S@W$5U3@V�zN|�e@VhG��@V�=b��@U��z��@U蝎���@U�58��E@UD���@T��_�|@T_�\��@S���s:�@SO�tv�@RK>�S>�@P&R*;3@EW��%@>IpO�x@=��+/�@>��+�L�@@��fQ@A�y��@Fn��#,�@Mm����H@Q���#(�@Q�ֱ,;@R�4���@Sv3��@Tn���Z@T�����k@UD��Jv@UT���@S�,��%@S����
H@S��v��A@S˾�ń@T�16@j�@T1�v"W@S���z�@Rr�u4�g@Q��D�c�@QowT���@QWޙ-c@R���i@S�6v��@Um��z!�@U����@T��;\@T=����@R*�,�D�@Q��[U<o@O�hc��@R}÷4~�@TFI��7 @R1��=@N��,���@J0y�n�@R�Ea9�#@V���0�@UQ��~�W@SfIm�k_@R���gO�@Q5�s�,�@L� ��@PKJ!q@N�[GM�@NF�Wc�@P��{��@Q��-˦�@I�p=sa/@C:���"��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@B ���)�@<�z���@5�Lm��a@2^?6o�@3T�Q�@5/L�r�@4F���6�@3�1�s@;"��s��@C�Ax�k@H��S�@S�g�dg@Wb���oC@W�%����@W�<��/@V�X��h@U�1�@U�̓5E@U��'�Z}@Uڞ�қ�@U��_X)@Uu�f�3@T���s@T`�I�A�@S��(���@SmΟ$��@RfU-!�@P�v&��t@Hj�Sk@>�\X@=�r���@>����D�@@�����@BjgQ���@F��fC@MB\��/@Q#�s�@Q@�F7y@R�c=H@S㗀XH@T>J�:��@T�=Oەl@T�|蔄�@T�(B��@Sˊ����@T'�����@S�ŠQ/�@S��e>�$@S�r�0@Sb���@R�>,��@R?|�D�@Quj e�@Q���t�@Q&�̀�3@Q�5|��2@R�پ�O�@T |�x�d@U��؄�!@V]��y@�@UƩ5l��@O��S���@Lr���	%@NѠ�ͭ@O�L�u�@T�� >��@T�|�@R�F�O@Tr�q@P�[f��@TN���V@SՖ���@S)���@S.�l��@P�to���@Lr��#�@Nw9�X*@L�5K��@J��}�H@NE&Y��@QexE`{@H�l��*�@B�X�����8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@B+���J�@=O�0X@5�d����@2Zg4?�@3~�Q��<@5��U�@5��8�,�@5M�2��@;#?�7��@B�]I+�-@G���-�@R���c��@W_X����@W���@W-I�@VR��Px@Uᛍ���@U�&)#n	@U̢�B�@U��\I|C@U��� �+@U~\��l@T�-����@TI�ˎ�@S��W�@S?� �}E@Q��7ˡ@PQVe��=@I��c�5@=pm�Q��@<j���@=�.��9@@g��@B�䕈@F4צ��1@L���v]$@Q�3�;�)@Sk����@SN�p��@S��2�b�@T���t�@U#�B��@U?�H�@U�շ�@TOï�ۥ@Teo�d��@S�ᢡ_x@S�	�/z�@SZ�Z�g@R� CSR�@R��v��@RX+�@Qz5lQ��@Q?���E@P��C��Q@Q�ē��@Q�y���@Sbk��q�@U�ŕH�@U��C'�c@Rط�T�y@Q���%@O��߻@R��?S��@R�A`���@Q�0�Ig@T�ySo�9@S����@T?ǜf�@R���!�e@S!���Ū@R��*m@Q��,Vo0@R���W�}@P���׌�@Ob翣@MƅW��t@M����3@J��G^�@LT|Fx�X@N��=@Gڔ��/ @A��6�]��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@Bf�VfZ�@=`�\d@5Z!��@2M]��5�@3���%&�@5�$��
h@5�~,��@6H�'!�U@< ^��B�@B���G@G�c�[@R?.j�� @WN�A*�Q@Wy��PV�@V�C��@V7�-�K@U�b��� @Un�a�D@U�ז$M�@Ua��0)@UT.�=�@U
���@T�\w��%@TA+�pG�@S�6�`�@R��R�+�@Q]^J�;@N�z��-�@F6R;�T�@;�=%�)@:���`?S@<C� �@@yQF:�@C1>�%�@E�z�~ѵ@K���k�@Qd�t(@TI���>~@TQ1�W�@S���X�@T�^���p@U�o��Bu@U�c���k@T����@U�V`�A@Tl_C|�@S��R+[C@S���+sA@S=V���/@R̡#F�]@RT�7�^@Q��t��@QH�	��@P��Ol t@P�p�@Q
�6�ۯ@Q�H���@R��R���@T���ˣ@Tً��d�@Pv�vqp!@R�Dǁ�@Uϩ�K@V�Z:��@URT$��@Q+�t�z[@S��.k@P�q~H�q@PyD���@Ta5S��@SK��M@R���}��@Q�?�wC9@RPp��@P�/H�@Kn��u��@J��l�@Ju��-�@E���}�@N߉�
�@M{#� ��@G�uݞt�@B1�A��U��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@B�"7Ts@=���b��@5#q���@1����@2�2��i]@5��0B�@6v��K@7Unl�@<ص����@C��vs�I@G'����'@Q�Rd��u@W1�0�j<@Wl�ء�K@VၖH%K@V*�@4�)@U��+HV=@Uo �J�@U�E�� �@U���M@UA�k�@T�Beʄ@TiK��cM@T7Y�[@Sx~Sg��@R�*�\o@P�Qc��$@I@��椃@@ٖ��Ń@9�o���@8���1_@9|��B��@>�s��O8@B�W�p@F[Z��0@L�3�e��@Q.�G���@S�����@T6�y[U@S��+x��@T ��"f�@U`�+�=@UFTȜ�@Uڳ��C�@U���Օ�@Tn��H�E@S�ɬ~t@S��DW @S�*�(@R�f�kX�@R {�	�@Q��܄�E@Q� 54@P�E/�z�@P��ڂ@P�.��#�@Q� 2ZY�@RHZ�UV�@S��V�}@T�L1\ �@S�l��p@O�ki	<�@V��?m@VзoT��@UE'7�'@P%_XM/@S�HH��@S��j	M@O�zm�@R�!�?�@Q����@Rlf�k@S�%�Yml@S�K}ާ@P��:�@I_h�Q�@J��#�U@Hu�����@D��ԕ@J��v�@M���q�@G�x�#��@C�'��1��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@B�Lٰ�A@=�R�쮃@4��І�@0򳽺7�@2�hI�%�@5�Yo���@7U�Hi@8%BҴ@<��C�]�@B[�F��@F��p	@P�4�|�@Wy0ާI@WM7QI+@V�tH���@V.^�GOx@U�u)~�Q@Uvqpc(�@UR)���@T��z9�@U*� W��@T��7��@TI�SU�@S��ߕ&�@S]'@�@R(�s�{i@M� ��%�@D\@ikx@<{���'4@8�ǏY�|@7d�&�@8TZ�jp@<�ZW�@B����@G���c� @M�%�9��@Q�L�@Q�#�Ca@S��0�l@S�K�!�G@TN�w;y�@S���o@U����@U�<�c�k@U���{�@T�i�$�`@T9���@S���~P�@SAxg�~�@R�N�P�@Q�k@��@QL���!@P��CԈ*@PBx�ma@P;'8��@P^�T���@Qm���@R)k>��@S7M��^�@T�m?��@T�{/�<�@O�O�C�@U�v'c@V��kz�@U�&��@R�G�{!@P��D��@S�r�n�I@TPs�q@RDn��p�@R�<n��7@P��Z��@S���^@S-Gf�{@P�d�)@J�˕�sS@K�o���@I�ր]�@G^�MZ��@Lk��#�@M}-ķV�@H��=�~�@D�	bk���8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@C���X@=�L�"?�@4p�:)��@0�a׮s@2bP�e@6"0s$@7��)l��@7��o�o�@<�@B*>�F�u@E
6����@Qx�?�NU@Wd�pVe@W5�\J�}@V���h��@V.[6u@U�x�2@UrI��@U�� �@T��K15h@U?Y&M@T��ʑZ�@T&#�;c�@SÔ�]D@S�C$�8@Q(�%#*@K��"X�@B
�D1g@;���W@7��{�@6���V�@7�,C��@;����@Dr ��i@I�{�.�@O���@P����C@Q��\��@S�`+��@T!|��@Tܱ� ?�@T����e@V��5cE@U�����H@U�ޤ�Eh@T�{Ƞ�N@Ts�!>v�@T	���@SVW#�ai@R��p(E�@Q�^��@P�W@ԡ@PCy�$�@On(ӝ�@O�-��%�@P'N��{r@P���r+@Q����F�@R�N4�DM@T6�Z��@T�@@��@P�d��J'@PƏ._˹@V��
�%3@W1a�`A�@V��Yf�@S�$�D��@Qu�Z{� @S7�=($O@Tf?W��@S���@MI_����@O�C<�@S�H�~1@PHd���-@I���C��@Iي�`��@I�@��D@Kx�<�@O`��Z-@M�� �\@G�,4K@I�9�dJ���8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@CF���/@=���I�@4>ĽU�@0x鎅�Y@2tpԈ��@6\���u@8F���@8�_`e�@;��1P`�@A�'>��<@D����D�@R���9�h@W4�$Od@W;;���X@V�#$YӋ@VO�0�{�@U��:]�@U�,"@T�:Y,x�@U;�y[2@U��Uy@T�A{�r�@T��4�@Scekm�@R?J���=@N�}�g�w@E �:�@?�(+�%@9u��ѷ@7d۳0h@7[�$L��@9M2x49]@=���O`�@D
Z>��@I�jaˣ@O#�ͯ�@PkC;e��@Q��O�\@SX:6ԭ@S�|�g�q@U��i]��@VDW!ɒK@V�g= 8@V疗��@Ut����X@T��6@T�"Z�9�@T3�\��@S�g:�� @R��H��,@QqT�1�@P�g�4�@PEʷ�'@N¥K�kX@N��wa@O֐�v��@Po�H�M@QD	g/�O@Ri��@T!�����@UW�ct��@S)o��i@J����@UU=�0CL@W8i@�CI@W<���@Wa�>�h@Un�)	N�@SS|=�G@SVK��Rs@Q���1�@O��oO/�@M??��m@PK��$OL@P-g��=@J�^�8`�@J:�G�l�@J@�X�F�@J�͵�W@O�]�L@PXݖ���@I��G:�K@J�$1v"���8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@Ci��� @>,A�D�@4Aʗ��7@0�D� [�@2�/{�p�@6����4@8S���@8�a���/@:i�s$c@@�b���0@D۶�߯v@S��4�@WU)0���@WP��
�@V��!ˏ�@V4Q���@UEt��oO@T���6f@T��w�@U�_��1-@T���l��@TW����@S����R�@R����E@QA!�܁@K�_���@AM��J�9@=�+� u@:#�)&{@9%��$S�@9�ד;�@<OsV�M@@dp�k]@EbTl�L@K��!��@P�$�:�@RB@^�@S� ���@TID��G@S[�V� �@VH�m�>�@V�/�@V\f�W��@U��3m�@UO_��)�@T�y��F@@T�&���@TQ��ƽ5@S�+�@R����.@QD���@P(�Mgù@N��c>�@M���$t�@M����$@OG���5@P4���@P�?!�o@R0���$@Sɑ�w��@U<��X,�@U�״D�@S~8'0@R����k@T����߹@U���T%@VXػ	�(@U�e�:@T±AG9t@R��I�H@RA@����@N��ù�@Q �<�@P'ȂNɹ@P1�b97`@Mm6-(�@LU�i��@J<2�d�,@K�&�! �@Okj��[ @Qq����@Kߞ�D@I�-Z�Ar��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@C��j�@>c&�?�@43|���}@1z)�WF�@3�nڋT@7�i�n�@8�7�L:@9S�D<�P@9�~�M�@?s߽��X@G�?MR�@T��Z���@Wr0W�<Q@W^�vr��@V�Fo,Y@V7`p�@U 7`T�\@T�� G�%@U&�(�@@UbK���@T�-����@S���pe@R˂`G��@QK�Ư@OuEZE�q@J�nW٫U@@���?@=�
�C(�@<L�ul�@;�x���+@=U�].Q@@g�<��@Du��s��@G`g���`@Js"�1�{@O�D�ڳ@R�,iE@R�{)��@R��I�%@S#��M	@TZw�]@Vo��i@V��l7@U��a�W@T�c�W(�@T�YBy&)@Tϒ�o]�@TY���o@S�B�O�@RoGy"<�@Q(�A��@O_=G	X�@M��.�(�@L�����@L��}1�@NzKڣ�@P;�U�a@P��'I=@R���8:@Sv���I@T�W7��@Vf���[@Vw�a��@UƊ��ӈ@VJpp�Q@Q���Qv�@S�X� �7@T2�}c��@Q���W@@P�}4�@Q���E|@S/�xf�@T�����P@Q�N5yb@P�<��n�@P���"m@M�Nr�V�@K_Y'�@Mb:�M@M¾$d�4@QQR@�[�@I���$<@G����)��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@C�Yu)�@>t��LdX@4R�x��@2G��gO@4X�o��@8&�<� @9X���` @:0�	\�@9��kJr�@@%n���@K48VPl@U��-�t@W��v �`@Wr�� ��@WЦU)�@U���}�@U�Q�Z�@T�_�V�@UP�o�@T犉y�#@T>�s���@S�����@Rb�/:��@O������@K�W(�U@K����<@A�{����@@��3c@A��&P�@@x�a|K@AF�p@Df0��>@G#W�k�]@I�m��d@M���}�l@O���UI@P[M�|Ř@Q[;#���@S�\��@TLt�+>@T댼��%@V8G'^�@V#�ʁ@U|�!0��@T�(�@T�I��%N@T׬L�9@To�d��l@S�'t�@R;�g�i@P�,�h�@O:1׸�@L�� h!�@K�Q�@K�$b�)�@Mр^�:@P�(C�T@P�����@Q��yn>O@SH����@T��ta8�@V^I�U��@W)�-W) @V�/:���@V�D
ch@S��"MI@S���٢�@V�����	@U	)�XM@T�e�P@U^N�@�K@V�� Č_@VLV6å@S-��A)�@Ql�[��@P���:ɬ@O?z�Q�@L/��G,@N��b�?@N1*���g@P�B�X+v@G�c0��@F\���]b��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@C����$@>��}M@4��0vh@3!��hNm@5f����@8�6�G�?@9��2�@;*RP(�k@:uv)��@Ae��Y@O�\��@VAyZ��g@W���ƞE@W�N��@W�
X�(@V]2EQW@U7�v"��@U���U?@V����@U��13j@T4����@S螄3�@RG��pW@NH��)�@K�l���@K�<TpM�@E��K@BYn�X�@B�^�O�@B�B?�7D@DC�Z�@FQ���@I�7/��@M8�	�rg@M<nM�`@MI�L1�@Or$/�;S@Q[t�u�@R�Z�{2)@S�/��wQ@U�O����@V/����@V"���q@U*"���A@T��d��@T�ʩ��@Tחt��$@T�k��@S��5�A[@R	�;��;@P`}��0Y@No�hѡ}@L��<�� @K$�]}b�@J]��V��@L�����@O|��@P�j��k@Q�H��3�@SM��̞L@T���'��@VG�[*k@V�k�$1@V��u�X@W;��@Vs��c�@U�oe*�@Wg��=�3@W�	qM��@W��?���@W�=1�|�@W�M�^��@V�a!`@TgъH�I@Q�3l�@Q�2|lyF@O��uiz@N������@J+>�
�@O?0�m4@QK\|�r@G%���%k@H=�Q�E���8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@DR�Q�@>����k@4�x��,�@4XQI��@5����-@9��){@:��v��@<T
�T�q@;;Y��@B���#Eg@P����pY@U���w8@W��2��@W��|�+@V�S�y?@VU5G���@VV��'�p@V�>��}@U��B�t@T��z���@T#.72p@S�}4m�@R�����@Pw��[C@Pg��Jo@O_�/�\@L��D��@KR�D�@G9N*��@Ez� �T@F�|�pL�@H��lK3@L�zҞ�h@L�XH~l@Kd�2<�@L�ݔ��4@O@���� @QL�	Д�@RD;u��o@S��U��@Up�[���@U����@U�y�sS[@T�/um�G@TvN1��@T�}T�u@Tߔח��@T��vW�^@S�/���@Q�M\�@P:)��V�@N����@K�׾�"@J]�X��O@Jm���@K�� =2�@NQ�/a�k@P�ƙ�U�@Q���!@S!ͥ��Y@T�O��?@V���@V�7��@W�K�L	@WK���S@V, � �@V��OA@ @W'^ɑ�h@W��vK,�@W��{k7	@Xjqx2@XU�tP@W��^��I@U^��x(m@Q�l	z��@Ri�]]X@Pʄ�&�!@Q	`���f@Ln8_�V@P�/W�z@P �D�@F�h��=@GHuh�u��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@DJ=��O@>}�a(@4�.j^e@5������@7
J��p�@:ƪ0�@9��gt�@=eN�{�@<E?�.� @DX{ʎA�@R �:�@U�r�� �@W�{��k$@W�᤯�T@W����%@V��pK1�@V�Q�cd@U��##ǩ@U;5w`�@T��/��@T@)L�k�@S�oy�@R���v�U@Q���` e@QN����@P����K�@NӦ��w�@M4,����@M��4k@L���`�@Lȯ��q�@O_feU@KO=T��\@J�w$!au@L�S�^�@M1"�[�d@O�m�BID@Qx��Ԗ@R+:m��@S���0�U@U��&��@U��~�@UU�ɮBD@T�鿭��@TK�c�9@Tz���@T���9@TŎ|�@SQ��?c-@Q����@O��r^e�@M:b�Fvt@J�f����@I�a�8��@Ixi4�>�@J�N�D̋@M�E�d%@P?�Q3ܗ@Q]��f��@R�ǽ�Vq@T�����@Uִ".��@V��)��x@W�z�x�@W,O�Y�@Vzs��1�@V���M@W!µm��@W��F:��@W�s�}C@W���Y�@W�0~Yű@W�H�xd@V3�1��X@Rh�����@S���M�@Q�>{��~@O.�'2��@Ob�Gd@RC��H@Mo����@F�O�!�@En$&i���8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@Du芓0b@>_���p@5��,�M�@8[��22@@8�0�6w�@:I����@8`K\Sx@>�x���@=5+��}�@EJA�Z�@Rח04��@V0��V*8@W�j��Y7@W���gAm@WeA��hC@W����@Vu)�9@U�?�a@U�!�;�@U�ӌ�$@TV��tA@SonA�w@R���q+@Q�lA�T�@Q%�uT��@P1�r�s@O	�p�@NZ��@K@MX9�q��@M�q��w@M���@L���"A�@M�}%��@N9�v -@M2.{s@NSgjJ0�@PV���@Q�D��r�@R�Ll�"�@T!��V�@UR��M
E@U���Ȯ%@UB���@T��#�;@S釐egu@T`���@T�?��@T�v��o@SDj���@Qn�>cO@O+��~]�@L,.Z���@J&�G�Ld@H�0S���@IY�50W�@JqpOQ[�@Mn����@PY�6;G@QK�*���@R�^,\^k@TO)v5@U����@Vj	���@V��?��@W9�NI70@W�%�Ր@V��z�o9@V�C��h@Wh?�M@W���v�|@Wh�`Z
u@V���kK�@W/���n�@W;���'�@RtN4�=E@R��3>>�@Q<K~�X�@M[[<�~@Nw�9�@R���OՋ@K�V�|˟@F����3�@D`�i�,.��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@D�K55�@>)K��p@8aL�U�@;�'K�R@@?��\��u@:�}<j;�@7Ā|aA@?2�W�@=��\�@E��*��q@S��xS�@Vl���x�@W��)x.�@W��K^ߓ@W�~�1@W��'��@V�S����@V�	�@U��OC�<@U ��(_@TDL���@S�(���^@R�NƁ@Q� A�W@Q/fBe@Pr�  S@Oc$G�M@OcU��#@N>0hݧ�@L�����@@L�,X�@Mq���+@M!�����@M����a�@MEAIP@OzX}�%@P�պ��$@Q���\5@SK��$�@T`�R�LW@T��f���@U2���t@U �p@�@T�	��@S���"��@T��.$�@T��(�b�@T,���J�@R�Z��@Q!��<@N�m�P@K
#���@IG:E@H�� ��@H�6���@I�Op#�@L㢮?Ѕ@O���:C)@Q
�~�@R��,�xU@Tr��@U@�r+(�@V5�~"4�@VێR,%@V�x��}�@W)F���@V��:�y�@V�"%޳'@W@y��K@Vt�R�@U�vN%p@T2�|c@Sm�篋x@V�?)A��@S<^�(�@R5t���@P���DO@O����:@N~���j@R�D��I�@K��| P@G$�5P}@D����;���8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@D���=�[@=�9�w@; l*�@@�O�I@B���-@<�v5���@:,��@?���H@>?د8��@GJ�px�X@T�`�|@V�ptM��@Wŏ])�@W��r�W@W� qG@W �L�w�@Vt�u
:`@Uː�2f�@UP�B��@T��A$i@T<�:�l@S��\N�@S�9H@Rz+>@1=@Q��8�Z@PŨךHP@P�[���@PJ��Is@O��C�M@M�,�T��@M�)��o$@N�Wk�@N�EK�y@M�y�Iǋ@M`�����@Pkq�3@P��vG�@R8ʘ:�p@Sp�l�@Tq�o���@T��#iD�@UTpa�o@T��d��@S���b2M@SM>z�K�@S�Aͣ<�@TrP׽a@T&E����@R�n�د@Pa�?�@L��v�@J_&���@H���<�	@Gȁ-`e@G��N"�@I��D�@LFplk�{@N�q i�c@P�d�<�@R�<mH��@S���� @U#wm�@V(��� @V���,@VΌ�w�@V�p�8@V��\̄�@V�S�:�@W��UF@Vu�ş��@S�I�P-�@Sm�R��@S$��Ce@S�l�$e@S� '4��@Q����@P��8ێi@O?�tBm@O.��o�<@R�W*��	@KZ��r@F;9M�]@D�������8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@E&B5y@>�!�35@<�b���L@C�����@FdZ�M��@A[�u��@@�"�1�4@@�Ⱥ�w@=�
��q�@JL��;@UYj)1@V���qm�@W�N��re@Wϴ��$�@W��S�o�@V�u����@U�!Wŝ@U�O?�-@UXe27�@T�2Z/a@TCf�(=\@S��I6��@S/�����@R�<~�@Q�A8��"@P�A��*@PxDI��@P��0**t@O���,@d@Np
�|M@Nr^�5��@N
¶�@M�p�e@Md����{@N\�7��@O���+@P��:�@R<��
��@S�9�FT@T\C�u%@T�
B��@T���zy@TT��@@S[�b�D*@R�Ҙ�@Sh�NpG@T4	uí@S�\��t�@RuZw��=@P
$ g��@Lgȍ�{@I�O1�zD@G�	[�v�@G*n���@GJ��$C�@H�j�4h@K�����@N�I�w$�@P��b�@R��W4��@T2g��|@UG�b�7@V7�<p@V�\8��@V�+��4@V�����@V�b�fH@V��\1�@V��S;�@V�f�"�s@U�8��@S!%	X�@Tk���}�@R�B6v��@S1h�9U�@Q_�#�@P�ƧV�@Pg2e��R@PPy�g@Q`��B@J t�Ю�@Fl/�xO@E�y#�&F��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@EX�ꐶP@>�H�Ji�@@i���Q@G�a���@K�荽��@G:�K���@E>BڱZ�@A|�O�S�@@�͊�@P����@Us���-@WT�o@Wǉ*�@W���@W�;- �@V�ԋ�&%@U��T��@UݻN�Ci@UV��N2G@T��kW�@T/��b�5@S����M@SIrZ�+@R�A��c�@Q��kH^�@Q*G�D`�@P���a�@P��Q��@O�Ş��@N�Ȟj̔@Nۄ��W@N{%��3�@N�	t��}@M����w�@Nl�F�w%@O���N��@QS�m-@RAu�$�@S�h�%�@T�#�%�'@U�Dy�@T����qh@S̀`��@R���@RE���3�@SJGWA�@S�.�Gt@S��\���@R��s�|@O���c@K��� s�@I�P�4f?@G��`�p@F�3��@Fת��45@H��-\@K�;��@N�]�p�@P���@�@R�G]��@TL!�R�<@U� [�@V.E��p@V��u5��@V�lES@Vt⮌��@V�W$7@W���2M@V����@Vۏ�|�9@V�Q�>�c@U����@Th؂yG@SD?y�)@R�&Xْ�@QZt"em@P�"T@Oܟ~ �@Pr����Z@P;H@H��u g�@F�e�j#@D�Q��\��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@E�v�
�L@@	��"�@B%���@K��K@M9����@K�N��L@P����@Er��Ժ@Byʈ�A@Q�m�7��@U�����@W;�׍)�@W�&y��E@W����d@W�"�Sī@WN��nK@VOrl�r�@Vr�%!�}@U��t���@T����@TX��5@S�W�L�1@S%'١��@R׆���-@Q󳪠��@QP�E��K@P��\�Y@P�p�s��@O��1�1�@O/afox@O?�9��@N�O,UՁ@Nf!TF��@KrZts@M�'`���@P��H�@QM�GI�@RpX���@SҸ�0��@T���<�@T�w�vU�@T~T���+@S�ՏE� @RXrcS@Q��.P�`@R�+�O�@S��}�@S�Y���@R�F�@O�����@K�`OMY?@I�ٿ�@G�i���@Ger�C��@F����W@H�/�ݬ;@K�GD�>Q@N�h����@Qb�!O@R��}l�@T^M3�F@U��j�w�@V:�6G @V��ߋ��@V�P�\P@VCa
-@V���IO[@V����}@V�3��x}@V�g��@W)E�>(#@W_Wi��@W,fQ�m@V�Ur�L@R���_c�@Q@^Bŷ&@O�1�k_@P���P�@P��y�@N��'5e/@IN�����@F�_��c@D �S؊���8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@E�׌υ@A�����@Aܩ	��@L����p�@N|���@Nv�i��d@Q���A�@MO*w.��@C�2M��@R���iNt@Uȵ��0@Wf�&Bw@W�js��@Wŧ�)/�@W�D�t� @WQ�Z*�@WZ�[�@V]8�8@Up�~��%@T��>y`@T��cM�i@SP����@RK�n�A@R|��ExM@R!.<���@Qgen�u�@P���KS�@P���D�@PC��>�@O�`�R��@OA�ѵ�@O:a�l�@NK�G�@N3oBof�@O'7��O@P��rF��@P�h�+ @R|C�9�@S�c1�A�@TkW96�M@T��Jm�@T-gO��@S7��'��@R
싋^d@Q���{@R��t�-@S����TD@S���� @@R�f�@Om|F�H�@KPǑ��@I7��AD�@H)�Ҭ�@G�ݎ�Y@GNL�Q:H@Im�A��@K�W,;��@O���,@Q�$�@S =���@TY]�Kd@Ux[�: @V-oT�@V�H�&#@V�	g�c@U�N�L��@V�U�@V��2�@VUAY��1@V�Sᬵ@W��8�i@WV	��@W��*t�0@X"��9�4@S�Ql��Q@P�5�ǰ@O��Z4��@P�yo��R@PS(8�`�@Np��r�@I@)�H�@F�=9d�f@Dؑd�sd��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@F'B�d��@A�=�j��@Cf��|�@N�B��K@O������@N��plأ@S1
�5�@QJ�����@F�� @TN��@V�uǻx@WzF6�&�@W�ڣ_{@W��i"`@Wy�уm@W1lVI�y@V��z7�@V�)ܨ�@U)��o��@TV���@S��xu�M@Q�ѫɯ@Q $D��@QѧR���@Q�O�#NY@P���3@QU�@O4wxsbp@O)Sx�;C@O���jo@O�5����@O���O�_@O���I��@P,�|�|@O� �g@P�^c9V�@R8z����@R�����&@S딪*�!@Tk�h��k@TpU}4@S��ʠ@R�aK��@Q�]�١�@Q���N�@R��~�
@S� tb��@S�^]m�8@Q�'(�{@N���]�@J׻��f@H���5O�@HN[H�@G�����I@G�G�)@Ie|�8�@KɝBBqi@N��0c:L@Q8�ft@R���U@Tڹ���@U9����@U�G��@VA� �k@V�H��$�@U�+��C@U@O~>Ч@U����2U@V*�t�@V���{�}@V�	7l�@W9|�~u@W���6�@X&�q�m�@T����>�@PQ缨_@O�b��UT@P��@P�/���@P�cc@I����$@G(m�.��@DO���n���8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@Fs��.Ow@An�
h|@E�:�K�@O��5�To@P(bNw�@P�L<��%@Te%um��@S��H���@Ph��]i@Ur�NV��@V_��`�@Wvo��G@W�2���@W��m���@W{�F���@W	0�,Y@V��Qo!@U�t�O@T���֟@T�M|���@Sg&�@Q��F,#\@PI��3u�@Q#�c=�=@QUhk&@P�7> ��@PR?�%E�@NK^��v�@O����W�@Om[�ǾT@O��3���@O�}����@O�fGZ�@O�K��@Pe�K�vr@Q[x��@R����[@So{��d@S�R���@T]�(��@T�����@S�Շ:��@RG*@Qe:�Ĩc@Q��+�@R-�8��@SH�%@S��Rw�A@R'��w@N~�>B�@J�"x�@H��>�@Gٙu/e�@H��ܻ@G�H�et@I;gLG�l@K�B��#@N��p�@Q*�2;��@R�,!,��@T�i_�@U/+wv�%@U�#~��@V(�F�S@V���@V\H� z�@UO�c`@U�+� �@V'U|�Qu@Vp���7�@V�4]տ@W")s���@W�؄�3H@XӒb!�@UTb���@P�1c@P��ρ��@Q/����@RkI�'n@PՁI\�@J�Έ��J@G��Io�@B�e>���8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@F��@B|����@F�4y=�@PuĒ[@P�f
��@Qzv(y�@T��7nf�@U#&�<�@T�����@U䶶d�@Vu>S��@W�6	��@W��$1�@W���X	@WhwJ?�@V�h�҇@U�\rTa@Umh�r�@T�ۂFsZ@T���e~}@S�l��h@Q���=�@O�)ۤX�@Po��^��@OM�T���@P�����@N�3Ш@M�}k�A�@N�[PR�@O,t&���@O�02*�@O��� @PH3l�@Pt��J(@Px����@QW��>�@Rp2Ww@SwcT��@S�p�y{�@TC Dn�c@TG�<}e@Sx�[50@R5O5t,;@P�$XM�G@Pz��+m@Q� ��@S7@�MҮ@S�Sz�nU@R_��@Ni�ˁ�a@I�-���@H�j��@G4�4��@G�?��*i@H<��|1@I9w��=|@L�5-�@N¥;4�@Q	Yv�A@Rl�h��W@T�R{�@U	�eh�@U�~�;R�@V'v�G:Q@VW/��3@Vm}���@U��l3@U񴗅Q�@V��a>e@V5�n��@V�~W��@W���{@W�uNh�@X5��-�@W,E���@P����@P��� y�@P��V���@SxAk�M�@Q,���@L+���@H�����@COki�:��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@G��|�?@Aɘ�n@G��`a$q@P0-�zE@P���7x�@Qᒷ�VC@T�>�M;@U�K�/�@U��>\�@V-�w��@V���3٠@W�mz��@W��ɛbx@W�}z[�p@W$�O6�@V��V;P@U�Gi='@U��B{)@T��Ć@�@TO۝Y@SG��E�@Rј��]@P��}|@MZҏ�ٝ@L�/ߓ@N�~AS[M@PA�VXa@ML�?>y@OY��@dH@O���9,@O�,�&C@P2&���]@PA'��@P��h���@Q,F�y�@Q��F��@R|���4$@Siո#z�@T�fn�?@Tg_s���@T-���{1@S8���$�@Q��+ɿx@P_�0S�(@P'ŀ�'�@Qc:���@SA�c�@S������@RM.p� @O!����C@I����@G����$@G�a��c@G����p@Hd�Q��@I�	tFU@LM�p�@O{H@K@P�k�}��@RC0�L�@S��e���@T�&%��@U�s�T#�@V�u��@V�GG@U��+ݼ@U������@U��t�0@UȮr��@V(3^Q@�@Vl����@V�0,��@W���/��@X>�v��@X/�C@R��k51@Q�:�?@Pr8�Y�@Qik�<��@Q]u_�b�@L�sB�np@IH��a\�@D�9>����8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@GOu����@BQ�yl�@H��O��A@P~t��@Q�o�_w@Rw��,�(@U�w�s(p@V���@V"�@`]c@Vc��kA�@V��c��@W��I.@W���`@W�hI��@V���7��@VR$;@U֒���	@U��mW	@T$V�^��@S�#�L�@S	L����@RAS�,y�@PT<lco#@Nl4̼4<@P?�r���@P:-��c@L�����@N�ۧ�$�@Oq�H��@O�Ļ�@P0m��7�@P?0��@P>�>�@P���@Q^3�<%@QR��Uc@Rv�0k�%@S|QȾ(�@T-�MK@Tr�����@TFH	M\�@R��i���@Q]��UP3@P9�9`n@Om��ܳ�@Q�5t��@R�o�^Z�@S���/��@Re}�aH@Oiy���g@I�ѡ�D�@G�P�ƅ@Gm��;@G��|�@H��� \@I8J���@L����fc@O(Y���@Q(�='�@R:v�[d�@S��<;I@T�-�J@Ue�<t�K@U����T@UÔ�2?�@VQg�@Vz��-_@Uǥ��v�@U�T�X�`@V.�]6�c@V�5WA@V��@\�@W|�3t�t@X(��j�@X_�5b��@T�.L�$@Q���@�@O�݌*EM@P��ێ��@Q�1��@L����6-@I��vV�@D�{�C���8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@G��3#�@C*X�@JJ
�,�@P(��	�C@QM���d7@S+��C@U�T�Ю,@V�<>��@VQ�����@V��I ��@WB�uE@W�����@W�9��Q�@W\��c�@V��4��4@Vw9���@U�7\:�9@U[�V�@u@T�D����@S����R@S� �ץ@R���E+@P����@PQ���Q@Md&O�@Nߨ��@N�CpQ@O@��v1�@O��!T-K@P�\�i@P+#-���@P1��'��@P^��}�@P�|J�@Q\�@Q�&C�LC@R F �@S���V~�@T*3�x@Tr_�+x#@T5���@R���{`�@P��(+q@O�����@N�� DP`@P�\�/@R�����@S��6�W@RE�<@�@OCB�4}@I�����@G���O@G(�9)�@G�I���@HkXH�H@I#��@L��ڼ@Oz�s��#@P�I���@RoAn�M�@S��ʮ@T��W�v�@UO�ٓ��@U������@U�$�r'@V
�&_�@Uε��iM@U��dbuX@U��	��d@V��.$�@Ve%$N�U@V�����@Wh%!]�@XiOޔ@Xm&�V�@UW!�]I�@P���L@P��Ȧ��@P��vq@PŬG�R�@MY���`@Hx��@EOL�S�2��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@G�	����@Ci��8!O@K`H��@P(@d&�H@Q���;@S�]�R�@Vtݦ�I@Vȓ�i��@V��T���@V�/n�?@WU�~A�@W� zh�u@W�=٧�Q@W>[�$8�@V��L��\@V{sO��@Vle�a�@U�>)3E�@U.po���@THd��@S��3��@S2���@Q��n�0C@P��ۑ@O|u<R��@N�r�G@O�����S@O�Lu�E@O�e@���@P�3Hze@PK�?�0�@PI(�Y�@P�.Lƪ�@Q�e�W!@Q��M07�@R-��9�C@Sj|�E�@S�[��C@Th�G��@T_��T��@S󪍔V�@RsE��(�@P���M�u@N�� �@M���'@Po��
@R���)Ge@S�����l@Rb�X�@O;Gw��@J4j^�l@GB.���@G8L�z�@G�rm�@Hn��U�x@IF���
h@LM�ƪٕ@O�ps=]�@P�Gu��]@R��w:@S��;��	@T�e ���@U3n��@U�lfn�@U���&��@U��i*K@U�����?@U���h/@U�th)f@VCaܴ�@VXw�	@V�:�MG@Ws��|�(@W�`㩎@XXI��O@U��߬m@O�1?g�|@O�+���C@Q�C�ۂq@PZ3m+�@N�h�_-@H�p��G�@E��_���8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@H6��+e�@E^!��@K���g@Pd
�@Q�ws�R�@TY���s@V��GfP@V���Y1<@V؟�u�@Wl���@Wg�y�k�@W����Y=@W�	L��W@W.�E|�+@VR[�o@U��4�@Vz�EF[@V$T�/�@U�>C��c@T�_wӁ@S�r�އp@S��؞(�@R>�ൈ�@Q�Y���@P�v���@P+�Kq�@P:r���@P��A@P�F���@O��`ۏ@P'���@P0���<@Pk���r1@P�8p�3@Q��Zg�j@Rc��5i�@S�+\��@S�eɸn�@S�~��]�@T5�C��9@S����6�@Q����@P0��	��@M�_ @LZt4<Eh@O����@RL0�a�@S]�K 4@R#�޻��@Nۆ�	S@J'%T?@G= �@F��c@G��:��P@H���Dt@It�<>�@Lwǫ�q�@P�<�@Q��;�@R�!�?!*@S�U�e��@T��^\��@U�~��@Uur�!@U��.!X@U���l�m@U~U1;L�@Uo-	X�w@Ubĉ^;@U�&��aa@Vk]d�e�@V� ��P@We=�R�D@W�m�y��@W��]�k@Uܯ��'@P�;�E;@P&�Fd��@R�N�\�c@P D�w@N�$�v�@IQ
,@FL:5fx��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@Hp�f^u3@E�Y1��`@L!bϴ�@P3&[˓@Q�%��z9@T�}"��w@V����e@Vq�\�@V�h	���@W*7ѧ�l@Wk��oS@W��/C�u@W��d�C@W.����@Vp��Z~U@V�����@U��@���@U�4e¬_@U���@U_R�Ի�@U;�t�@Tc4]Q�@R�u��4@R��r��@Q��9��@Q�����@PųfAUc@Prr[�@PD�ȶ/�@Pn���1@Pc� 	_�@P��W�@@P��w/�	@Q3ސK�u@Q�,4��@RvLQ;'@S
�@3U@S\�1�"�@S�K�Z�|@T3��@SVO�,<s@Q�N����@OƉ�Zw@@MJ�K�\(@K����W	@N��iF<�@R
-C,'�@S_WD��@R+Sw��@N�8uh��@I�3f,��@G�	hje�@G\����@H.+���?@H�@A��w@IG,��@L������@P%X��0�@Q+OL�,@R����y@S�Ӑ'@T������@T�٦@W�@US��=+@Ue3?S��@UQ�X3ֹ@UNk(aZ�@UY'�/��@Uc���[P@U��S9@VI(�H�7@V�6a*�@WJ��L�@W����L@V�e�ހ)@T�ҟeF�@Q�s��@R	���@Q�4O�w@O/���@M˺+A@Ih�����@F��{�:��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@H�[�pJY@F�ق+��@K��2c�P@O�P7)�@Q�D�� @T�|�s8@Vec`�P@Vny��1@V�xS��@W7�� @Wq��W�@W��,b�@W��wu@W%����k@V�_m�0@V�ɀ��@U��5M�@U�R�D@U�H���(@U�+���@U^Y�"�3@TF��y@S������@R���6�	@R)	����@Q�?����@Qe%q��@P�l�6@P�
Œ@P� �bE@P�YS1@9@P�ʉ}@P�w�]@Q�;���u@Q���aL@Rb-*�@R�w4m�@S$�
@S�j���i@S���Y@R�D� >�@Q'�<��@N۪��[X@K�c�]�@J�V�]y@N��sk@Q�%kCB�@S:ꂽ@R.��30�@N��^z�@Jo���`�@G���ԯ�@F�0��@H:�����@I+�LA�@I����@MQJb�@P�n�/@Q��GR~�@R�+&�@S�G��p'@T����E!@U"U�T�@UD�u�x�@U^2n�P@U7ct7��@Ul,e�0@U^��r�@U]�y���@Uޛ&��@V3�S<�{@V��FAG@WQH�jf�@Wr*2�O�@V���@Ts��vM@QU@؝.@R�0�$@O�	|�0@N$��#s@MD��#@IU9`^��@D��D�B_��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@H�����!@G�n�P@K`|�$i@P��؛@R��1�@T�!�`?�@Vu��RG@V{���1@WM8LG@WA	�S@W{���\\@W���.l@W����^�@W5���(@V�"�S2�@U��ô�p@Uu�M�%@Ub�pw��@U����=@UNb���@U'�*�	2@T*���@S����9@Sq7�9@RT5E�Z@Q��)�M@Q����8�@QP��X�
@Q �:���@P��|#�@P��9M@Q�y7�@Q\l�G@Q�t��s@R��e@RK��9@R�q��I@SkV��@S�l��b@S�.�gA@R�ANL@Pp�b�3@M^��NeK@KV���E@I��Z�e@M�R`��p@Q�J��@SWB��@RE~ԗ�I@N�̇�l@JP��s@G�<?�g�@G.X H@H(V����@IL�2��8@J`(y�N�@M�@Df@P3&/bn@Q������@R���J[�@TTC��{@T��N�@U"څL�#@UIcY��@ULV��_@U r�"5@ULכTV�@UI�a�c@Uv�|�<P@U�~u�1@VgG6L�@VɈ|#�@W"�� �@V���9��@UTSz��@T	�/�@P�}0.��@P�7�j��@N8
ߪ�@M��XuB@L���@I�#8�"@EKR����8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@I@,��S�@FL¥��<@J�3����@P/�t�1@R ���)�@U
ݰ�۝@V��j=�@V���p��@Wd;'Y�@Wc'A�T@W��c��8@W�{NGdS@W��*�i�@W2+�f��@V�'bfY�@V�l D�@UaY<P	7@U!�w�\�@U/9S�;Q@T�����@T����@T@�P�.�@S��^�1@SFM�j@R�S��@RK�+q�@Q�Z�&ʫ@Qs�v�.=@QW{�E@Q����@Q�f9j	@Q6��	�@Q������@Q����@R-E7N�@R]q�R�@R���я@Sy�F�)@S��t�5@S�l`�Q@R>��l�$@O��&ٴ#@L2(�
�k@I���>\@Hh�����@M�� {	@QR]n~d�@S
�����@RO� ��@N��U#&{@J`5��Ճ@G�i�& �@G��q�lc@H:�޼�@I�,I�\@JY�~Kc@M����@Pk"�/@Q���D@S(�:���@TGu��q@T�~��@UC8�~��@UiP�2.�@Uo���S@U1͙F��@U5��f�W@UI����@U�T��0�@U�@� @V}�Z��@V���,|=@V�#��w@U�o��9P@T���:�+@S57�C@O�i�%�6@O(H̸�@L[�n:`@M���@L��6D@Ix�ɰ>�@Fi���Ju��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@I{}�KY@E�E|��@J}�r5E @PF�׭�@Q���R@U!�x��d@V|+5_��@V����@W&[�i�@WyDD�8@W�r�>`@W݀y+%@W��=��@W9=�:EC@V���@V���@U�ǉ�}@U�hj�@T�EA��@U����a@T�m�(��@T`$��,@S���I��@S|B����@S%�^e��@R{�jV��@Q�ܗr7@Q~c�}@Q�R�.�{@Q_)�r��@QO>D��@QA���c�@Q��ݤZ@R�r�s�@R7����@Rvt�z�@R����@SY�u��@S^���\@S7� ,�P@Q��/��h@N�6�R�_@K����� @I4o��@G�~���g@L1�I��@Qa���X@R���˺@RU��cfU@OWh��?@K�_�X�@H�R��ڋ@G|����@H�(g_@I�1�#�@J�{��H�@M�}��`7@P�}���@R
����@SK���ū@T<(���@T�{����@U6�+z��@U{�$��@U�(�ۚ�@UcI����@Ul��,�@U}d��\�@U�Y9"X@V�Ex@V[\�Q��@VK�鼽@V���Ǉ@U{�4�1@S�"jgN@Rb�Z�$@M�Z�7�@N��@@K� ��0@M�5��X@K���@Ix�N�;6@F>�P���8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@I����G@E��C�#@J["��@PNl���@Q�O�C��@U'4���@Vp���F�@V���N��@WE�6;J�@W��iR�8@W�B��s@WߎH"`@W���@WK>d},@V����5@V;ق �@U�p�w@UO\�c{@U"�<?��@U4�$�߬@T����@Tc]��@T�^I�[@S�����@S1��v�@R�8��@Q���M/_@Q���B`#@Q��I�.3@Q��ш��@Qz��y��@Qh�d�@Q�v�_@R)e'�@R+�D���@R��׼j�@R������@S5����p@S�NE`a@R��͇d@Q�"�9@M��X��@J_"�y�@Hp$f�}�@F�^Hw@K�[s�Е@P�j�B�0@R�hQ�1�@RS����@O��q�0@K���Z� @Iy|q��@G�_�d�g@H��k��E@I_I��h5@J���MǤ@MgN2�sh@PV"���@RS�KQ�@Su���&�@T,�{�p@T��X,��@UF���u@U��5`�@U���f��@U�����@U���<@U�J~ @U��uH@V3X5�˹@VS�����@V ��;�@V�GEr�@U;Us,@Sh��V�@R5ҟ/��@N�c��y@N��7o�@N�J�f��@M����ѓ@K����@Il��_�r@Eƍ+]�A��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@I��T�@E�?��@H�SKW��@P�L�@QLTq�:�@U]zg�@VT,<�@V��%�]@WS�G(h|@W��<�ɨ@W�U�H�9@W�Lr�(@W�Q۰�@WZՑ٬L@V�eH+��@V^���T@U����a@Ue�7�ߛ@Uf���t@T�Je���@T��9}�e@TZ8\�	@T��zV�@S��ڈ�@@S9���@R�mS>2@@Q�$S у@Q��2�}�@Q��ƙ��@Q�l��N�@Q�zn�H�@Q��C�@R)��#@R&��t@Rf�ݓ�D@R�L-;�@R��'>$@R��V9,@R�x�@R{^���@P��\�@L|����e@I�}Z��@G�7��@FT�SF�@K:k�' @P��]��@R��8Sx@R7�]�@O�xM�@K�� ��@I�ey���@H�g��@H���h�@I�����@J�����@M_��<C@PR�L���@Q��=d�@S8�R�W�@T�#��5@T�T�@UK��@U��ҖYs@U�mWKp�@U�6��Lw@U��"΍@U��	�g�@Vޒ�9�@VQ�^G��@V{&*��@U�([f��@U�fڌ@U�vz�@R�>=�X(@P�s�
s�@OA��$�m@Oh�Ї�@O���*@O�����5@KV��ɮw@I�l���6@Ea�������8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@JI셍@D�\ "yA@H��iu@O��.�S�@P.����@TGb�Z*=@V%���%@V�;�5�U@WP��[�-@W����@W��b�y�@W�y��@W�x�)�@Wz�	�@W�B��@V_�;��)@U��hP��@UrR�:�l@U)�9�+@T�/ywC@T���8�@Tk.-�v@S��Io�@S��ՆL@S'�@R�n4�Y@Q�����y@Q�N�X3�@Q�:&��@Q�KZ�4f@Q���1Ň@R&<ܹ�@R4
��a�@R;��&>�@Rs���%�@R}f���|@RȦ|;�m@R�,iz��@R��ё�@R1p�f<@P3�ɥ��@K��Zpr�@H�?��f�@F�w��@E:q��Y@Jm����@PO^S�[@R���=@R>��%L@O��Tb�@K������@JXp�A�8@H���)�7@H���6 @I�^B�$x@I��'Ę@L��K2=@P��@@Q} �l@R�6T�MH@S����;@T����'@U:0a,��@U��[	�@U����h�@U���{�@U���bd@U�t�3@V	���kk@V_����@V�)�yF{@V}&*=�@U5ôh@Um�2	(@RUzV���@P���/c_@P:��u��@N�1��@OCf�Q��@Q-�
ې'@K�zb@5�@I�FYX�J@ET�Do�y��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@Jbr���@E���E@HW*)��@P(2��y@P���+�@S�Sh�c@U���f��@V����`�@WSQ��@W�-�+��@W�'�A[@W�#�^l@W�m�f�@W����.@W%��/��@Vr�)�=@Uɼ����@U�/�_)@U��hYp�@U%`f��c@T�ʩT&�@T\H���@T��3@So��@S)��t.�@R�o���@R&J�Bs@Q�G�1!@Q�w�ļ�@Q���w@Q�	��@Q�i<'#t@R'��B�@RJ�
`b@Ryd���@R�g �!�@R�ӒU�U@R���7@R�0S�?�@Q�C���@O�,��*�@J�/4�@�@H�|?��@FP��@D}���@I]XT�@P$O��@R�]��|@RZ��ȿ�@P���ah@L�ɮ��\@J�� �rh@I�J/ �@H{�"��@H���r�[@H(oX�XP@L�m�$q@O� ���e@Qr�-�I�@R��B2��@S�g���@Tfv3]�@U�����@U��k9V�@U���$5@U�t+�T7@U�P��`@U���F�P@V��5@V;_�s�@V�����[@V!��<��@T�}z��@T����@QҘ��X@Q!��J�m@O磓:@N�x�*�+@P?�{�:F@R.єI`@K�t��@H�p�
�t@Fx�`\\6��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@J�&]3�C@HB�����@G���.��@Oôs�@�@Q_�H�rp@P�����@UdP��)�@V��#��@WS˭�@W��ԑ/K@W��.1��@W��*�=@W�^�N;@W�����@W#揌a@V_e�L�@V#�Q��I@U�̍���@U�Z�T�M@U� ���@Tܚ���w@TX���s@S����@S�s�Ӏ/@S<��=�@R�CGR�@Rm��!��@R!�>,[q@Rn�z�@ReMR��@R�@Vb�@R�i-Q�@RE�ms�@RE�MnG@RG��� @R��'�`@R�X,��8@Rs���x@RQ�J�X�@Q�K z��@N��%��@Jy���N1@G������@E��Z��@Dp��`�@I8No1@P����f@S�����@R�Ôb�@P��n��@M�\y;��@K}l����@I��E�;w@H5)@���@F$�Q@I$�g�Z]@L�:��@OA� ��@QU>�3��@R��t�A@S�lv�@T`����E@T��=}@U��eb@U�n����@U��fT@U��s���@U���ٽ�@U�C��Gt@VQ�Ț@V������@Vx�6��@T�	��.@Sʢ�)�@Q���gk@P�����@O���*�U@M��G��@Q,����Y@R��N~�e@L(����d@HC��	@EŽ�Z��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@JĖ��e@H>ROu�@FzRA��-@N�_��@Q��>�@L��?@T�uxP�8@Vi(e�@@WY�ѷ9i@W�/��_|@WѲ"�@W�%)�E@W����@W��ۿ�0@W�҄��@VkOL���@VHU��y%@U�=�|�@U�J�� @U��]*�@T�G�=��@Th��m{<@S�Z�W�@S����@S[���u@R���q!@R���m��@R?�z؇@R %]o�@Q�s�ż�@R��*@R#�ɖ�k@R,e���@R5�}�ߴ@RQϲ�n@Ru�[r3m@Rc��T�@R9�mK!'@R
�jE`@QU�01}@N) �v&w@I��ክ�@G���ô�@E�YGpl@C�p+9@I��g5\�@P3l��@SU�q�K�@SUO�G@P�&��1'@N��A���@Lk�nœ@KO�rȆy@HA��U�u@Fv�xe�@J��2c@Mz����@O�����@Q3���@R��b���@S��K%l@Tt��˹A@T���@Ub�ɐr @U�爃C@U�1��,_@U�4��@U��?�ٵ@U��#$�@VV$�d'�@V��b�d@VΧ�<>@U�*����@S��9m�@R2&1�-@Q^j5@O*��ѝv@MonuAҬ@P�]�J]@R櫮{�a@L-�#��@G��#m@E'k;�c��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@J�س�@G�3z�@Fi-����@K���75@Psſ�]9@Kl(���E@TK�V��@VB�E�-M@WO�����@W�uP�}@W�֨�7�@W�Vo�@W�kVD @W����qU@W
�{�V�@V����@V`a/*�u@V�|7Z@U�n��@U~�ht�@T��!�{@Tbl��x8@T�#�<|@S崸��D@S^�O�:@S@��@R�-f8�@RB$M��@R ��:@Q���^2k@Q����@R�Eصh@R����@RN�Isc@R+Q _@R^?k3�'@R)	�w�c@Q�wl�@Qt$�+�@P�Q���3@M7S�@INAv��m@G��5`�@F71��@@C��0�Z@Ij+|¿�@PX4���@SwF,ADA@S���"@QC3��W@O^�Q~�3@M�|3)g-@L�d*��@K؄��"@K�����@L~o���@NuN��a`@P�kL�3@Q�_"�C@R�����@S�5���@Tw���O@U����A@UZ�YjX@U��&��@U��G�@U�W�Hbk@U�ؕ8`@U�30�@VY(�Pzy@V����@V�k���4@U�����@S�1H^l[@Ri@[`:�@P�����]@O�aVW�P@L���J8�@P) ���r@R|��@5@J����\�@G��b��8@E��$�w<��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@J[A!/�]@FK	�5��@F���|@In�E�k@O����@K;�%Ɯg@S���1@V��c�k@WG�ׁ @W���`�@W�l���k@W�"��{@W�<m�@W��~�۬@W21��/A@V�E�(U@Vy*��/@V2��qD�@VBf�P�@U�&~�@T�3���@Ts�Ƒ@T"��@T@4,�H@S�1�%�@S�5+��@R�$���@RR�Zx�}@R(K87��@Q�c��8�@Q���@Q���4ˇ@Q�s�sS@R�kL�>@R
5PA
a@Qˋq@�3@Q���=�@Q����@Qݙ�S@P72�i�@Ld/�#@H?��%>@@F�U��@E͓�Ux�@C�����@IŤ��`@P[�DL�@S{��.g�@T!3� gQ@Q��4�S4@O����@N���I��@M��-�|8@L��w0@@L~���%�@M�@q�Q�@OM1�`� @Pp@��@QNfܣd�@R�PG�n�@S�����@T�#A@U*M��@UK$Y�9�@U��|mu�@U�h�d5�@UЅ_��@U�K�u�@U�r��A�@VO5Hz@V��cl�@V�±���@V9�2�@T>%9	V�@RƉbar�@P�i��� @P�o�.�@N.���@Pϝ�:4@R)�>RL"@Jy�Qa@H�}��У@D��X�~���8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@J^W�c@E�k	<��@F��vs[P@H�~���@M�*fin�@J�����0@RL(ˍ`0@U�($�Jm@W9PY��@W��d@W�=��@W���ZdU@W���)c@W��R|u�@Wg~�Y��@V�}VpQ@V����@VQ'�Ћ�@V?%�L�=@U��\Ĩ@T��z��5@Tt��@TP���}�@T$�N��@S��嵲K@S8���N5@R�*I�ؑ@RBE�<�%@R
	Gx�@Q�Z�I�@Q�S�_@Q���a�@Q£���G@Q����@Q�u���@Qjb�3(�@Qn�]�/�@P��=��U@Po�{�
x@N�ŧ�@J8|���@F�ٝb�@E���C@D���`��@C`��@J1�V� @Po�PF�@S���g>#@TG�����@R9!z�@P4ޓ��W@O���}@NS��	@MN�N�
�@Mz��5@N�5�O��@O�_�R�`@P����{@Q~�6̵P@R���;��@S܆���_@T�Z���@U`�Г�@Ua���@U������@U����e@U�rx���@U첌S��@V*�=}q�@V^���aO@V��Q�q�@Vۮ�J0�@Vб���,@U�lǃ�c@R��
\�
@R%�l@PQ���4@N�^����@O�@�r�x@Q�L�8�@JO��H@Itʙ�J@D�D^�E���8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@I��+_;@F� �(@F��#E@H��m	G|@J�(>�P@IeG���@Q"����@U�����M@W.`+�@W���-��@W߶�r�@W�83@W��j~�@W�&>��K@W�S�)@W�u��@V�jA��}@V�����@V;��6x�@U�3��@T��o��@T�����M@TX�)@T4o�o>@S��u+{@S:���7@R��iopG@RQ�G��@Ry-Gs@@Q���{8@Q���
 �@Q��o�X@Q�����@Q���f-@Q|�C�@QE��8y@P�Ns�@5@P8�u�[;@O*ޤ9e@Mf#\��@IU����@E��`�KO@D���@DA����@BI�)Q�@I�!�(@Pw��@S��<m�w@Tf]�y��@RS��q�@P�3c�@@P�I��L@OCܡ��@N�7����@N�P�r	@O�����]@P5�Y#oe@P�� Q�@Q��,(h@R� �e'@S�'�a@@T�$����@U5@�MI�@U�Ӓ��K@U�4n�g@U�~��@V|"sO%@V!�Qʗ@V@m����@V���E�@V��haB�@V�b�gl�@W�C���@V�І��@T:���n�@P�:��ǉ@P���_�W@N�i���@N�$V�h@P�!}�ї@Jp��6��@I ����W@E+Z[]<��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@IY�V�@@GoGZ�>;@F|�`p�@H��㓰@I��4�@I��t�S@PT�.8o@UO2Z�i!@W �Pʯc@W�7|��@W���[@W�W�l��@W�&�fm@W����P[@W�ݏ g�@W<؜LP5@V���D��@V�T�h�@V&�4�&o@U�=�'��@U)�cڀA@T�?9oPg@T�j4�@T:ߊ|@S���aQ@SHȃ0Ŏ@R��3>�@Rs�ȊS@R7X�w6�@Rn}JKO@Q����=@Q�9TZ�s@Q��,(�K@Q�AAʖ�@Q^�=�@P�n���@P�@�1��@O��S�Dk@Mv�xSM�@Lv�g\�@HO��B��@EC��4@D;|/�'@C����@B_�o(@H�����\@Ph�ޛ@S�a	�B[@T�<׊?�@R�U���@P���Ł@P:z(�T@O��%.@O�ٯ�?�@O��=��@O�Ds��P@PNQ����@QB��M%�@Q�Z�y�@Rۯ����@S���%�@T�S4���@ULjd�v�@U�\|P҇@U��o;�'@U��F>��@V3
��@VR)cڐ�@Vd��WK@V���Q�@V�����@W
TI��@W�Z��@V�Z��C�@T�!�-�@P�X���4@P��ƈ��@M�J��q�@M��A��@N�@��\>@J}?,B��@I XER��@DC^D����8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@IMe�_s@E�aI;��@FaUQz_@H��i��@I5}�k�Y@I9E�#)@L�z��=@U� 3@WI�c@W���tL@W�<�d�@X �0m�O@X����5@W7�)@W����@Wp~döq@Wa�" @V�w� +@VF�:��@U�lRZ�@U(�Gp��@T�!���m@T�̃P��@T7���@Sˇ��͏@SRiTh(!@R���P�@R`HI�L�@Rj���T<@R"�R��@Q�m���@Q����?@Qm��:3o@Q[�J�',@Q/ɴ�e@P����w�@PŊ�ҙ@Nzn��\@LOڀ>�5@Jy�Y躡@F��.l�@DZ����@C��q�<@C�W?���@Bg+��t�@I<����@P~j��@S���ӳ�@T�A��;@R�5ˈU-@P��U�G@P� �A�+@P���l@P�B5�L�@P9]hh�{@P=��-��@P��6�@Q�ҹ��}@R;A�{��@R܅\L��@S�\�W��@T��~�%@U^���@U�o�;b�@U��qe@V�����@V0ǳ6��@VN��:��@VwEIZ�@V���2��@V����@Wd��}�@W���@V�g(o@TL�<�7@Q&I��0@PVT����@M(�YD��@M��/Ki�@N���5@J��oHU�@H��r�&�@C���j��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@IhK���@@E�Ⱥ��@F5U�x�+@Hz�m@I�_ft@Iq�gm�#@KQ�v�@T�&��,@Wx���@W������@W�2sc��@X�v�1�@X��V�@W�q��p@Wߑ�e��@W��\�@WuSw��@V��1]�@VU~�ƌp@U���r�@U&�| )@T�D�¹@TOތó@T4�U�k�@S�b�p�@Sq�á�@R�m��8,@R����@R�	?B�@R%<g��E@Q�}P�Je@Q�~;.��@QS��sj�@Q	�&�?�@P��C�uP@P��U�@O$w,��@MǺb�c@K?��3��@H"S�c/@Ef�L���@DS ��k@C�J>�]o@CdH��C�@B"Ju�o@Iz!À��@Pm�e�@S����Wo@T�#�9�@Rӧ,��@QL�p���@P�v���@P�9���@Q�r�J�@QzPE@P�}�I@Q	��A�@Q�؋4�@R�����@S#{�H{@S�\�e*�@TwaEQ`$@U6Ģ-\�@U�>���@V����@V:8��@VC��R+@Vf���o-@Vvs�a[k@V�4���@Vˍ�(~`@V�Tm�}�@W 0z�:�@Vє�6I�@S���C�@P��G�I@ObI���@MN�~^@No����@M�U�Dq@J���pK@Io���q@D6�A��	��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@IW�,��=@FQ�h��@F
ҍ��@G�g�Z'T@H�=t�M@H�Y
jX�@J��@T��>5�T@WƗlw5@W�����-@W�s`�#�@X���@X �3��@W��r)�@W�t,�k9@W��h\�3@W�s��s@V�&w#I�@VO�`k!@U�w|>@U$Kx��@T�I�"�@Tk�����@T?��(�@S�����@Su��R$�@S�a�Q�@R���:��@R����@RZ,�o@Q����v�@Qc͑k�c@P�9Q� @P�]�D�9@Pw���@O��^�r]@N��_[��@L�'�?�p@J���u@E�5DT�@E�hEe��@C�n��/@C��w�y�@C�7�s@B:XX�)@IAN�5@P}�o� �@S�<٨�k@U~D��@R�
�KE@Q��U�#E@Q��gx[@Q0,a�=@Q�����@Q��ϰ!�@Q���R�@Q�]��Z)@R)�ɣ*�@R���ޅ@SP�wεI@S�㟁�@T��Lp{�@U?j�1�Q@U� ��L�@V3���{@V�1J�@VM���[@Vn  *�p@Vg	�7�@V��j���@V�7�6�@V�l��@V蟜a�+@V�K��@H@R� ���@P,�:|T@P�mz��@M_�9���@P�B<6l@M��˂�<@J�wOy�@I��"��!@Em�x4��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@I~x�4�@G��>��@E��0�@Gcn՚�T@H#��@G��C�_�@Hu:v���@T�~��R@V�ؙLc�@W�u��@W��F�>%@W��2�D@XuA~?@X �$���@W�ܠ���@W���z�t@W�64pRt@V�y�n�@Vx"�D@U�Aa��i@U!��AR�@T����y@TN�}��@T>v���@S����@S��j�@S2fݕ\$@R�2���@Rwn_�d�@Q����@Q����@Qg=�r�@P���{�@P)>쎜@O�����[@N��>�@M��,t
�@K�� K�3@IrX��@G�q@E����4@C�'�T��@C!ӫ펹@B�=��@B`�lG�@I��#n@@P���u�>@S�(�S@U#)#�@S29z��@Q�OzQ�@Q|#Wv�@Q���Ԕt@R�I���@R $(9�@RBn� ��@R*�֯��@R�!R���@R�{��@SU��GW@T��8��@T�c��@@U'���@U�>E��9@U�W�](�@V�*ŀ(@VGN����@V[lDmu@Vdmk��@V�!��p�@V���m(@V�݁
O1@V�mZ�ū@U}�7�9�@Q�w���1@PV]M�if@P3EJ�i@L� Y�6�@P�Ŵ���@M���OQ�@J'��b��@J��Gd@F~�;�����8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@I�I~j�@G�?}�@E�I;S�k@F�� �`@GM�@{ @F�����@Gt�.wb�@Se-m�zq@V�B�u@Wò��÷@W�#�:@W�h���@Xpݢ��@X�eǨ�@Wݥ��X�@W���Cp@WAv(a-@V���t� @V�TY[�@U���x@U.�qn��@T���{*Y@TLA���h@T,zFAO1@S�A�u��@S��`��@Sg����i@R�f��1�@RY����0@Q�L�;H�@Q_<r@��@P�>vZ�s@PfJ{Ɋ�@O�q�l�@O��^�@N�r"kx@L����e@K�r"��@H��R˧@F8B��B#@D�h wE@C�.Ao64@C�h�2@B�f�,ڝ@B�[��@J,�I��p@P��K��@S�q��"@UN�e�@Sq5n�l#@R�8q�@Q�$���@Q�-���@Rh:�)@Rxi=/�}@R���Y�@R�IQ(�@R�6#��@S#�T��9@SdkTzd�@S�^�O@T�kQ���@U�d@U@U���7%�@U��V��{@VP��{(@V:{���E@VTv�~�@Vg����x@V{��4��@V�e�0f7@V��,�9�@U�V�%A�@TB���
=@R.�n��@P��E^�7@PE"^0ę@N4��v7�@P���l3�@L��p,@I�<�q��@JM�v̆G@G=H�����8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@J	ۅ�Π@H*�F��@E������@FmIb+�@FB*eV�@FC{��I@GT;��x�@Sy>���Q@V�DгZ@W������@W���V�=@Xn����@X�Xo��@W��\�l�@W��ϣ�@W��y�|�@Wyep�@V�vMa8@V�P]X�@U�<��@U+��U�@T�֭�D�@TV3�门@T6����@T\�
�@S���B��@Sb��ȩt@R���Ϛ�@R/��t@Q���%�@Q!c$e��@P�p����@P&;��t@OCƯl�g@N;�)��@M]�\���@L@���
@J@�@J�`@G�",x��@Eym4@D�+`$�@C�m��@C-��"C@C��|�@C�����@J_��V%@Q"�RPm@S�e!�:@T�'�	��@Sa�s��@R149��0@R<2S��@RR��@R���@S&�w�5@Ss[t�@S�#�Z@SNN
0A@S$&���@Sm(���^@S�a���@TM<�o��@T�`|�-@UX#�|E@U�A,׼P@U�����@Vt�g;@V+�@�9u@V]<�@V^9��k@V_.v�`�@U� ���@Tǩ���)@TBr�2*@R $�ͯ@Q_����@P�G����@OK�Z;�Y@O�`
r^@L90)^^@I��� 
g@J�+���@I0.˵���8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@J<����@H�ږ]m@E�pJ���@E�v����@E��W@Eߋ
��@H,���|@R�<s>-@VX~I�>[@W��p��@W���c@XaX��@X ��Rw@X�6^�@W�[�c@WΏ�e�@W*����@V����a�@V��+���@UԠ����@U*.0D$�@T�Y��$@Tm[��x@T'd���@T��D��@S���@Sgy=�9K@R�ߴC&�@Rhrx�@QJeE#��@P��C�w�@PAAuy\�@O18���=@NLu���@M��a<�@M-~}`�@Le_�c@I�N��h�@G��~�@Ec����$@D/j��ݛ@B�bT�މ@Ckj�w7@C<4�;@$@C�ʸ�й@J�C�a�@Q#��@y@S���Ȟ�@T�4��:@S�A}$B@R�o� H@R��jP�@R՛��@S8AM�@S��n4m_@S�8��@SU��\�-@S8W�n�@S F�)�@S]	�@Sw9ڀ�<@S�.P��@Ts�,\�@T�~�:�@UT�ɾM@U�?O��@U������@V!�_P�X@V,)���I@V�On� @U�
c�` @Tq����@T'P��e@R�ݡ$�@Q��%Z��@QW���Re@Q'Om/(u@Oq�zMd@N�	�d�@LTg��<@J�����@J���.�@J�ŋ���8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@JE�3��u@G���:M@E�%dT1�@E�%���@E5R��{@F+��u%{@G��K̸@Sm@o��F@Vm�D�@W����k@W�l�s(1@X��y<@X��[)�@Xp�)E)@Wۗ�u�`@W�{!��@W8c�Y@W%��O]�@Vz,I~D@UӾli@U-�I��@T���e��@Tv��|�@TD�t�̏@T
]�s�@S�%e��7@Skj�GJ.@R��h{��@Q����r@Q }�x.@P]�w��@O�R�S�@N����+)@M{T���@M-c��G4@L��>�I�@K�`��W+@I�K�k��@GCB�bv�@E*��ٿ@D ~A�Iu@C�@Z�@Cf�KP�@C��fo�@Dc�|�@K,v]N�@Q&��?@S���9��@T�����8@SԮ����@R��觰E@R�0fG�@S<K��f�@S���h�@T���@S�_�C�@S��'�1@SF��3/@S%���@R��y�:@S�S��@S�[UOG%@TD��@TK 
�D$@T�md�@U9�Fƌ�@U�^�+�#@UÎ�5�@U�#�w�@U�Q!���@U#8�#q@T5a���@S���(��@R��	��@RA�(�`@Q��"��@QVO1`�@OjoZ~�@L�F�6�j@MY�>ʧb@J��;CW@K^J,�9@K<t������8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@JN��@G˾4Op@E�h�H�?@Ey�p�,@E1�L��@FxEv���@GI��uy�@R��p&�P@V)��� @W�XTaZx@W�&U��u@X���x@X�
�Ӱ@W��@Б�@WШF^��@W�)v���@WC�"�t@W1-��e@V|Q�Q�@U����@U4�3ii@T���J�@T�g�Q��@Tb�q@Tᨅ�m@S���}�@St=X�P�@R~iR�@Q�9�K�@P�`� @P'�-k�@O����{@M��+�;@L��e��@LYڞ3�K@LM�'2�@Kb�`�@I�y�H�@F�_	�v�@D���^Ug@D��i�E@C�n�9�@C�>�Q��@D�ޥ2�@D�K��@K��_@Q��қ8@S��wI*X@T�/D^�@S�ێ��c@Rԡ͆��@SU��A@S9<ޓ��@S���8�@T*���{@Tc���-@S�Nw�#�@S/d����@R�LD��@R��"i��@R�nt�ml@S���@Sk�8Ts�@S�źN��@T�)�9+@T���,�@Utc�ac@UW����@Ue�Yܡ@T�y��\@T.`�8)D@TM��
=@T�.9s�@Sp� ]_�@R�s�.�@Q��Yx�@P���9�@N��2��@MLJ�Bp�@P�0pE6@J��њ`�@J�e���@I!<J~u��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@JP�7��8@He�#�K[@E����Lo@Ea��`��@E_���9@Fڳ+=�e@H̠X�@PPL�O�{@V*9��3@W��>�Ja@W�Er���@Xc.�/ @Xe4+�@W�	��F�@WԻ�vl@W�͸��p@WO��VW�@Wf�;@VY���[@U�`	�k@UGm�;��@T�S ;U@T��Kv��@T�m��9@T/��{��@S�H�}6@SARtO@RH��h�@Q/��7,�@P[�!@O�d5��@N\p��@L�{��@K�m�{x1@L�DBpA@L�^�*�@Kt٤�(@H�㬋h�@F��p���@D�~��@D5��Sm)@C�.\h�M@Dj�z�2@De9�H�@E]5�7�@L|9�D�o@Q�2��c@S��Y1k@T]�o_!@Szj�"��@R�aї�l@S!��,�@Si�5c@S�J\P��@T"W.���@S�;�jx@SpGe|�@R�
k�[�@Rg�3��"@Q�)<&h�@R()	��@Rn)1�(�@R�;��@R�j�%��@SS)��l@S�����@TVn����@T�ҶIK:@T�� �R�@S���a�@S{��#C�@S����@S��D��@S�(�Y�@Q��{���@Oʮ��Y�@P'�-��@N*N�Vz\@OC�)�"@O�|�~��@K�U<u�@J�@�0K@G�A������8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@JH���R1@HW��{O�@F1��`�@E`�,�[�@E�g�M@H#d�\�C@I.�����@QFְxh@V2�����@W����I�@W�q9Y�@X��㇧@X�S@W��P@Wґ��m@W�`�ì@WZ'�cgQ@V�ּv7�@V@�K���@U����"�@U7����|@T���_@T��3��@Tb)�9RN@T���@S��֡@Sp�N_�@Q�{��:'@P�J����@P8R��@N�6�Q��@Mk����l@Lq�QA=@K��E�@K�x��l�@K�cxȷ�@J�-�@��@HpI{���@F�;�{��@E�N�7�o@D�S����@Dn����@D|�Ja6�@EO��V8@EÅ��@M��"�M@R7���(�@SL�7@T��3+�@SN�IS�k@R�w;d;@SNv,u@Sr�T�l�@S�����@S�Z�y�9@S�d��-�@Sk�(�)@Rwؤ{��@Q�)�rE@Q]8Ӄ|�@Q֧��@Q,���`�@Qd�pA@P|;��p�@Pm�=�L@Q�&+�^@Sb'��@S�5�@S�>��>@S�`H�v#@S(�����@S��4�@S�,z��V@RbbP��@R(%�	@P�'p�@P��{�S�@M�ġ��a@P���&�$@O
�(AhS@PP�q
�@N�Q?�N@Ip�?����8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@J\�%��G@Hc��;H�@F����*a@E��Sؘd@F�yJ�@I�r�P�@I��V�S@Pk�b�}@V?�Z��@W�v�@Xt��)@XV��@W��$��@W� �T�+@W�b�^p@W_{��O@W6�F1�@V�. ��@V���@U��p�/@U5�$8h@U���S�@T���H�@Tp����@S�-��@S�q�K9�@R۔�e`@Q�M`�@P�hD5�@Ov���@N�_���@L�,J��@K9ڲRh@J�i��S�@Kd[����@K;;�}�4@JP�%h@HyUS�w�@G&��ƣ@E����@D�r^�_@D������@D��3�@Es�4���@Ftf;@M�����@R_唩ȉ@S��c��n@S����'�@SR�,�u@R�r�!D�@R�Ay�	@SI���N�@S��Sn1�@Sй����@SXG���@Rj>Ė`@Q���̝w@P�d11�@PKvi���@O)V!�W@NTq���-@Lc1���@L�|��@N�R�[�@Qt)%~>@R�މ|�@T/HQd�@Ta����@S�$�@S�@Y�S@T�|vY@S�2�.�@R4���}	@QJ~Zޙ@Q@�5��@P���觢@O:�c��@R�yL�B�@O��T�l@Q�H+~R�@Q'ϴ	H�@L�O+_M��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@J��6/��@H���v�K@G;�UJ�h@F���R�@G����\�@K��͉�i@Ic�*�VH@Q/N8�/@V%r�~O�@W���X�@W����Uu@X
�+Q%9@W�@���k@W�d�&�@W��Z�p@W@��@W�֊Pc@VQ��I4@U��V��G@U\d")�@U@�P6��@U"4�,�E@T���2m@TyUP�k@S�8��s�@S�W�U�@R��8-@Q��=S@PR�R���@N�ɲ�g@M6�@���@Kje�Y @J��X�	$@J�a'�� @K%��8`@K4�8��@J0�J�u@H�?V�@G��m��@FN��T�@E�ј��s@E%�F�)H@E�站$�@F6|�O�@F���5�3@N-K��&`@R+�WYE@S�ދ˨@S�P_�s@R�梥#�@RQ�{݀�@R�ș�E@S���[�@Se�m
T�@S;j��"�@R�z�u1h@Q�:�g�@PwJ�b!u@O>5�\th@N6nV ��@K���h@GqD�(@N���nJH@N!��6�@P՝�� @R�dE�?@S3ʵ�p�@SՃ��'�@S��L
p@T�?mU,@T����9t@S�u����@S0hf�$@R��c��7@Q/M���@Q�f��@O؛����@N�wS;/@Q�0��|@M}���R@P�n��G@Q���@ON@7R�E��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@J��9d$@H���:�}@G�([��@F�T��HL@Hy�^�`�@L�ʃJ��@I2t� �@QscVn;@V��L�%@W���M�@W�o�By@X��8^�@W��m��@W��=�k�@Wp�TF��@W�np��@V�S���@V�r&My@Us[�$��@U/N:��@Un�"�5@U(&L��e@T��bʁ@Tc�^w@S�����@S{���@R�S(N��@Q]�V�Bn@O�&���3@N
����@Li5
�@J�O��5�@J8��y$K@J]/��ʌ@K�3ᩰ@KY)�|`a@J@��q�(@IaU%OY_@H��j�@F��$50@FD�b�X�@F.�^�@F����@GT�P�a@G����]@O�yV@c@R�_�
��@Si)Y�\�@R�W,e@RKM���[@R ��ٯ�@R1"��A@R���|�@R�\P��(@R�!?�c@Q��F���@PRy�퐃@Nw�o��{@L2ͧ���@Lgٱ@I���Ա�@GvUd��@Kq3G)No@N�_:�L}@Q�e&�Z@R�``
�@S�k�[�,@TbjL�E@T��:�w@UH����k@T*d8A)M@S�v��G@S�i�@S�n�J� @QXZ�:�@QV���d@P4�q9�@OBzPܒ�@Q���Zw@MF�$�w�@P���g��@Ph�w��0@Pv���r��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@J�+DO�@H�3����@H��SR�O@G��E4�k@Ij���Q�@LN��I��@I�Txkw@Qo��J �@V�f�t�@W�-��W�@W�
zh�@X�+��@W�L=G@W��0�t@Wh�n?@@W>*Cc@VŜ��@V[Kq�T�@UΝ��W@U4<p��@U/��@UG�+!@T����T�@TRA��F�@S�ަ�7C@SIƞ��	@RV�n;0@P�L��P@OD0�"¬@M2�{ �C@K���n�@JjqV�@Iӫ،�@Ju��^]@K hH�@KI�g @J�Խ��@J&)|�/l@I9)@3g@G�{&�S@GE��<@F�h����@G�KW�e@GY��Q��@H|�C���@Oܗ˼�k@R�E��@SB)�aj#@R�c��@Q���(~@Q���WA@Q���J�@Q�d�5@Q��Q]�@QsUA��@P@I1�?@M��jHdY@K
���@H�n��a�@F���V�@D�T�6@G�^n��@J��eN�	@N�����@Q�𿪵-@RxL�3Xh@R��a9!@TnR8�S@Uh��R;@T.�}
PO@R��Q:#\@S0�nqU@S���C@SA�>df@Q�g<su@P�8ci$�@O���]�U@P�V��,�@Q��?W��@P4�uP�E@QVֈ�9@NuR���@P}�47'���8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@J��� �U@I�.�7�@Iĸ���@Hr�✣@Ji{3�@K�k( @H\����	@QS��o�7@U����<@Wy�T-@W����@@W���	ѧ@W�LǴ�1@W��NM��@WK�٠B�@WT��/S@V�jC*�@V�V�A�@VE㿬�@U�悊��@UQ"�.�@T���Q(@T�aof�@TpԹ2�@S�

[@S&����l@Q����@P}Z���@N��"�t	@L�+��2�@J�?r!� @I�*X��@I�aR���@JPL֎��@J�!�0�@K�nή�0@K�3#��e@KQ����@J�a�@H���8p@G��F�#@G��Q���@H��;�A8@H2oބ@H����5@P,�G���@R�I���Y@SF����#@Q}_4쎡@P���|�@P�#4
��@P�b@�&~@P����uo@P��l4�@P} ��@MHd77�@JS��_�/@Evڠ�s@Bg����@@9�f��@D��H^�^@Ghl�fF	@I`@d��@N�5��jc@R}H��@R����>K@Q�Z}Ǣ�@T�E����@U�,��M@S)�2@�%@R���T�@R��Kn4�@S���Ԝ@S
���;�@Q�DW��K@Q8�_w=�@PZ���[@R���!�@Q/�'��@Pw5@�+�@Q�hR��@Olmo��@P�+���A��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@J��7���@I�Eǌ9@J��sm1@I�$��s@K7�]5,@J�1�Մ@G�/9K@Rp�mF@Uty���@Wn�J��@W��X�*�@W��d()?@W��h]�@W�e1��@W>�=Aq{@V���d�@V�}7�c�@V�SZ�ٙ@V(7���@U¨M�Q�@UKz�&��@T�->���@T����,@T�o���3@T'��`��@R�^���@Q����@P0qn���@M�� ��@K���i�@J��~�@INd����@I����@@JP�#�V�@KRֺ?)@L�}�T+@L�V$J��@L!i`�W@J�qAΞ�@I����c@H���;|@H�M&y�;@IN�M���@I�ɫ@I��f�30@P���D�@R��#�,@S&τ�@@P�U�a�L@O����:�@Pa�o�8@O���\P@N��_�(�@N}R*v��@MH���S@I�B�T�@E>���5@@QY��&w@@��(�@A�H�	��@C���M��@G�ȅz�@J#І�r�@P4=b=�@R�w��T@R��2��@R��f�@T=GZx3@S�K��@S"��ֹY@RLO��@S!f����@S���E}�@S��f��=@R|֢a-@P5�%8[�@Q��Y)��@R��hR]�@QYl�u@QH��@R�Oy�@OĳUO_@P�ZG�%��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@J�u�M�c@I�L�&��@KUV��=@J�<-�v�@KiDГ@I������@H�ّ��-@QC$�	#=@T�.�"��@WXiñS@W�A�/@�@W��ܑ�@W�7���@We��9@W��+�@V�e���@V����[@V;$4�V@U����k@U���U+@U;N4��@U��%��@T����@T�%�t/�@T&D���@R�q�� @Q��5�W@O�*kBt@L�r`�I�@J��|5��@I�D��yT@I8��)�@I�q)��@J��8��@K��ygm@M�3y��@MI7����@ME�U�H@K�ʪQ@JO*K��@I噢��'@I�a��f	@J�=M��@I����@JG5�x�O@QSht�@R���$�@R�C��@PM�����@M6���@M���a�\@L|�Ad'�@L��h�d@K�{֔�,@K;ΰ/��@G5CW���@B��Y��@B�B�a@?w��5�@@�����@C�C��v�@H��X<�@L���s@N�>ȩ&I@QH/⨥\@P�
�*5�@Rخ!\;�@S�u�\�@SB?1�$@R毓1$�@R@o�xڄ@S��lށ@S�'q�@R���s(@P�4�HWQ@O�hm�@R���@Sk�UN@QHk�i��@R���8@Q�ݨ?oq@OV�\'!�@R/BB� ���8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@Jb(
]�U@J2����@K��BTO@K�f�=@K �ь�`@H�I1�[@HG���@Q�J�7�E@T�.��}@WO�6U�@W�NH�@Wށ��@W� ����@WQ�Z��@V��d�+�@V܊q��L@V��C�"�@V;�a�@U�G�I�@U��0��@UBM��:�@U�b�@T��EqQ�@T�:Ѭ@T�C�!O@R��-�v�@Q#{)�@O(:���@L5}��@J�&�=��@I�HBM�@I��^�@J-�j䊯@K0�p 7@K�CwU;�@Mp�1ve�@M�`��f�@Nea�ax@Lq��cZ}@K[|��@K-A��@J��@�9@J�j�6n@J��U��@K	���X@Qw
�q� @S<�3���@R�vX�@O8!#�@J���b�@K ��c�@J��@I4�mݟ�@II���@H&�ᥝ@FbG�F-�@C�tʺw&@@�#�݋@?_n��c�@@�^N�-@Cp�Hu�@G艣��S@M�v��)@P��l�@Q���?V@QM����@Rh����@R�����@S �����@R�&�n"�@RS�$T;@TOS�4@So�pUt@R$�p[@P�DB{@P��c�e]@R�pz�]~@R�7nF@Q؍	�@RB��,�@RA�չ�@O�3��@Q����:���8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@JZ�ck�@Jr����`@K覃��@L�~�@J�{
ē�@H<?4���@G��h'��@S�/_@TĨ)�{U@WAۃ�@W�ȏh@W��V%�@W�76)��@W5!`Uө@V獼�T�@V�|�h@Vk�YM�p@VG�1#@U���2�H@UeNK7��@U%wh�\@U���	A@T�D׋�@T�����@S��LI@RZo�%4@P�L�64-@N��W���@K�Q�#k@J�>���@I�=s��@I���%  @Jj�+S9�@Ko?�[@L��鞺�@N;s��X@N���X�@N�s���@MB�$�7�@L>4ͮh�@K������@KoqD��U@K�
�=� @J�=����@Kijg�@Q�s]~�@S��({��@R��,�2%@M�� H-@H�g��m@H��E���@F�&<N\@E���+8h@F:����@D�R뙼@C
��B�@@�A#�5[@?�����?@?j�Dd��@A�d��7@D}���v@F
��@L�\�9�@N꧃�8@Q��ۈq�@R�<[�C@S�$�@R�o��Ԙ@S�<� �@RĦ4FӐ@R1b=r N@S�;�s�@R�C��!�@RC�M� @P��A�i@RB��R�@SP��vŜ@S6��)L@RWB�&Q@R`RK�<@R*$�z @Pz@��F@PMJC���8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@I��)E�E@JX���'@LK'k�͝@M>�@JKZ��@G���e;�@F��A[4@R䔇���@T�1��X@WNў�@W܅ă�i@W�R(�q�@W��CE��@W&�br�e@V�mǚC@V�j�ŧ@VNs�'ȣ@U��N?�@U���Q"�@UH�70��@U
b@T��N{X�@T��Y, �@T�����0@S�'E��@RG~n�@P��i�2@N�^��4x@K�A/��@J$P����@IuN���@I�ir�u@J�'��+@KŽ<��@L�Ӈ�ػ@N�T�%R`@O9.��9�@OL0i �@N&�k9�@MF�a�v@L}Ͽ��h@LtO^=�C@K�G��@J�ei�@K��Ug#@Rhj���!@S��:��@R()���@L�d5�y@F�c ŗ�@E��*-w@C�z�W�@A����l@BR��Y@=莗��@=I��@1�@>w��걡@@�}���)@A3f>Ar@B���D��@Dw���`@DzF��9'@H�/]@L��Ap�@O:��@Q�#:y�A@Rmz���@R�˫�@S�*�n@�@RZ��*wz@R4\����@S�<�#C�@R�B�s�@Q�/ޗ6�@Qc�`�c@R����=o@Spf�_0@S.ct��0@R5�3��@Q�<�f�@P'�t��@N�g�K_@P�lB����8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@Iu�Iw�?@JR_�E�@L#��C1@L��v�@IŽ�V.�@Gr�PQ�@G��	T��@PP){�3 @S\z�r�X@W���}�@W���|��@WǏ� �@Wx��!s�@W�C:��@V�7�@V���:��@VAS5��@U�=o�#A@U}�(�Q<@U7��dx!@U�pۻr@T�i�,��@T�),ȣ@T��P�C@Sc)>��-@R7S�1&!@P��>;{@Nb����?@K�,�|O@I�l��#7@Iw��`g�@J8�rW�@K�k���@LBn�TH@M°n��)@N���g@O���{�@Oo�&�o\@N�Y�D�@M��7��@M1Y�,�@Lɿ��!@LiH�{\@J�Is��@Le�4Ƙ@R՗�s7�@TsD�@Q���'o`@K�'�<��@D�l���@B��DRxy@@�p���1@=����>@<(��R>�@<�n�'@<���r=�@?5eg0@AU�`�@C���o@G�]F,�@F���{;�@E�0B�8@Hı$'�@K��4k�@Nk����@P�j/�!@R$�\��9@R�+I�@S.o�64�@R+rۉ��@SQ���@S�q���@Rw��:g@Q}����@Q��U�li@R���,�@S����z@S��6�GV@Q�ݭ�!�@Qt��f�6@P7SW�y@M����8u@P*������8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@I3҄�3�@I�,$��@K1�C�@Lm��S@I	l$�Ӝ@F����@H�ȍ�A(@K�셧�@R�VQ��;@V���՞X@W�w5|G@W��?fl�@Wz�ރd#@W1�R9a�@V��3b��@Vj9��((@V%b�m@U��J?@UpA�4�@U=r���v@U
�6�-5@T�jF��@Tʱ�]�[@TgU�Tr^@S?�Kv�@Q탬*�@P�WB�'�@NJ@x!��@K�Dl)�u@J���G@I��i[�Q@J^Vy�@Kd�姹k@L�i�t�@NV�����@O����`S@P$l��[@Pgum��@OU�5-�l@Ni�/�x@M�!x���@M>�sʳ@L�y�T�@J�v嵹@L��K4�m@S�D#�@T_"<S�W@Q4��^�_@JO��{A@B���6�$@=`4{x�@;0�@w�@8�w%���@7-�S��@;<sJ	@Dd.��@CлF!9�@G��jZ	@K� �::�@I�,k6�8@I=��
r@H��~�o@H��L�@LJ=~�6@Ow�*�;@P�,L'��@RB)�K-�@R���|��@R��)�@R��ÖcR@S~��3a�@R�V5��@R5�IT�@Qcw�#�@Q���ړ�@S)V!�x�@T(
\W�@S֚�Ð�@Q�̜���@P"�O�@Qd���@PlGe�@Ps!r����8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@H�G�i@H�)����@I˥{(E@K焸>|@H1��a;@F^�f�@HYq��-@IE�A�@R}��/@V��#{�@W�9�k1@W�z���@Wp\�@]@W<q�`f�@V����E@V^���9�@V��5�@U�����@Uo,`λ@U7�%v�?@Uk�_=k@T�=��nu@T�=!��@T4!ԛ)|@S#Z��6�@Qٴ��d@Pw�!\@N+˵d� @K���~Ls@J^�G��l@I���-%@Jx�p���@L�1�)@M�K(���@Ob%j@P5��)@PM�����@P.Qe��g@O5�c���@N��{�@N	�V&�@M��9��@L�h
��@J��^��@L����@SE�ݥ,@T��ظ�@@P�6Em/F@IP���z�@C����@8,vNΣW@6����S@4����	@7 ^-X�@E����@P�M[Ed@M�ھ��@N��%� �@OV>�E@M��LA�0@LG�;�@M�Wf��@O<G�@O��c<��@P��
[��@QV"H/ �@R�=��ao@S�(y}@RF=��@R��]h�$@SJ;��3@R���,�@Q�ܢ��@Q��"$4@Qר�8�@S�A_
@T ڵXF@T{��D�@S1�?�ͯ@Pᜧq�@R{9vI��@P���}KR@N��c[�(��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@H��EI`�@G�����@H,�"�J@I�B��@Gs����X@E�תD�#@H!�@y[@J	��|�@Rw�S{��@V�1]�̴@W��ڈ)U@W�c���#@WtҖYX�@W70��^$@V��R�F+@VHo���@V��}@Uӳ4!��@UpNeW�@U2N8,L�@U�j�4@T�^_K�W@T��@��,@TNz��_@R��/�8�@Q��!�k@P�)V��=@NI��@K���[��@Jr��,�@J!�m��,@KI� �@L�=3*e�@N�B���@P��q�@P�
�Z�@PW}��@Pc�J�@O��CQ|@N�,.y>/@N	�>3@M��y��'@L�[���u@Js\0�0-@ME�4�@S�B���h@T�o�8�@P�n"y�@G׮w���@D�j���K@8�T�RCk@<��*�@;4��@M�jw��@Pu^��@Q�o���@Q�Z�dg@Q2�|�d�@P@��$]@P[�x���@NO	�=�@N9�M,@O�eiF!@P#7��[@QN��
@R2���@R�K�߀C@S'[[�4@S�땤{�@T?U9�N�@S���o@R����m�@Q�$Ы0�@Q������@Qb�^�G@R����|�@S�o��$@T�5�Ü�@S��@R0Y ��@Q���L�4@Pk��\d�@N���׉���8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@H87ڴ$@G-Y��-�@F���[�@H�ż� �@F��Y^?@D��a�R�@H%��B@J<�Vi�O@S����,@VlqTkW�@W��$�!�@W��v��@Ws	i�4�@W���r	@V��T0Vu@V%@E��@V�T. �@U��2���@Uo<��4@U5���@U�a�Ka@T�=D�@T����a@S�ti��@R���0@Q�?$\@P|���@N"޻�?p@L���w�@Jx��ef0@J��+(B5@L�4��e@M��@x�1@O�N��(@P���	�@P�y�?��@P� �U1@PӬ2��@N�	�Ie@M�����@MEC�VSm@M��M�9�@Muo�U�+@J9�N��@M+�5U'd@S��y'�m@T�Zil��@QA��@F���Pq[@A�ױ_@9�}v�D�@8����L�@?Oܹ .c@P�J7@Mʘ٥@OV�L�k@Px�Ⱥ��@Q;�L)��@P|���8;@Nع~`@Nr�Ԃ-@N8���Oc@O������@Q��hܕ@RQ	����@R�`=�6d@R�|�f�@Tf�1:C~@U0q@Si���I�@Sd�9L[�@Ri�+?�@Q�tA%!@Q*S`�,p@P��l
y@R%�sG"3@S �P��@U��
�@T��0��@R�.P8�~@P�\��@Q�Z��0@O:G4����8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@G�6_y�@F��i �@E���� �@G ��q�@F�	氝@C��EM#@H>�&7@I���E`@Sms���@VE
�'�E@W��z��@W����@W^�y�BL@V�K~Ed�@V�)
@Vd��QU@V�'�K @U�H��@UW�PF{�@U0��P8�@U�l�&@T¥IKp@T���	�@S��w��>@R�,�!��@Q����E�@P��`��@N�1���@L��`�S)@KȆ�n{@K�oPA�@M[� n�@N�|U3a3@PA�༼�@Q%B|(�@Q45����@P��ܹځ@P�I�"q@N�]�LS�@Mo����@M(>[��t@M�>��1�@N#�0�@K��L�)�@LCU7(t@S(GE3��@T�g9�nF@Q"o zvC@E�Ήd��@;Gq���@4��3��s@4/��[?@E���@@I&��^P�@D�ҟě@J�rJ���@O@�Ҏ@P�聶��@P����g@N�N�k@O!�ɳ@O�2�#�|@P*B�Ua�@Qn��� �@Rπ��@S�k��@S�S3��@U�I�X�@U�N	S�@S_N�A~'@R�.j���@R����]�@R(oٺ�@P�����y@M���!��@P� ��@RuJ�6�N@T��ǩ��@UZ8� �@QA0���@ME�N�v!@P� ��@P!l�߶��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@G�Jn:�t@E�б�@D�±��@E�a����@E��7-�[@C'��k��@Hw�Ń��@I�!%�d@RΩ�c�i@Vf�@W���h@W�0co@W``�CG@V׽�U��@Vv��4.q@V*0.�L@U�u7�E�@U�[f�O@@UGI�?�@U%v��Ia@T���w�@T������@TG4Қ3�@S���[�@Rߡ��޻@Q���\�@P�
t��@O'�\˹@ML�GЮ;@L�"�SE@L���]�@N#����@O�����@P�
����@Q�}�j�D@Q�:�,�@P��U�oH@P��[D�@N�W6�@M\���0Q@M"���L$@M�h-@N!E�"cE@N�XK�?@N.6t�|S@S3G�X�@TY��p@P�n�J�#@EB���x@4�0H8c@/�#)�ϙ@:M#�p�@P�/c8OY@N�wU�@G��&�@F��n�@@Lx�`��D@P/�'Q�_@O���US@M/q��@NI�O]��@P6z���@Q�=��@Rޯ��@R��.���@S>U��{@T����r�@V���l��@U(	&�\@Sr��^OG@S���@RYb�b�?@Q�b=ͣ\@Pi��G�@M���Eo@M�-9�@P�%.P�l@S�U+��@T[�ԋ��@Ox�D�c�@O|6|q`@M]DS�u@P�$�f���8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@GH�B���@D�=C�{�@CiZ���@DC3�:F�@Eo9��#@C�x^�xy@Ig�A9k�@II��-�@S&�WG)r@V@I�]�k@W�e��@W��C�$@W]M�Z�@V���Y�i@Vy(�S=O@VO(�o��@U�4h��@U�x3Y_�@UAk�4��@U.Հb�@T�E��q@T�O���/@T:D�&@S��S�A@R��i�y@Q���F��@P��)�n�@O�%�<P@NGj���@Ma����@M�ܒv�q@O5?�[g@Pf��R�@Q_�6\�@Q��?ƺ�@Q藲�@Q#cJ0�@PG����7@NYR�$KC@L�V#�{@Lߤ��@M[���`$@Mk�j^�u@L������@Pr4#�E�@S�嚔57@S�2�
\@P?�D���@C1���!�@8z^��`@+90"׹�@B�C���@M����@MAq=�o�@MI�d���@F���a@LY���@P�+5�@P���-��@M`�I��@M�)D��@O;0r'�@QE	�Ko�@S�é@Sn22�v�@S�>IF�@T"��W@V|fX�@VT�], �@S�.ut�@R��ü@Q��Eh�@Q$�O���@PSI�@N^5ܪ,@N4VLY<@O_��>��@R�A����@RY�_�~@P`)�5M@Sh�-���@O�Ɗ�y@N�������8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@G��DX@CܶY*=H@Bl��&O�@C��J�@D���)@Ef�	��@J�0кF�@J�m��*�@S�-F���@Vp�6f��@Wr��T�@W��֘��@W_ 'AT@V��ck_C@V��Ĳ�@VS�d4@U�;���@U~�Q��@U6�6Jz�@U%:���;@T�2�Z�@T�#p��@T:1'9Ic@Sx�7.�@S-�4Z@R�Z�?@P�.?h@P�oN�a@Oz�af�@N�Hi���@O:��E0�@P��\@Q��|yh@Q�Z���G@R���Z@�@R:E�0�@Q��΄u@Pm76'�
@NO�X�F9@L��hs}@Lp�d3T�@L��F�9@M o��dg@MJ�Xʳ�@Q?^{� s@S��\��@So��d_@Pj,��f4@C�.|���@:��u7u�@Eq�$@P���"|@M��%e@J��u�@L�����@K���v/@O�1���`@P���h@O��R�@L�l�|N�@M&Ih�
�@OJ�]+U@Q�����@S<�ڛI@T[$�eZ�@U���i�U@V�Ì� @Vl��M@VJ5��\@T]�w�@Ru��J\@Qeѓ�M�@P�^A�M@PP ;o�@O�	���@O'�8�<@Q��N���@R�6Z�D�@S�t6r�@Q��\�z@P�G+"_@N!W���@N��ń����8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@F���0�@C?��e��@A�dof5�@A�AD��@C��I�@FN�")�@Jn��)�@M�P�}N�@S�GH��]@Vp����U@Ws�xs`@W�f����@WL˯I(H@Vԟ�Yv@V�嫭@VH�r,\�@U�0��Ad@Ua�g�o�@U�9y�@U%{Xz�@T����@T��f���@T<�X�X�@S��?�R�@R�/q��0@Q��'�1@Q9P�-�@P��&�j@PK$j��@Pq���{@P;<maܭ@P���I�@Q�.0I@R�kx��D@S$$�/]@R��'�m�@Q���hM@Pج��i@O,x@u�m@L�kYXM@L}�=�;@M����@Lx�g;c@N�v�kO�@R����@S�]<�@R�W�q@PS��(@K@H�>:� @Oۅϫ�-@Q{z?0@P��Tr�@Kt�aY��@J��y���@Kb,)(��@G���-@L։��@K{.�M�g@JnJ�W<t@J|�@p��@Lr
Mp��@M���H��@Q=q�Ic@S~���h�@T�_1�@Ut��7{e@VT�h�@VT�j��@U�fe^\�@T��G��@R���/�@Q;&A@P�8� ��@P�����@Oݲ��&@PG��c��@Q�H�aC@Q��<�[�@TL����@R|.l��O@P͛���j@L���o@L�m��G���8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@F��+�I@B�]��* @A#���=\@Ad)�'�z@CYz,�]@Gq�h�@J2w=��@Pl˸�U@S��1{ҹ@Vm�x5�@W���mvM@W����H�@W#�%��!@V����ձ@V�ҲVe�@VU:t��@U�*@`|@Usw���@UI�k��@UL�sK�@U�s��9@T�ٝ;�@TY�`y��@S�&�-�@R�BŃ��@R�f@��@Qi$���@Pڄp�t@P��B�[1@P�B��@Q/���K�@Q��A3�@Rz�/m:�@S`�n���@S��V��@R�����@R2���_\@Q3.G��@N���d�@L���X�@L�r���@J���V�@J�`��?@P,��]X�@T�T�r@U�ħ�!@SK>�1@L�g���@Ij/�o@Qc]IW�p@LX�B�e@J�	����@H�?�(@J|K�w�@J���@E`�Md�9@H��B��+@E���*�d@Ix�4	js@J������@K�&?:��@K���b}�@PN�8��^@Sx�����@UP�Aܣ0@U��T�@VM���@U��/�L�@U�����c@TWa=�E�@Ro��^s@Qu=�@Q0X]q�%@QG�L��@P��#�b@Pڗ�g�@P��i�K�@M�,��@Qr�]u @R"�>;@P�%b�s@L|�K|5�@NY���ژ��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@Fp���;�@Bj%'�H�@@�m\7�@A%��q�a@Cst����@G����g@JdE�PZu@L���a@Th��->a@Vv�O��M@W}�x��@W��nC�e@W�%�M@V�"�Vd�@V�$���S@V;`��i@U��wd��@U��&{�@U����@U�c5��W@U.�ݟ�d@T� ���@TN	�T�@S��2ݞ�@R�UsH��@Q����&�@Q~/ �R�@Qb�%{�@Q�d*@Q7�]H�O@Q�q��{�@Ri���F@S)!8?-K@S�°ܦ�@S�I .}@R��T��@Q�r�,@PQs���@N���!@LJY��	k@K���Tvg@Q޷�St�@T_ZM���@Vd����@V�z�Z]@U�����@U
L�e�@P�!sR|@J�I�0�@PH�*�Vx@Ks�h���@JE&�-�@I$wF�F�@F�Z?��@H}b�@F�����@Jh|��<$@L8�_o��@N��<�H@Pk����B@MV~����@K�p�.W�@N���	@R�c )�@U��Le�@VgU�0�e@U�pނ� @U�\:'�!@UX��@T2���>H@S�ή��@R�MPn�@R���5@QƘ^�/R@Qb6˷L@Q�S���@OVGM@M��6Қ�@LD���@Q�(.R�@P��2u>�@LW�>�~�@M^dMT���8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@FBʿH\c@B!T���@@�7z��@A���ww@C�0	�?@IB<���@K�$�@N1��W�@ToXٔ�@Veȱ�)�@Wi/�@Ww�m��@Wz1Xa'@V��D��@Vx�4�@V!|�l7$@V�x��Y@U�=/M@U�X��@U�9�� @Uz:3���@T�SWp��@T,��m@S@�:r�@Rza�@Q��Q��9@Q,����@P�v�[i@Q����@Q�bU�ZL@Rm9�o��@SP,p��@S���*�@To*|k�@S*��!��@Qt�l���@O�Aq[�@L;o��	�@M���Q�@P[�^�R@S����@V͚<Ȫ�@V�}H�H@V��r�,�@V�7s%u@Vd���Q@VYl�5�@U#ؓ���@QQ��;@Q�����@L��J�x@I߽��Ǎ@H�A+�@D범���@AP{E��Q@Gn�e@C�����@H���a#�@P%�=�%X@Ra�ϝn@R��z2?@L��&�@M٫W���@Pmo]�_L@T���3tH@V��IY�T@U�?Ғ��@V���%��@UKղ�)@TP�{%@T�?��@S����m@S'�A��@SIA �\@R���PM@S~�Sc�@R9jTY[�@Oj+�i�@Lxmq��@P�4+.Ab@P
���@K���o@I(��}���8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@Fz��i@A���@@��> f�@BE�
K(�@F��4c@Kb�]�@LR�N��@M���%@Tzh>��_@Ul���ȩ@W/���@Wr��@V��"/l@V����@V:־ ��@V=QT�Ƒ@Vd�rv�@V?ױ�@V���E@Vtm�#Ǹ@Uk���x@TL���y�@S�EGצs@R�>Hh�@QRG"Mo@P$hb!�@N>2D���@OC>[=@P��罂@Q��K	�@S.��v�@TI����@T{_r��@S��E���@Q���z�@O�����@L���6�`@J�5����@Sl䀸65@V�����@V`�R��@VNLeh�5@V��<L.@VF� ��@U*�P�Ò@U�&�2\@U7Cy ��@T�Q'���@S�d�ZX@H�s�;�U@G ��Y+�@I����%@H��(4�@G�*yv�@C�
<-@F-��MS+@F��e@K�S�q�@P@A�q�@Q��r��@S���T�@R���@Mץ���@O�+a*y@SO����@V�Y�ǖ@V7�4[.�@U���ԇ@U%�]��@T��6O�@S�;�ef@SU�e�S�@SvУ;(@TIt5K�@Tq4+G@T?�����@S+\�F�`@P��P��@R�w��u@Q�s�=��@O�6KM��@J�xW��@F�^���"��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@F�b	�`@A��_,��@@�/~�(%@C�0p��@J)�B��@LcJ@�w�@K�3g��@K�@ 6!�@R�r�լ�@T�h��@V�M���-@WQ5=Ԙ�@V����4@V���@VN�_|b�@V>4���@VH��<*q@V��mw�%@WM�b�@V�W�!��@U��]-�@Tث*|�@Q[uiT@N�`��lE@J¹$�@F�p<?�@E�u�;�C@I��"�0@O��~0�@R6�)(͝@S��緉@Te��O�@Sؿ���$@Rs��� �@O�+K|*e@Ov�����@Jl;g��@Q�0c�$@V�Rd�M@V̼|���@VXH&@V������@VeE�.�g@U¶:i��@Tc���@S9��I�x@S��U��@Q�ż�@�@P	����#@E5���f@Aw��_@GE��}�@Hç6��@Cg"���4@B���@F�eH�2@I�ox[�@L}�/Mߥ@O��k0T�@Qdx�$�@SL�\q�@T�{�4w@T?yr�"�@R2�d@Q>*5�]\@U:��VE@V��o�U@UA( �\@T�;-Θ@S�6Yr:@T���@Sn�!"P@S;���1@T!��{�4@T<`M?@T9��?�@R�jb��@RSLIK�@Qf��@R��h+}@Oq���@I�ÿ��@G�NgOΎ��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@F���"�@AH�S��	@@�/��@C��Iy��@J]A��k@OQ��~?@K�N�gn�@K!L����@P�y�Ԣ�@S)�Z�@U�:� ��@W�H�c�@W���#�@VZ��pw�@V8��(@V?�2=3�@Vp��ץ�@W)�m��@S�ʰ�F�@O﬇q	@Po7:X@N�K��U�@O`Z2k@J��*��L@E�8���@>��_D�@8�q�ݱ@B�M�#u=@I�M���@L�8e�M�@QNg{��`@R6\ܻ�3@P� ���5@O��9:�@M���%P@L��	@I�Ҟ�f�@TR_Kwy"@Vד�1��@V�)=��@V����q�@W1��
@V�s=@U��l�[@T��ɠ��@R���Qc@R@YsgG�@P���Aڐ@Rǳ	�`@MH;W i@@��� ��@G��6>�@I`LuԔ@Bݛ��@Dڍ�@Fo5;@I:|D)@K��(��@N╥��@Q�g`@R��G�@T�C3�Ug@V:h���@U�e�u��@S�\���@S=�e��@Vh�r�|@UE⷟��@T�ժX�@S��^��9@T�wJ~Q@S��`�@S���v�@T'����@S�q�;;�@S3�5�)@S܁�uJ@Tt�|@�x@RU	Ӟ� @Qķ��E@N嬼��@H��L��@F�x�����8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@F�&w=@A:�UD�@@�$�B�@D�Q�~>	@J�E��KU@O���x@L�Erè=@K���@Nj�p!�5@P�E�;@U5��(@V�Ic�*@V�wB{9@Vj2���G@V�
�4@Vɦ+�@V�d��a@UmkYf�#@R�
*�ӑ@P�LrDC3@L�%$�@G,dI�'@E#�${L�@@�6{��@:P�	a@5�.h�[@5��s�9@6tK�Ϸ�@/r��"�%@&&��ˬ�@#�����@,<�
�.�@.�o�_@7�`�w<@@����C@E�Y��M@Pn�ݔv�@U��!z�Q@V"�ƨ@V�'IP5@V�q_�![@W	`�}@V����@V2+XTyc@U��*.�@S�a���@QeGo�@Ox�6wU@N��rg\c@M���m͑@DW����@HfGv��@H��//�@Gx�G�t�@H;��1@G`<�Pr�@H@'���@KWq�ݯI@N�n��IM@P�/�kAx@R̪�]�8@T���zL@V����=�@W�U���@T��D���@Q��x�8@S�/���<@U��Z�x@Tc�g� @R��E7�k@S�"@P��@S�$-m�Y@Sc`��]@S�Ҿ'��@Rg�t0��@SK�@2�@TeV�2@T��
Y�@R���@P�~u���@MuS�@H{�{UB�@G���$}���8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@F��N`(@A�a��E�@@�`�i�`@F3QMT��@L�˝~�o@OK�Ա�@Nt�[��@J%1*�*@P��~<Aa@Q6R&��=@SΎ���H@V�Z�@V�
��@V[�~'h�@U�CU�_@U��qiH@VA�*�~�@Ss��Q?1@P�K�'d(@P�H�j@LK�WI�@HI��^�@D�L �s�@A��nS<@:gvۀ�@6�I^S@8�\Ir �@9��~�@7��v_ �@:�m�߿�@;����@/�[+˄@,�8���@9|%G@?s ��@J�.�^8i@T�����@U�ܕ��@V�.�� @V旗��@W��@V��[8@V��Mn��@V*e4&�M@U��Bp@T}se���@Qz�n� �@M�*�_�@L%��U�k@K��!Vk@HM�0W�u@G�Ȥnk@G���T�@Dgn$�@F��?u�)@GL�7`�@H�.e,}�@KM+�}�@NP��9��@P��9�@R�����@T��i�@V|���@WWEr��d@Vk�ȧP@UG���S@SX���C@T��QEHh@U�v�;:7@R�Uw`�o@SI�%t@S����_@Sv��D��@S:����@S��-qd@S��, ��@Sgij�>8@RX8B X@Q��l^�@OVX�"i�@M_2/���@HK9E���@FE�Θ���8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@F.�
�/@@Bm#��ԏ@A�g�E�@G�R��@Ln	ǥ�S@P����@P��"��@JMM�9W�@M�<iJ�@O�/���l@R����S[@TѴ�tYb@V�4HT@Vyq��@U���wM@U���@yh@U���KX@RV89��U@N��M�?�@L�ϭ�ǻ@J�lR��@@E�.L͖@@D8��I�@A1��S`V@;{��ͅ4@:�0�
8%@=��!:�@A��=�@@��.~��@CT���`I@F��S��@F�_y# @C���lr�@D�_Ms�@IM�?��@Q��?�`@UQ�Bq�Y@U��\���@V!ڃ��@V�F*��s@Wp)��e@V� ڤ��@Vz��s�@U&õ��@T�_��@R��C�Y@P_-�`)�@O��;��@Q��*�@K(��*@E��qKJ�@G7�?�@F�D�f*�@F�rN�;�@F�x�wA@F׺�,H�@H}�B��C@K~�	% @Nx�q_^�@P��Q]@R�a��@T�K0@VPz���3@W������@WIˉ��@V�~�y+@T��w���@S�$�+6@Ts�ı��@S̀ ��@R�L��z�@R}���2@Sgd�@T�)��Z�@T���e�@T6�9T��@Q�G��F�@P��i���@Q���'@M�f<3W@Lu]�nY�@H*'���N@F#�����8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@F2,e��@C����@B�-RXv�@Ig�Ck^�@M�v4�VU@Q�K`�@Q
����@K&5_%�p@Md}���y@O ���\@T*b$���@S%0�d�@VD�����@V��;�i�@U��*�i@U�]4��@T�~@�c@@R��O�@PF����7@Mi��F�@I����@E(���P�@CHuu�i@A>���̏@?�p�P@@��i�@Am
�ÌY@C�۷@F�SH@G�s#�Y�@I�_t��+@K�o07te@N�A@��@P���x@P�Ԏ��@R�ͪF2�@Tý�@U�b'zx�@Vs �da@WF���i@W	Vh^@V�҅�ۄ@U�l$�|@U���7N�@T4>�� @S�[���t@T�.�'C@R�C۱M?@R���;@L��n�}�@F��q�՗@E��Ee9�@D�,�cP0@EN���;@Eۛ&��X@F����l@H��z)�d@K;:,��C@N �fQ�@P�u��@R�bW�p�@T<z{�I@V���&L@W{�n\�@W��w�==@V����@Tu�)���@TV����@T\F�{I@S�32:�@RT&6�dS@Q��<L��@R�D��+a@S���`@T���-m�@T �2@O����@PIW��~�@P���+�@N1h{�\�@KhD��I@HU�Wo@F�YB#���8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@F5���@C������@C��?��@J�Y�XK�@M"�fyY@QLE�g�@R��S�}@NgL�9@O&� �!d@R��S��a@T�<�8�0@Ssed7�C@T�r {C@V��-�@V���d�@U��?zn@T��b��d@R���UP�@Q,�QH�A@O]V�u@J��-e�-@GAZF�M@D����@CyL�@BR��@�@C��Y@B�N���~@DE�=@Fr�&��@Gu[y{y%@I��Ր�@J���1P@L-h)��c@OB�E|'@Q5�oK0@S�o%bF>@T���SI@U�3�I*@V�U�d@W#&k؅ @V���8�@V�ѻ�o{@V��;�i@U�|�U��@TY�#f�@T9
pl@R~���.�@RJ˾	$�@R�Dd2�{@N�<R�K@H����!@D��V�5�@D�I�K��@F8{ #�@FT��ғ@F�X@Hou��#E@K(�V��@M�ڹ��@P~y��38@R7E ջ@T5�o��K@U��<yem@W7��:G�@Wë��$@WT���N@U#/Ԝ�:@U��B4�@V���j��@S8�q>@RO��@5@Q"?�̔@QtJ�@R1n��N�@U-\g�ϩ@T�f��@Ow�_E@OV�Q��@O�$�F�@M8�UVg�@KG�@Iϔ�Sn�@Gh��4���8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@F�y>�+@Cp�P�z0@C�(����@L#�͎��@MZ��M=�@Q�t����@SB{�3@S~�����@T�:Z*@U�Xq2�@U 0�;��@T���&8C@TV�5^l�@V�Deߗ@Vg3ش³@U�e��U@T鱾��@R�&�jd@RĳC�@P.�|г1@L��:��@J����@HF���=u@E	E#��0@C���D�@Fr�q���@F=��e� @E�w�Ӈ�@E���m�@Fx�t@c[@G��i;x@IXB��!@K����q�@P�ר�e@Q��@R{�`|%<@T�Q���@U�q�j�@V{��:S�@V����c@Vɇ-k��@V�t���@VZ�
��M@U�u�{@U,!��@Uc
���@TF�:�`@T�I#��m@Qȇ�e�H@MJ�+�f@@JO���!@H��s�@F���[��@F�ᢅA@F4Mݤ�p@F��^y)9@H��lo l@J�R��x�@N ���@Pt����U@R���Ӱ@S�����@U�Uͦ�@W%�g�@W�Ǆ��E@W���g@V_g�o�!@V6��x@WtvKu@T0c�I�}@Q�(���3@Qd��V.@R~Z�h��@UMt�l��@W�p�h'@Wr²�w@R*���@N�t�2@Oވ��@L�7~�?V@L`��k�1@K.�k5V@F��T�W���8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@Ff"�Z�@C�v�HQ@B�/)���@LDڰ7+u@O�ùב@QĈ���@S~�jr��@Ty%���@U-�K�D<@U���4��@UbӖ��@U��._@S��z��@V�"���L@V�4�ԁ�@Uά�+@U5�D�(�@S���V	�@R��/l�6@P�J/�f'@N����E@M"4�υ@K��Հ@H-�44c�@E:��B�@H�
�Mx@H$�U�@F ���*�@F�����@F�bXN�@FߵY��T@I�uk*�!@K韏Z.�@O,�1B�@Pߨ£�x@Q�^����@TL�+��@U�GN��i@U�'e5�!@V�;l��@V� �WK@V��_)�@V�#$��@V>�ڙc@U�խC}@U�2eT@T���/P3@S���W�@N�,&��@Mr���!@J�]兙�@G�4�/A@F1�4�@F��bJ�K@F�[���@Fy͵x�@H$��r�@J��y�*�@M��ƀ[9@P0_���@Q�>�M/�@S���O~�@Ua3�%m�@V�#�3AL@W����HL@W�i�4*@W�[L�c@V���\�W@V]���@V6�߼�@Q�#��O@R!v"KU@V��0��@X`���@X��lf�@X�C*}�@V�3�[/�@R�Rl�Ģ@PPا�W@M�bu�@M���ű�@MP�Xd�@E�Wxi���8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@E�a �[@BѤ:@g@B���$��@KBmM�K(@P+�Qt@Q�<z,G<@S��3H��@T�����@U~1���p@U� 5g��@U�r�@U��W��@U%4T#|@V�U
*@V�&q�(@V	Pݿ@Uf�;~[@T'�(*c�@R�$k�q�@Q!w�j��@PI�����@O�^��@LɈ�_�w@J�%G�%�@K���FW@G�Ձ�h@FqjZ�x@H���?�@G�F=�3@G��j��G@H����C0@Ke��Bw#@M��p�@P����@RHo~p@SP�xe@TFϩ��@U:�dE�;@U���f��@V7�{�ԃ@V�&��M@V����-@V���3�@UV>@�@U�AX��x@V�yMYm@T�w@P�
p_�?@N��0w{y@MM�p�	@J�z��RO@G�R��@F4���@F^���I8@Fpދ���@G�Aq�h@H(�36�L@J�I�V�@My���@O��h��@Q�nDe�7@SL���!-@U�}��F@V�ur&G'@W��,�@W�I���o@W}�m�@V�����+@U�h�7�@U䵙��@R�<뿕�@T,�'��@W�Oq���@X��!n�?@X��?�_(@X�ߏ҂c@XKQ_Ą@W�U�#@R3:r&0@Q&��4ƶ@P���7@I�+�q��@Cۏm��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@E��ƚ�@B��0_��@Br��y)�@J�Z�@O�u����@R&a�k��@S߻ѽ�w@Tޭ9h�;@U�V����@V&"7�0)@V!�~�@V��݄�@VK����@V��vp@W n��%@V_�u@U�j�S�@T�<��`�@S�x7�@Q�ԼRP�@Qb�&U�@P��
H�@O��6Y@Mk����@M�TN[@L�}}o]�@H�����@I���4u%@JLT���`@Iv1����@K!�¸�@Mu�D�ϝ@O�;�� ,@P�L���@R-���X@SG��z�@T7���@UP�u@T��0� �@U���W�@V&�Ț=�@Vڀx�o@W3��`t0@Va��@U����+<@U�a���@U�<槗@QZ�[T=S@O#w+��@Mƻ�WU@K]�O�m�@H�}��@F�Z̕�-@F`�Oͧ�@F��d�ek@GZc�'�1@I5��a#@J}j��@M��#Z��@O�}�@QɅ��f�@SFVM@�@T�X���7@V_0H���@W_'ڿJ�@W����k�@W\kl�*�@V��GL��@U�a��@V7�;U7@VTz��@V�
��)@Xp#���=@X�,�Dg�@X��u�@X�D�ڙM@X u��r@U��a>\@T*�q8p�@Pm��k�@K�$>V`@Eu��b@Gh��1*���8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@Es1����@Bl�0���@C�/%w@I'{H�k�@N>~�,O@RF�xl(�@T��`E�@U+nj�@VgP�5@V]nH[	e@Vx ��w�@V���.�)@V˪�N��@W3��9(�@W.M�umk@V�{I�@U�+޷Y�@Tˎ����@S�[A��@Rt�ֱ@RF�����@Q^���>j@PC�|\L@O�C@>��@N�q�-�@MR�
%�@Lb�p̩@I����@J#2�#V�@LE��Ic@MHNY���@P�O��e@P�ލQww@Q"�PX=@Q����@Sn��ʄ@S�����@T���]T@T�-��7�@U��{)ޗ@U��$�8@W	���@�@W<�Xыt@Vj����@V6�v�W@VU��$5�@U~����X@Q�uZ��*@P�	��-�@NoBE1_@K�����@I�q�n�@F�	����@G,�C�X@F�3��
�@G�D�Id@I0�!�)@J�{�T @Mh�28^L@PF�[@Q�զX�@SD�8��@T����@V@��v�@W*@? R3@W| �t7�@V��\�u@Vz�a9��@Vj\���@Wg회;�@W���r�@X9S4ե�@Xm*N���@Xd��P@X`0�?�(@X1���i@UK���@P�$$B,�@Q��m���@Q�
�S;@M"�ƨw�@IB��� @K{�o&���8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@ES��;@BL�	H�5@C��˞!@H\��i��@K�	��@Qy�^�A@T7f��TY@U47�!�L@V1�lq@V�'FH�@V�k�24@@V�y��@WC��6��@W��ܯ\5@WY��4!|@VŠ*��!@V(/3�s�@U��20�@S�� ��}@R�rtG��@R�ͧ�w@Q� ����@P�$��[@PJ2�9�@P^��$@N�H_�&U@M��P��@L��:�@LR\z !`@Lu0Ku��@P��S�q�@R�G��}@Q���_o�@Q�����@R/E�w@R���wU�@Sr�a܋@S����m�@T�� .L�@UU�D| �@V=�墠1@W1��:�%@W"�:�jq@VWVjhI@Uo>ni��@S����=@So�@��@RňX��@Q@QkMjT@N��w%��@L���@J͞
�@G��Ih@GD��.e@G��HO�@G��9�Y'@I�J��@K |�be@M�9QG�@O��ܖ�@Q��MIǳ@S�[SC�@T����@V��۞E@W*Ymh�@W��r=@VU�,@V�� .}E@W!����C@Wޕ6��@X8W�/s@Xz��L @XSh��B�@X:8�O֝@X3s＃@U:R�@H@Q�^$Yp@O��+�^F@N�ǭx@N�rD��o@M�
ܑ8@LOѩ�V�@M��V���8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@E*G� 8-@B;Jξ�@C��H@H�O��Hc@J�i`/@O)b��+i@TP8��=@U]%�˚�@VT��,@V���4�@V���z�@W4\�A �@W�q:~�@W����%@W�����<@W1���;@V@n~��@U?�#�@T6"*U7@S/���x~@SB�!!@Q���0q�@PDD�I��@P#�H�@O�X{�s@NQ��4#�@L�w;�g@M��V�@M�f3���@N- %�~�@Oj���8�@P�ggU�@R@��k�@Q�����@R)*�p@Rt,�[m@R�ۅ�US@R��7ty@S��I�b�@T�2��&@V���\�@V�w�M�M@W ⒆�y@Vs���@R�^<�	�@Rq̂�u�@S�s�m�@SAu�3O@Qc�[/$@O�2����@M��\n�@J��$��H@H������@G��W��@H<�4��#@H�5��l@I��'��@K0��@M�6�8� @O����!{@Qr�I���@S//\`=@Tk:pG;�@U�c�F��@W	����@W���Ӯ�@W^	q`ڈ@V��M'o|@W]t� �5@X"��Ƀ�@Xc��d-�@XU�6>�!@X,@@�@X* N�Nk@V�|�1��@Pg��T�#@OƗ��2@N��)�1@L�!����@MH�7S�@O���[<	@O\��@O�?L����8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@D���m�=@BV�(��@Ch�(��@Ip�I��@I<1�k�?@NK�M��@T}�dm=p@U��ئ=Y@Vh�,�@V��(�@WA��<�@W�9LՑ@Wށ+2C?@X �!�q�@W����y@WQ���l@V�8��Ӄ@U��ғ�@TJ�'b��@S|J���
@S�c:}x@Rh{6(�@PQ��I0�@O�Ɓ�Q�@Oյ'���@N����� @M�#��@ND����Q@NI�#q�<@N�~�N��@ODw�@O"!F@N`@P�V��@R"�-�NO@RT.�m�/@Q����1�@Q����@Q��#�r@Rbǎ��@Sö�d�@UJ>*Z��@V�wx��@W�~��O@V]��9h@R�+�@S�y��@T-G�O)1@S����@RX�u\H@P���B� @N�HRÕ@K�U��@I�n��A@H��U�E@H���pX@I@��@J X#��p@K��:0�@M&L����@O݃h�{@QQ��	�O@R��W�3V@TE	:j��@U��r�G@V�~���@W;B���3@W�N�ū�@WSsUy@Wp����X@X+��{@XZ�Ⱦ�-@X#�=�!1@X�Ȅ^�@X�� �@U9�?���@PNL�b�@Q�3�z�x@Q���T@O�'��x+@P5<'X�C@Pں�X�@P�/[�Q�@P�<��;��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@D���@A�<�.d+@B����]h@IB�]��e@J~Qn�aw@PAg�/�@TkO�p�@U����J�@V��Exx@W~y�8@W�nn��@Wн���@X7U��@X-=��U@W���*8�@Wty����@V����?@Uޞ�`�@T�"#�j`@S�F���k@Sإl�E@RZ�X-(�@P��FJ�@P ��yS@P${��P�@O�`i�b�@N߅�@OH@O@h��Pk@O���C�/@O�����@O6B�5�@N��+J @Q����8@Rf�c>�@Qd�'��I@P#N	��@N���Vi@O�MRn�@Q����p@T,l>�:@U�t�Ứ@U�"��+@S��@QfA?�@S*�VO�@T��2r�@T�0�x@R���@Q.�%[K@On��:�@M���@@JԳw�a@I���i��@I��8=�@I�Fo-�K@J���O+�@K���`�@M���	@P3�7�C@QB��2	]@Rh�qm�@S��=e�@U��kH�}@V�t=f\�@WY��Ω�@W����g@W̚vl͝@W�ʌ��x@X/aw[-@X:���@W��+��T@W��'��@W�f�6��@S��m��\@P+4U��9@Q��s�@R.�v"�>@Q`@���@Q���Q@Q���!&�@QÃ���@P��Zm��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@D�c8�9@A�i�D@B90��q1@F���1A@N�n{�	@Q8��L��@T!�:��@U��Qow@V�	hqN�@W:����@WÌ��Q_@W�az�@�@X/�`@X6S���S@W�ԋ@W�7�w��@V�Ü��@V>����@U8�d��@TLP�Z��@S�����C@Rʄ����@Qˏ#pn@P�}��6$@P�3�39@PT*�jt@P=��[G@P ��禣@P:H�z@PH~�t�A@P�J�d�@O,b���@M{i�@P�	���Y@R��T�u�@R\��/.�@P���~ׄ@O���T�@P$����y@P"NW�@@Svh?�@TgpQ���@S�P-�Q @P��q�͠@Q��c�@S��,���@T�et8��@T���%�S@S]�*oX@Q���c��@PW��
@N3����W@L n/��@J��8$�@J=���@JDG��H�@J����i@K� ǟ�!@M����O@P��f�@Q"��Oe@RC(]k@S��Aq��@U57���@V<��"�@W2:2��e@W���@X����Q@X%��6A�@X/����@W�ǂ	�@W�09��@W��Yn�@WҴ&�A�@VA�h}e@So59�=@Q�^{���@Q����@Q��b4�@Q��3G�@RO�h0*�@R.��.
@P.[�8.��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@D���r7@A|6�8ep@A�W�n�@D	�v�@N�)]��s@Qf�3��@S��e��=@U�o�X�@V��� @W�S(_�@W�W<-d @X �/�Xh@X%MX@X8��+@X`��M%@Wĥ߉@W#���T@V|g� e@U|�LsVy@T[~	�[�@T|���J@S?1�9�@Qn��k)@QG�C�@QyaVu@P�k�#x@PTW.Xi@P�D!Sx�@P�1�+��@P����3�@P=��o;�@O���!@N��5�
\@M_��g�4@P/�
�A�@QYK0`�@Rǀ|�9@SU��v�@S�r�\�@Q��$t+@R"�p�қ@S��H�Ѹ@Th�utq@P�f2��@Q��ڋ�@TC�x@U+p�R7@T����L@S��>�@Ra��K>�@QI����@O�L*���@M<jd�Å@K^��rh�@J�04�9@K%�T�@K�ų���@L%��I�@M疝FZ�@P*��6=�@QJ�m8��@Ryb���@S�D�v�@T�s�*�@U�"���;@V�c/���@W.��{�3@W���x@X��e.@X]5w\t@W�3H|�@Wxqx�@W�$�ǿ@WĒ�:�@W.��䘥@V�9�E{@T�2���@R>��z��@Q��S�,R@R�<�_�@R��_j�@Q����r@PV$5����8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@DtH�l��@AAU���R@A�`]&!@C�����@M�q�H@P��W`@Sr���?@Uـ���@V໹�s!@W���E@XY��K@Xk�y�@X(E$��9@X6�% �@X05�@;@W��e��@W^��@V�-I��@U���.z @UNP�\`@T�dQk@S{~�6�k@Q�ms/�X@Q�_��O(@Q�:��L@Q�M{Z�@P�Y-���@P�'�KD@Q(˪�w@P�8�B�@P�:.�@P/W�;�@N�,�}�m@N`�[�h3@M����]@KW!!°�@K��K���@LF�¯@QۘrV@R��&�@O"�V��@Q�I��H@P��E�wW@P�����@Q�q-�*�@T7`��$@Uo{U=�@UC,<��@T3�&�s�@SO|Ʋ�@R o���@P�Ӑ�:h@NO�B��@L!�@1�@Ki�ܫ�o@K��/,`@LDm{���@L�Iv��@N�J*�@P"�}�c@Q��X=@Ry|�{�@Si�S���@Tn�h搉@U���t�@VC����C@V��"m@Wg{�ă�@W��[Ψ@W���̣@W>���@WO듂��@W��M��@W���;c@W�t(b/i@W��|��@W(�T���@S��[t{@Q=	(4I�@S8*�U@S;���͇@QB�0O�@O�� �����8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@DR�#|@A�:[!@A�b�9%@C�f��́@LW�b���@N�o���y@ST	�h��@U�1�h�@W
�>Y�@W˻<��Q@X���@X��C��@X3�{x!@X.y���@X/��2U�@W��ie1	@W� /��E@TL�t���@U��}@U��:4@U�P�1�@S�D��1�@Rh�v9@R`��ZU@Qߣ&65o@QC B��@Q7Z�f��@Qc!$�"@Qe����@Q�7�@P�T��@O�Q��e@N]@�cs@M���9Og@L�s���K@L��@X@K[*Q�e@J}�<�r�@Ju���P@N���x�@R������@RE͔�Y|@L�����@P�u��`�@Q��XOm�@T~��,-@Ux�gZK�@UW<Mc/�@T�z�Yg@S֟ 둥@R��d�@Qo�v��@O�xE��@M>��ʨU@LvQG��x@Lj�� �@L��$��m@M�հ��@NP�>�K�@POz��@QWx̈́@RV�#��@Sc,�))�@TB��΄@U[����@V�̎�%@V�G�D��@V�Ku��@@W?mޤ��@W]q�O!@V�Q���3@WF���Vq@W�oƄB@W³ۂ�]@WϨ"��u@Wԓ;��@Wֵ�[k�@Sb�;�@Q��Fn@RY���Z@Rá:'��@Q8���C@M�Gj�����8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@DB%�s�@@�H��DL@BP -��@C(��,�@J�%��`@I�_�^P@S���3�?@V��oU @W&w9��@W�1᝛0@X*�W|�@X)�yxP3@X;R;���@X5buO�u@X+��Xk@W��:�@W���m�L@U#�
@U��iě�@U�[x+@U ��"Y�@S�B��@R�K9�N@R��2�@R�m@�@QΉ
oh�@Q��l�et@Q���F�@Q���&ϣ@Qs���$@P[f�0�@N˨�!�@MzS���@L+خ�:P@K�����@J�W���@I��ǡ[�@I�ME�@H�zD�0@I3���S]@J�0�vk�@K�S'�@M�
e�\@P�M+� @Q�2W�,�@T�!��p�@U�k}V��@UM�!���@T�Y��+@T]A�U�_@S?�yd@Q�s��_�@Pl=��@NrB9�1�@M�X#�@L��M�@Mq�p\�@M�4c��@N��䐿@P8�]�*@Qe��9@RQ�phl@S4xl
O�@TA�����@U=����@U��q��k@VO��a8�@V��/��@V�lO�3I@V�b]-_@VӐ&wz�@WZE��@W�+!7�X@W�7���X@W�"!��@W�/��@X�\��@T�,c��@O���0�@P�Ƴ�ܼ@Q&4,�)@P�I���@M��^����8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@D-v��N@@פ�B�1@B����*@B�����@I2`���@GSח<W@S�T:���@V3
���@W&d�Ȕ�@W���a �@X}��|�@X'�F�D@X-�(��@X0G>��@X#�\U�m@W��Ψ-@W��-�%1@V3Zو@U�����@U����@U1xI�)@T�	^H@SD����@Rء�I9@R���z�@Q��)�j�@Q�W<L�@Q����­@Q�][�2+@P����@O�ʝ"j�@M�� �@L����{@KL����!@J"DC�̼@I5���@H����� @G�aQ���@GH�|���@H �S�;@I�:Y�@J^{��a�@L��Z)&?@P���kP�@Q�f�H�P@Tg�Cҹ @U�
�Ɋ�@U](1��o@T�����r@Tx	��ͻ@S�j�mw�@R3�9%(@Pۙ���@O�V�b'�@M����:@M��"�@M���AM@N'�7RD@@O�����h@P�%�2͵@QRl��&@RO���a@SAГ��@S�P�bV@T��Ę��@U�尯's@VN�	�E@V�(��J@V�,׫}9@VÖ��c@V�	T�`�@Vڴ�ܱX@We�ݭ9�@W�_��X@W���4{�@W��P7d#@X����V@U��UN��@Q�b�{�(@OOʚ!�H@N_�\�[@N'k��8�@K�[����8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@D���_@@�ens@C�
%�@A�*~1X�@GRʕ��g@F�_OU@R�����@V'��F�@W-�m��K@W�߁@X�Y��(@X �⢪C@X|���@X��|"�@X!��]@W���ř@WQXC㘻@V~�;c%@VG�L@V0��m�@Um����@TF��_�@S����*I@S`n�؉�@R���+I}@RC2oh�@R@��<@RV���a@Q��V��4@P����Z@N�uk$�s@L�GՏk�@K`�����@J
k3���@Io�IQ@H��m�e@GƑ ��@E�/��!)@F"Y&b��@GntҰ@Hg�MG��@I��߉�S@L�z�F^E@P���;@Q�����?@Tt� �5@U� �:��@Ud3 q @T�"q֋�@T�N4��@S��c~ao@Ri-�%�S@Q$�t��@O�H�8X@M����O@M�a��@@N����@N�\�TP@O��3�X�@P��1���@QS�1��@RSll�[@R����9@S�f�JU_@T���u�@U����B�@V/K�y"�@Vk.��@V���[j�@V�eoO��@V�ǀ���@V���̪8@WD�	�-0@W�����@W�$�d�x@W�]T���@XY`)�:@WL��K�@Rh���P@Lg-�d�@I��s��"@H�G��#@H�͑�0���8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@C��b@A>�$2�@B�o8�C@A�����@D�>�@E��`ն�@Q""+[��@V<I�E�@W1�����@W�<ʢ�@X����@X/�K��G@XsŃH@X3s��s@X���@W�J��@WX����@V���@V�q6��a@Vn&j�W�@U�� O$	@Ta���@S�s U�@SX�'_@S �ѤH�@R���k�@Rq{O���@R*�ֵ	@Q`���a�@P��#@M�t��@Kxy�Gs@JQW�}�@I'v��@HQZ~t@F���j�C@Fe���dC@El;9���@E�mP�@F���@H@o�9�@I}5�u@L�m���@Px2��c�@Q�.p�k@T�&�F1�@U�z�ٺ�@U5���@T��i���@TiN]�6t@SY���@R3����@P�s?l�@O�Rd��a@M��-�a@N=~�p@N��~�ɣ@O��}�@O�D���@P�G���@Qc�g%s�@Ru����@R�����@S���2�@T���C"�@Uf��+�@V3�k��@VR1��@V�����@V�Ŀ��@V�,�M@V�6�#�@WCrӆ@W�<:�d�@WĠ R^_@W���$�p@W����-5@W�G)�@R��0�@M����@JX*�%Y�@H�x_mr�@F5q�ƫ/��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@C����@AN�6�@B��%`P3@A�4H2I@D��=��@D�-	
)�@M'�1�,@V1���8m@W ��e@WşnG5}@X �9�Q�@X^O-Z7@X }���@XҲZ��@X�+�[@W͞^�ͨ@W��U�{�@Wf�[25@WPy�,�@V�ѵ��%@U~ҡ)��@T��o��@T6�Qͭ�@S�'⟑C@S4�ZS9�@R���1,S@R��~�@Rq.�ѐ@Q
��8�\@OT�o�Յ@L�����@J9�X�u@IC<;@Ht�B��k@G�D.�ŕ@F����s8@FW-�Qp@E�o�ƌ5@E�{w�@F��sTw@G� s�Y4@H��n��-@Ll�dـ@P��$6/@QZ���@Txs��7@UYFs�?@T�F����@Tv?c�+%@T e��@R�V���_@Pܰ+K��@N�ՖƔ�@NꗮC(3@M��(&uc@Nƫ7t�@N�|�d��@OH�'�@P@)�p�@P�WzJT@Q�`(`�@R��� F�@SKv@S���ܒ�@T���I�@Ut��P@U���K�@VT�b�%@V��*+õ@V����P@V�t�)(@W?l�@WEfT��@Wh�Z�@W�PV^[�@W� �@Wͷ��^@W�o̩�\@S�2�^s@N6z�3�@J�)@I[�u�@E������8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@C�5�0�@AnNIB�@B�;_,@BP�띍@C���>*�@C�G,��@Hv���@U*�R�,@Wv��h@W�=��@X%�D�5@X�>.��@Xc�ϓ�@X�t�@X-�?kl�@W�)Lc@Wߒ	2[�@W��t��P@W@//Om�@V��ucL@U����@T�U�p@Tl.�@S��#��O@Sf�Dh��@S=��[@R��<
�@Q�K�c.�@P�B�V+9@N�！u@Kol����@IJI�<-@H���K@G5g��ع@GM��MT�@Fl�1�]3@F_)�(y�@F�nF��@F]��F�G@F�29�4@G,��@Hj4�n� @Kʒ���,@OxJKDw@Q�Μ�I@TY�w��@U-ּz2�@Tm޳���@Sw�;���@R�	t��@RA��J\@OǠ����@O3���h@N��)��#@L�kO���@MS�0W@NR3�C(@Ov��B�'@P��@Q6�+�1@Q��yo�U@R�R.���@ScA*�~@S����@T�
�
��@UW��Z��@U�z{�5@V>���!}@V�)E?�@V������@V����k@V��n%�X@WD/�s@Wr"��7\@W�m9ْ�@WӔ"<�Q@V��v��
@V8"	2��@U^��g��@P�*!�T-@J�����4@H}Ź��@H���RU���8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@C�&��@A������@B�q�~ @A��9�
@B҈J�z�@CU/� -\@G�*1��h@TC�#�@V�dTѓQ@W��O��	@X  V��@XP3�QU@X	de��@X `�@O@X%�ч%@W���^&@W��gI(�@W�_d�m�@W8��qt;@V�J��@UᲭL8�@U1����7@T��_�Bt@T��-�@S�F��|?@S+��a��@R��Ι�@Q�GT7�@P_]`�D@Mop�@Jp^����@H���z
�@Gk螑��@F�����@G����@FY�y{�@F�)'Λ�@F���<E@G�VE@G�
jM�}@F٭��-�@Hy����@L�b&�@N֑��c�@P�xTΌ�@Tt����@T�cM��6@S�����A@Rp����@Qot'<�i@P�Jc�@Ps��k4<@OS���	@ML#s��+@Ka�[p@K��8@L��{y@N�?�+` @O�Aq�	@Q�o��(@R �^�m@S+0Mrq@S��	c��@TVf�:�w@T�tf6��@U5-����@U��`�'Y@V+וs�@V=��ү@V��Wx�@Vԋ�ə�@W�B�Wa@WH�Z<��@W~Q���@W�o�O�O@W��Vw	�@T����@UU��I�H@V����;j@Q������@N<L�Z�l@G�I4�F@GȉjC���8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@C���ry@A�.�1K@B��7H+@A�[x��@B��GX�@B���J3@F�)w��5@R���@V��f�X�@W�B5M@W�1Y�=�@Xg(S��@X�BA��@X��P�@X��]'@W�Y���]@W��
ǹ@W��v�5�@W$�b��@V��Ӯ�@V=�H�!@Up�8c0@T�k<~�@S�3��a)@S��`�@S?O�Z�@R����m@Q|G\+�@O�[��{@Lx���7@I�"7z�/@H!=���@G;���@G"Ư�@Ge$23�@GKvJ�(@G���gs@G���G[�@H=�G�?@H�����@G��U�9@H�J��MW@L5=�A�u@N�x� �@P��)@Tp�8J"@T��� �7@S�j��@Qba���@Ps�J��@OSzS}�@N)�6�xm@M��C��@Je
̵�y@H�.:u��@H�#s�>�@J�PNYO@L�Ϛ�@M�E�3@P�_�F��@Q�*\W��@S�x@��@S��m���@Tn}��MD@T�d9;@U�/�@U��n߷�@V�ttQ@Val9Ե@V��b#�=@V��^�@W9�㲘@WK�>[�@Wk��l��@W���vI@W�]@�Q@S�����y@UO����@W�Wci�@S��l�/.@P�-�h@Jk�!`��@F2a����8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@C����@A��-O@B��c_�@A�Kʕ\i@Bi�y�@A��%�:�@C�����@P+�夏e@U�[g�p@W~OzJQ�@W�y�^�T@W�k�jf'@W�V����@W����S'@X����@W����!@Wʆ:dbX@W���D@W�b�-@V�Ȓ���@V?.\�E�@Ut���Q@T�,��ߟ@T�$.e@S�-��"S@S*\s��@Ru�8�4@QA+�4}@N�����@K���Tٻ@I�!x[@GZ!�}{@G1��B��@GqDQd@G�$��`@G�[���q@G͂��a!@Hw��Ĕ@H�o���@IV��8s@He�<MC@I��>Qw�@L8�9�c�@NE�'��@Q!��~�@Tx��@T� �Ӱ@S<͋5aO@Pۮi��@N�GFs:�@MO��|i@K�%�$�@K���L+@Hl�`�|@E�_��@D!�%�@G�C��#C@J�0�bw�@I���`_�@PU��	/@Q��mc@Rǖ��� @S��Q�3@TJ�7Y�y@T�@�/�@U�
���@U�ZWa��@U��pT�k@VV���{�@V�Ż���@V誥r׽@W	�)>�K@W0$YP�|@WN'�+�g@W}s'r�@W���@S����c*@T���9@W�j��>�@VT�a^�@R!+��6L@K=)�xG@FP�����8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@Cc�w�@AԳ��SD@B�Њ�@A�d$|@B�v��@@�o��{@A����@H�ħ|�3@TSD2B�{@WN\*��x@WӳG���@W��_[�@W���u�@W�/G�� @W�F���@W�H˰.K@W� WR&h@W����@W@%�j�@V���-`H@V5hkְc@UH�Ph �@T�m�_��@Tn���b�@S�4��y@S<Y�Ay�@RC���j�@P�;�┵@N5���O@J����q@Hg���I�@Fի�) 4@F��n%@G�r�@H#�[�h�@H�E$ό@H����?�@I��T��@I�݌�S�@I����r�@H��L���@I��� "�@LcK#]�_@N��;�-�@Q��t}ǫ@T�e1o�@T�j�܏@S�i
��@Q�_��� @LA��1@A�E��w@?����@A�����i@CG���@>W6���<@8�Sg���@@>Z�_�e@Gۨ:�L @I�0��0@P7/����@Ql�ʸdc@R�����i@S���g&�@TQ�E2ZG@T� �^�@U�{�4@U`��X�@U�B"
]�@VQ6��\�@V���+�@V��"Ry�@V�J�I{@V�.�tp�@W3K)y�[@Wq�.&�@W��>�Rm@T��)eA�@S�r �)Z@W��O�*�@W����2$@UQBP�@M4�z@F�$]�7���8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@CH�-x��@AЗe��@B�y_7 �@A��̦3
@A��a�;@@DW ؾ@@o �Q3.@D�����@RT�f0��@W
�i @W���Q�x@W��֋@W��U�w�@W�ZP��@W�� @W�]jZ�0@W�i�4�@WOZ[k-@V�Չ���@V�`����@V:���h@UL�!�@T�E����@T��B5��@S�~-l�O@SK�s@R<G=W<@P����@Mt��@J-�c=mM@G⋎�Q@F��/�,@Gd��}@G��u�YQ@H��o�:�@I(��$��@Ig��,�@J�`g�~�@K)b�h%A@J��W3��@I\pK��@J�˿��@L��K��@O\�{Ta@R=�;�z@T��eC��@UD�*%@T�#�`�@Q�5� s@E���;Q@;8%ɔ@<�~��@=�)`�)�@<�& $b4@9���`�@6�>h߸Q@6�%۴8@@�����@H��~)K@N��7�,@P�����5@R$�h��h@RɫN�-@S�����-@TX��/@T�&�(��@UH�U(n@U��Ѧ��@V+o)��S@Vq�K�k@V{� ��@V�2��q�@V�>C�$@V��>_]@Wu�>�y�@W�%�-��@U���$6�@Uc�-�s�@W�B_u5_@XKz^I!@Wh=�aM+@Q��)�@H�E�?�T��8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@C/����T@A�1��;�@BK�DuL�@A����@Ac*\�,@?3�Q��@=�ᕎ��@B'5`#R\@OR/�p@Vyŋ��@W����yx@W�	֐��@W����@W�e@�@W�( �m�@W�~6;@W�+͙
?@WJ��z��@V��7�@V���V�p@V���b@U}�A�@Ur��q��@U���7�@T�Z9s@S7�<�X�@Q�/Ԡ�@P�a�#]�@M� �&�@I��9��@H A��Ճ@GR,����@G�|�_��@HcH�p~�@Iy�H�z�@I�N+[H@J���<�]@K�ľ��@K�W�ȉ�@KJ}��3�@J5�N��@Jb��5+@L��ʆ��@P@dB�R�@R�:Y�5G@U�Hus�@Uu5�q@T��ٜ�h@K�}SȒ�@<��g�K�@8|Ǟ%��@:l#t !(@<j�E�[@<���~@<�!5�@7υr_�@67KR�q�@7�T8��W@CO��@I��<�7�@N�|�"9@Ql�I^5�@Q睕V(�@RO�4��@R��NI�@S�1�S�@T�GL{�@@U�f=R5T@V��S�@Va�(P��@V7h�C�4@Vt�cV�M@V�`��G@W6d�hk�@Wv��**�@W�'�/��@W�U6	�@WL�N!�r@W���+�?@X@�ڷ%�@XKg��\Z@UHL���@LjH����8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@B��`�3�@A��>��@Bs�:�@A";e�F@@�rf�=@=� �v�@;;��V�@A�?��@G�$���@U��o;��@Wa��b�@W�;��@=@W�SHE@W܅����@W�b#
�s@W���ҳ@@W������@WA�� ��@V�k��@V}�[DT@V'
���@U��K�c@U�{�x�S@T�/k�~�@S�L�%+.@R��Z�@Q�4s0�@PM���y/@L���g�@I�&���p@G�I�d,@GבcL��@H~��dp@I]�f�0@I�����@K�6q��@Ks�&�LP@L6J�dU@LnSڞ�@L /+�Q@J��k�@J�K��g�@M��o�_ @P�j���@S��d���@U-�*�@U�;P���@S�M����@F�ĘF�M@9Ae��%@6����|@8�S\�X@;!��J�@<��0L�@=��K�@8󫡳�)@6���h@4�^G�@6�s�~�q@AY0�}L@G���@Oy����@P�iK�]@O���@P/�7��@QMÍi��@T:����@U��)�@U�&��n@U.�&T�q@T[�K�'@T؈~R�@V��IHT�@W9E�i�@We��vcX@W�F}%M@W�sIo�@W�i��@W���$�c@XB�$�a�@Xp'B89�@W�s#5@P.ˣ���8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@Bڋq��@A�a0c��@A��N(u@@����@?�|@��@<�>vQ�O@:
���@?U?<�a#@E�O�F�@TR�G#ޤ@W!�Cp�@W�d��ͤ@WД#"r�@W���!,�@Wר�~e�@W������@W��!˴�@W&���[�@V� ��-@V0m�q.�@U�Fz�D@Up9���@Uƥ�W��@T�B�F*�@TE���e@S1����@Q��]�lp@P.�N"�@L�;Y�Q{@I�Yd��@G�r���@Hp�Qf�@I6�C���@J6ɉ�-K@K�Tf��@L/�	��@L�'M��}@L�8C�@M�4���@Lv5	qA�@J�16��@Kp����S@N�����@Q�v��@T"6Z���@Un"Bы#@UN[p���@R ���q�@A�P��@7*=sD�@5V�k�L+@6�f�e @9ܧ��U�@<��
z3@;V_BJ �@7�׌��a@5����#@4�F�T�@2�p/]@7�M��0@E�V���)@K0|�s_@KoQ*���@L5����@L�4�~t�@P�Ko��@S¿��tt@U9�@U���@Th�r��a@S��Kk�A@T#3�<�@U9��5~@U�O��@WU�㚌8@W�H��4@W�۰F��@W�\�A@W��_Ǎ�@X:��Z��@XWBUZ@XY~�ys�@R��ӈ���8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@Bˠ�2�y@A��sUQ@A��ќ��@@6�	�[@=�	�ٽ-@;>�l���@9;���+Y@=�x��pi@DZ#4��@S|�&�4_@V�v�^��@W��\�b�@W�9��fE@Wѹ|My@Wĳi��c@W�=3 �E@Wm7aR7@W6(���@V�ݗ�H�@Vn�ȉ@@U�1W(k@U�;�u�@U�x5>��@T��=/@S�:SE��@R�[���@Q��M�:�@P�ᱼ@LIE�p @I��8�@H�EW���@I�\�D�@I�c�Ѱ@KB�W]�@Loo[��@MȪY�p@Ng��^��@N�����@N����'@L���?-@J��cͺK@K�t9�VY@O�����@Rz��JR@T�ڂ6��@U�Z��@UHI��/@Q��9Kj$@C+�O���@5�/�DS�@3�ʞ�P@5	�kr�@8��M m@<�{���@;����-�@6�\Ɨ�@3���r]d@2��x-:�@1�c�O@2�J�ð@B���^\@I��5K3@K�͏O�@L�o���@M��}%#@P�7Ad�@S�1�vUc@Ug�h۞@T�<��3@Tt�5�k@S����@S�[��@[@T{�8��@T��nlL@V�0�1�@V� �-�@WM�����@W�0��]@W��O�@Xc R�u�@Xeb J�@X��P��@U��-5���8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@B����Y@Ab�'N(@Aa���Z�@?gj[M�@<Zrym��@9ѴiD��@9
���m�@=�
T^�@ECP��z�@SNǊ/H0@V���W@W��9l�@W��.F�h@WÙ��$�@W�,�/r�@W�a �u0@Wp�C>4@WO5l"��@V�UU_4@V��@:m@V������@VZ<*{�@U�"D��@U��c@T1̀�vI@R���폹@Q��K閉@O���V�p@K��nn�@I��\?3�@IJ���H@I�9MF?@J�gix� @LR?�+@M��3��@N���?�M@OZ��م]@O���\@O�D���@L��6�C@Kt_�z�@L�bE
b@PCQ\}̊@R������@T䏼f�x@U�=���@U��Z��@R`>_��5@D���N}�@4\�E�0�@1Ma�/@4LuG��@8�*S�@:�HI��@;|�F�"�@6PwM5٘@4����r@1�b��@0=�*ej@1�7��i@9��i�x@F���GN�@I����}u@NQ��V�@N�'�}�@Rfp�`�;@S���u-@T���`ū@S���o�@Tr���K@T=�^�5�@S���`E@T�� ���@S���w�@V�l�7� @W��/iE@W1�ƞ��@W��@ߒR@W�6e�$@X\��)��@XO�I�!�@X��,�T@X���~���8     ��8     ��8     ��8     ��8     ��8     ��8     @G;떽�@B|d��W�@A?"�˹�@Ab�@>�1��@;)S��t�@8z��5B}@8����C@=�遗��@D��\I��@Rۣj�<4@V�odǀ�@W��X��@WǱ$��@W� ���M@W�_?�E/@W�����@Wq�����@WMQ�*I@W5�o���@V��4|u@W����@VA�+�,@U�^���5@U)k�|mt@T?!$�r�@SBhu߬l@Q,��@O���@LIb$��q@J_+��Q�@JY���nO@J�&�!��@LX���H@M�W��@O\]�8�@P$���31@P[��[�@PZ�B���@O����}@Mj���[@L7ug�E@M��� C$@P�u�%Q@S=Gnʂ+@U#��ʇ�@V ���@U���58@R���H@A֢kq�@1اЀ#�@0��m@1=�"�@4���.s@7^��?�@7�W$�0P@6iP�v�x@6��P�M�@3N(P=��@1�V�Aȗ@2�w��T@:b�Ue@D��q���@J3����@M�e��@M�0?B@QNe< y@R�A���@R[����@S��W��@S��1�R@T_e�ާ@T@���@SO�jG��@S�sʩ�-@U�<V�;@W�P���@WO���]@W��̘�}@W��k�H�@X7�Q�8�@X]&@��q@X�t��@X���gj���8     ��8     ��8     ��8     ��8     ��8     ��8     