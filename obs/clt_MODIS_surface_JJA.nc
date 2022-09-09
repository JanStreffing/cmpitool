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
add_offset                   NCO       _netCDF Operators version 5.0.6 (Homepage = http://nco.sf.net, Code = http://github.com/nco/nco)    history      (Fri Sep 09 14:28:10 2022: cdo timmean clt_MODIS_surface_JJA.nc jja
Fri Sep 02 14:51:40 2022: cdo splitseas Modis_Cloud_Mask_Fraction_ymonmean_cmor.nc Modis_Cloud_Mask_Fraction_
Fri Sep 02 14:37:47 2022: cdo mulc,100 -chname,Mean,clt Modis_Cloud_Mask_Fraction_ymonmean_r.nc Modis_Cloud_Mask_Fraction_ymonmean_cmor.nc
Fri Sep 02 14:24:28 2022: cdo remapbil,r180x91 Modis_Cloud_Mask_Fraction_ymonmean.nc Modis_Cloud_Mask_Fraction_ymonmean_r.nc
Fri Sep 02 14:21:08 2022: cdo ymonmean Modis_Cloud_Mask_Fraction_daily.nc Modis_Cloud_Mask_Fraction_ymonmean.nc   CDO       @Climate Data Operators version 1.9.9 (https://mpimet.mpg.de/cdo)         time                standard_name         time   bounds        	time_bnds      units         days since 2002-7-4 00:00:00   calendar      proleptic_gregorian    axis      T          �4   	time_bnds                            �<   lon                standard_name         	longitude      	long_name         	longitude      units         degrees_east   axis      X        � ��   lat                standard_name         latitude   	long_name         latitude   units         degrees_north      axis      Y        � �\   clt                       units         none   
_FillValue        ��8        missing_value         ��8        cell_methods      
time: mean     title         Cloud_Mask_Fraction: Mean       �� �L        @       @      @      @       @$      @(      @,      @0      @2      @4      @6      @8      @:      @<      @>      @@      @A      @B      @C      @D      @E      @F      @G      @H      @I      @J      @K      @L      @M      @N      @O      @P      @P�     @Q      @Q�     @R      @R�     @S      @S�     @T      @T�     @U      @U�     @V      @V�     @W      @W�     @X      @X�     @Y      @Y�     @Z      @Z�     @[      @[�     @\      @\�     @]      @]�     @^      @^�     @_      @_�     @`      @`@     @`�     @`�     @a      @a@     @a�     @a�     @b      @b@     @b�     @b�     @c      @c@     @c�     @c�     @d      @d@     @d�     @d�     @e      @e@     @e�     @e�     @f      @f@     @f�     @f�     @g      @g@     @g�     @g�     @h      @h@     @h�     @h�     @i      @i@     @i�     @i�     @j      @j@     @j�     @j�     @k      @k@     @k�     @k�     @l      @l@     @l�     @l�     @m      @m@     @m�     @m�     @n      @n@     @n�     @n�     @o      @o@     @o�     @o�     @p      @p      @p@     @p`     @p�     @p�     @p�     @p�     @q      @q      @q@     @q`     @q�     @q�     @q�     @q�     @r      @r      @r@     @r`     @r�     @r�     @r�     @r�     @s      @s      @s@     @s`     @s�     @s�     @s�     @s�     @t      @t      @t@     @t`     @t�     @t�     @t�     @t�     @u      @u      @u@     @u`     @u�     @u�     @u�     @u�     @v      @v      @v@     @v`     �V�     �V      �U�     �U      �T�     �T      �S�     �S      �R�     �R      �Q�     �Q      �P�     �P      �O      �N      �M      �L      �K      �J      �I      �H      �G      �F      �E      �D      �C      �B      �A      �@      �>      �<      �:      �8      �6      �4      �2      �0      �,      �(      �$      �       �      �      �               @       @      @      @       @$      @(      @,      @0      @2      @4      @6      @8      @:      @<      @>      @@      @A      @B      @C      @D      @E      @F      @G      @H      @I      @J      @K      @L      @M      @N      @O      @P      @P�     @Q      @Q�     @R      @R�     @S      @S�     @T      @T�     @U      @U�     @V      @V�     @��     @t�     @��     ��8     ��8     ��8     ��8     ��8     ��8     ��8     @T$R�H`�@M���P@JVx���@U���(�@T�n7xOU@Vt7�^��@UQX���N@V�Y�?�@U�<�1s@W߼��@X"YXŹ@XHM3�@XE��T�@W�v�g�W@W�TNU�S@W��k@V�yD�$@VS�)�	P@U���@UN�@Tx���@S�e�:&@R�����@Q������@Q&ޗ]�K@Q"�m�@Qq��3�[@R�]![@R�cM!8@Sz�+��@S珋���@T~1"I|�@T��m8#`@U���V�@S��BX�@Q/Q;Α@Mp�i�@M�d�{�%@RD�ϧ!e@T�m*���@TOM���@VWj�	!@W��H9�@Wp�ധ@U�c�d@Qa�BEo�@Fg,=NZ)@9$��L��@01�� ZA@'�J���@ ��	�@�Y?W$�@�XRF�(@B�K�N�@%g+�2i@0+f�p1�@;D�^�@? it�9�@@-ֳk�@A��nd9@MKSYo,@O�e�:�4@Q��ȓh@O�_�Ėg@T	xtF�@R�^��97@Q����Fs@R���M8k@T-r�-_1@UNk�D�@U��Kq@V��l���@WbM�1��@W�#����@X4�"�@W�� �@W|7,���@V�Q�|�@Tu9{�wE@S]H<k��@Ss�T��@S�d�*��@TxvY��@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @S���ie�@Ow?��@F���^A�@S����#@T�=0S@T�b���@U��'\߲@T�y(�X@U�����@V��R,o@X�#r8@XO��� @X��4��@W��6@W�[��?�@W�s��@W67���@VGڻE�@@U��$Ja	@Um�(�@T|L�-��@Sʪ~�L@Rӑ�!sG@Q�h��|c@Qd��m�@QO?<��@Q��-@R�� �G�@S,����g@S��+g�[@Td;�� �@U-j��@U��٠��@U��H��T@TAA&�@Q�=���}@Nɐ� m @O���6�c@S��%/@U'��N1@U{��~f�@Vz�]��{@W�>��@W `8m@U�3B�@Qsr���@F2B����@8�̺0�5@0O#$�2�@&Y���@#����@)8���@u�#P��@ƈS���@!ls"Ǝ�@.���g��@5a�β��@@ֳ}��@@*Һ�zx@D�����@I��̘JE@No��]K@QE�'�~/@Raܑh�x@P|3t7�@Pj���<@Qь���8@R��b��!@S�/!�g@T˗���@U��=��\@ViZK�p�@W*[G]�p@W�z��+@X	�}9�@Wه�[@�@W��S)J�@W(<en��@U cDNf�@S�j��ce@S�v���@S����3@T����K9@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @V�y�xI?@Q��R��A@Fo��*�@R��i?�@T�i��@T8�lJ��@U�Q���@TΌ�t��@U����%@V�X��h@X#J�,�(@XU��uy}@XR�z�@W��1�zk@W�}��4%@WXV>h��@W�aNu@V]]�kU@U����%@U)���pw@T�X��P@S�e�6L�@R��r��@Q����@Q>�ۧK@QJ �Od@Q�\Z�@Rx#��`�@SW
{�J@T	s����@Tƹi#W@U��Mo~�@VHL���@V(�p���@T����@RM�����@P8�X^��@P�h_�@SԈ�
U\@U��Z�p@V�/��[�@WV���y@W����x@V��TXfC@U����gM@Q��B�5@F��x�@52��r��@(�.h@$����$@#�.?*�@!X��0��@�>u�f�@����@�U���@&�{�ţs@1�j����@@�T*�@>�{#P�C@AwO7B�@C��ߦ��@L>�\%��@Q�G���@R�>����@P��^7�%@P�\�@Qh���@R6�EEn�@R�f�,�@S��t��(@U>����q@V ��B@V�as��@W��M�@W�ɽ2�@Wۿf���@W��B�%@WH̠��H@U���L��@S�̵/'@S������@Te=g�z@T����W@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @W�:B65@T��s�t@H� �JF�@R}3i��@T�%4a��@U'(��,@U�#�w"�@T��N��@V ��}`@V�V$�{+@X����@XMRS3�U@X+/k&]�@W�Ep���@Wo>O�%}@W���!@V�lQU�@VF�n?�	@U�ʺ���@U�@T����@S��p�@Rl��Bm�@Qv���@�@Q >�O�@P�G=#�7@QWY &�@Q��ո��@RX�z*?�@R���d E@T'Er��@U�lA��@Vqq}Bs@V���vM@T�uq�C�@Ra��=�@P�,�C@Q��B'��@T�7��@V�*-���@W�5���@W�����@WbzQ�ߥ@W�g��@UޞMnɑ@PМ_��H@D�DĎV�@3}?�ѰT@#0�l<0�@ ̆�\@-6��W?�@��:��y@����p@VZ�"OZ@��#%�@!M�i��d@3'\1�_�@?5g7���@;�w��m@>m�=��%@Cw�ө@J�`jh��@P����@R�P�@R3�����@P�^Ѳ�@P��<�\�@QG[K��@SR�ɜ��@S����|�@Te���UC@U��^$��@Vx����@W^J�R��@Wܮ�u��@W�&��5T@W���p��@WE��y@V�����@S�Z�o@S�ANWZ=@T%����@T��OaH@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @V|5� Y@U�9���@H[׷İ@Q�T{�x'@T����@V�a���@UǑI�@VZ}U���@V,wxO�d@V�8�}@W������@XD�Q�u@X!R�͎�@W�$�ͱ�@Wk`Y��@V����8@V��dGTx@V;;�U,G@U��CIŋ@U[��y�x@T��Z�@Sc���H@Q�<�X��@PƸj��@P:�jdٍ@PA��`/@PL�>�@P0�T�@PS��&9@QI���@Sg��@UIZ��@V;hZU�@V6���@T���b�@Rt͍,o�@Q��� 7@S�Z�p��@U�`�(@W`A_��@WԚ��{�@W��k��@W�Q8��@Vڼ�'	@T{��^�@N�۷&�@@��z�@4��4�@"���@Ֆ]�x@ uLN��@!��8�MX@� @����>R@���U@!2bƜ?A@2�N>��%@<���%�(@9y�D���@;06�4#=@D~�=�@L����y�@N��z[o�@Q9�n�]S@R��v#\@Q#�P��	@P�o\0:@O������@S]��!�@T9���u@S9�2i��@T��Ѩ�,@V]����@W*���߻@W��Gj�@W�ߝR�@W�}dt�@W�4u9�@V4-�l@T�D�H@S��#e�	@T74SQ?@T�i�!�@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @Vq�\h!@V����@H7�B��@QO��L�@T��LC��@V�6�Ͼ�@U��D�@U2���@V,%uԀ�@W���]@W�=�l@X>*V��8@XKE�e@W��H��@W�`��h�@Wjfhx@V�F.��(@VT��A�Y@V��g��@U�SĠ��@T������@SȔ�@Q^d���@P�.�+�@M���bPQ@K�eC۵@J��M�@J����c@L��0���@PД��@S�ć|��@U[#�'@UZ�U�@T���k�'@S�[h�j�@SIc�H@To��@Vz`Q�^�@W�N�� �@W���Nd@W���"��@V�*MxÝ@W}����@U�ۖg�[@S�����@MLDf�e�@:4����@- �}S@�}�"@/�ڷ{@x�G�=�@_<	>M@;6�l�@��/�p@��z��@'�;���P@0	@��u@9��U@@8�zw �@<���ۊ`@CJ��&co@K�i�@O뛣蕈@QZ*���@RQ0����@Q����P�@QD�[@�@M�W��@P��"�b�@S��Uf�L@Rv�(��	@S� S�v�@U��
��E@VؽZ"�I@W�����@W��䡷�@Wʷe8�@V�'%Y@U�*�א�@T6-�$�@T�^�Vk@THJ��-@T���ƒ}@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @W���� @V��~$�@I,F��ro@RR��D�@T�#����@Ủ�;��@U͐BW��@V�D���@VNs��%@W(8ң�4@W���`@X.w�j�@W優��@W��:�S@Wn�r��@Wc#2kM�@V�$�dA@V��z��@VU^��`{@Ut]�Y@TA1�3};@RR�6f�&@P+� �*@Lp
��sq@H��!�@EIr�@C�x��d�@FJ�P8J @L�d�|�@B=(��@D��/��@N���9 @ST@��[@R�E��@S2xO#�@S�u��i@Vի��L@Wϩ�pV�@X4���@X�p@�@W��*�X�@U�'Q:h@U�VLɎ-@V6a�>��@T"�P(��@L�z� �@8WL���@(���+�@�&���@���.Ty@-h@P�D粟@����$@�(??�l@hX9I��@5�l��y�@68�V���@9o)7��@9'����@=�E��G�@B���4��@K���j�@P-�,ڦ�@Q���@QǠj"\0@P�&
g�@Om��K��@O^x�9� @P���N�1@S7�P` @R��թ�@R��囌!@S�Wg��@Vz�xs�@W�XH@W��ݻ�@W���U�p@U�����X@T�A˃@TX�sn3@T)�ϥ@TV��ұ@T�Y�H�@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @WU�ٍe�@V�u��]@I�=)@Q� �!�&@Tɮ�죘@U`=��,�@U�x����@UR"~�E�@V�>Q^�#@W^��&�@X%bL}�@X,<�3@W��CbE]@W�@5�@Ww�:"/�@W�x5R5@W�A��@V�[��_@V}3��V	@UKLI&�T@S`���Ѡ@Q p�tS�@L��t:TI@G>��X`@Cv�.8c@?��yI@>�͌ �@?���}<@��Jt_?�ԏ���@ <g�٥�@��F��?@?���w/@Ie�Qb�@N��t��+@R�w���@U� 
={@U+{QI@W]e�n�@Wm�C�o;@W*�h���@U������@T��E�q@U�����?@SY݈�j5@L���qy�@8o�}eo3@*I;�m@\r� @��g@	'd7�b�@����@
�>ha@�B�9�@ �k���@6�,�܉@4���d��@5�P��OX@9YOE�Y@A���D3@=r����o@J
�� �{@PA�(|4�@P��NfI@Q`���u<@O�X�S@PQ�fX�@P1�t��@P��@l��@RfU0xw@RZ)��G�@S`�͑@R�Gk�1@U��M��@Wi���@W�h�&�I@W�/u�c@T�p�o@T��S@�@T~����@TG-y�@Thtswa@T����@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @Wu�o�w@U�y���}@F�����@Qײ���@U<h���@VT���#�@U�6iy�1@V����@V�M}�m@W�Š2��@XUi��3`@XK�K�A$@W�Ά�l%@W��!g'@Wo����3@W'd,�b�@W%�N�@V�M�bw`@V��K��@U�h͌@R��;�\@N�,_���@G�ke
�U@B���t�5@:P��-{�@%�V�x�1@o�L�C�@�Qd���@
@��L@�ˑ9�@��x�q{@9?U^�|@p+s�O@#k��f�@4l�O��@EӅ�Ս@PFt��@Rv=���@U�|ܷ9�@U�`6�@U�C���@T��?��@T�1�K�@U13{n�@S���{d�@L�6�Q��@8��G�0�@)�I��@#@�m�nK@f4qH@���]l@B��^@�I�A��@��f���@0"�kț1@4�B��@1��R�@7b�̏�@=���s{@8ᕯ k@B����@Hk��3S@N�!i|)�@Q��K(@Q<��uvs@P-5Z�_�@K��I\aC@P
�(ު#@P<���_�@P�� ��c@Qb{I��[@R�*�΋@RΌ5���@U��j��@WBv�N@W�E���@V�!�i%�@T�7�`��@T$��l�.@T���~�H@Th�1Zo#@Tx�B���@T�5'��@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @W�*y�)e@U���5�@F$u|S��@Rj���@UAQ���@U���L&@U�v3��A@U_�.@V׮v���@W�����@Xm;dm��@X`�;��@X F����@W�+E%@WD��v^�@W*�yJ9@VߙQ>�@V~�-�$@Vbc��O�@Tہ��J�@Q�)�@K�΀�@EH��Uq@<.Z���@0A�l�b�@!W��

@Ѐ���C@
��Ҿ�@%��@�x4.3@	V��%�O@��VW@�D����@ R|�0G@2����u@B8o���@P��1��@T,g �'@U(�%!�E@Unڋq�@T����ǈ@TG� s��@T�De�'@TوM�o�@S!kO�w�@LJ�e�KU@8|���B�@%H�&�1%@(%��@�@e��1�@�����@ C�f&;�@5�8��@e�s��@2���(@2�Ŭ�b�@0x�6HD4@0�)��@4S��X�@9�W��C�@Gvn���@G���5�t@K��Y��@P�e��>�@Q/�n}'@P�Ku	�@Hջd���@I�TNh�<@M�����X@K���z�G@P�qv
��@Q]�&Ω@SY�C��u@T2ړ�[@W����#@W\B��֠@V#?��c@Sl�*ku�@T%���S@T��M��@T�*��+@T�7�M�&@T�	���@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @W��5��@U=�K�3@D�XJ��@Tj%���@US�8��@V&=��V@U�X��j@V�����@W%P?�ؕ@W�.���T@Xup̗��@XW���@W�cU��e@W��$���@W?Z�( #@Vڇ�L�@V��.=;U@VG�"?)@V5J�S@T�3=�)�@P���	@F�;����@A��؆n@7do}OU@/�a�y��@׈��uS@O���Z@��yR@e���@�g�̪7@u���*@����@�P)�5@"3]?2�@2��Ze��@E9jB@R�KE�t}@U.�i�A@U��DE��@UH0C�T@U)�'���@TEa\�@T;[ �>i@T���o �@R�_ɇ�@LIK��M@9t�Q��)@"l��@��&��@�S4D?��#%��?�F���@ �Y� ��@�KTa@)���)�x@1�<e�@/S�ſha@0-��YO�@:��e�,@B=��$	�@G�#���@GH�0!�@K�x�Be@P�`��(�@Q���J�@P%xz�˭@J
�$�x@I-n�vy�@I�v,�y�@I|��$�@N�'�sq@Qˤ
�@RY��o�@S��kI�@V�q���@W(Lÿ�3@V!q��@S����@TF��@T�Q�M�/@T�K%#�@T�G���h@T���%1y@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @Xd����@U�s!�%@C����Ů@R����@U�����@V��,s�@V~tۭ2@UhT�:��@W�����L@X>��D_�@Xx���3;@X\���%H@W��u1^�@W�Mmd�w@W.֑Ԗ�@V�D�K�@V�mW�C@V��´h@U���`7S@T� h�c[@Pr[}� x@E�8u�V�@@͸3��@6?:�{�{@+�Pr#�p@!�d;�@5���.�@�F�U�@M39c�@�6`Q[@-d�r�z@��M��@dF=�@#���WP@7@��8@K�tz9�@S�x�@T�Y��@U1�q��@T�����@T8�O^(�@T+[��k@T
,y�ə@Tq����@R!D�^@I�e���@8�S�/-@"�J�]�n@���:yi@ ���[1?�1y�3�?󤌾�ӆ?��VD���@Dݎ+�F@>.��l@,�m��{@)�;���@6U�ۿF�@?@�G�/�@C�y�q��@E���@I@����E@J9	B�}@PH$H�@P}-�@PQ1+` �@PxʇD�@K��ޗ]W@LvԤ���@Op���@L[Eh�؛@O�ɘ�G�@R��K�@S��;��@Vz�C� @W0�ľ6l@V2��e�y@TVq�Yu@T\9�{@Tï��)U@T��x�:F@T�W�Z�@T�B�#=@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @V�(��J�@U�*��5N@D�A�Ӌ�@S]�ȼ@U���_�@U�ر���@Vl��C�@V��vj�@W��,��@X��j� @X��@#�@XS&rUY@W��E�@W��TQ#@WH�:��@V�H�DT�@V�}@��@V*�e��7@U[ ȓS@T�:�--@QhrI��@FW�sk�@@or��@6ϼ\A�@.7b��t@$L w��I@!�K
)N�@ ��u���@;u��{G@�l�f�c@F��T��@�JtZ@��ԛ�7@#�r����@4�\>�@�@F�޳�@Q�?��H@T�N^a�@U3vX���@T��g=}�@TDV�F@S�8���@S��=k�@S��t�@Q;���@F�V(�@3)�?��@!�>>���@I�*��?��V$\�?����x?�Y���{	?��ضC%�?�6�NZa@���=!@&Ƨ/�@#�
S@	@.i�3�`x@5��ڹ��@FK���0u@C�R�à�@J��o��h@M��#�u�@OmH�@Pw�@$a@P��*��@Qzw��@L�r~���@N0�&��@Pg�d�]@N�'܅_+@O8m�� @R
+��0@S-��/�@VOaxa^�@WKM���@VSj7W@T{�RPɖ@SH��j��@T���@T����'�@T��Ju�m@T�8%�g!@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @Wx<��H�@V{�ư�@G�� P@U�rیO@U��<!>@U��E�x@V3<i�@U�Fo��@W��zn�@X��\�3�@X�^�M@XP� ��@W��A�@W�ȁ��=@WX��<�5@V��F��@Vqc>�@U�#q7@T��3$@SaH�m�C@Q��.�@G���H}@@h����e@7� S�@-�f�#�@(\��}@(���V�{@%��-@"�[����@%�4]�@&���ɸ@"��1�K@��@��]�o;@.�={]�@A��"���@P�]v�@U���^�@U�#�0�@U8b߫Y@T���M@Ssd��@R���1�@SL&AD@P�$�ڱO@C�n�wJ<@4�6[��@"2�Ų�@����L ?�+V�X�+?�C��0�?��.m*l?�<Pn:�M?��:��*�@#�!`���@#��@">>9�i@*����@6��UF�@C,VL1��@D��c#h�@LG��D�?@L�B˼@N�6���@O		���@P�!JW}@Pd	r��@P�G|P�@NA���@�@O����@Pi<����@P�&�%��@R�ł�@S��}��?@VK���s1@W_1���@V���=�s@UK��:�q@S�Yc��1@T�䷁�d@T���}��@T�f���U@T��M 7@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @XS6C�@T�����@DL���@U�i�y@U�}oH��@Veig.�@V��f��@V>}�D@X `�[�3@X��|Z�@X���,@X^�M3M�@X=}��{@W��kJa$@WW�C6�@VإH��@Vj�Fb�9@U���_/�@TF�A�@S���c�@Q>��l��@K�!*A�@B����@:�f*��@1rN o/@-4`���h@/7��ShP@4�IJv�@+�8���@+7�~�&�@/ᜫ�]{@+���uu�@#$|i/4@THh�@(o"�^�M@>�yH@K^$t	�@R*p��@U	���~@U��JI�@S���*��@R�BBcM@S_SȐ@TIJ�k@Q�Zݗ:>@E�^�H��@4���	�@$[g���@=w�ͨ?������?�f��4�?�P\�5��?��Ƚ?�\+��@(
��F$@#�;�Y�@$i9!�P@*֞Ӏ�@8Ƹ�L�@@�!k�R@Cs�C�X-@E�d!8S@I�\Z @Mx���@N�����@P�+����@P-�J�@O���@Ma��ǰt@Nӥ,��@P}4�;[@Q=�;g�@RO6Z�@S[��H.�@VS�7¡�@Wg�-^�@W'��S;;@U��&'1@UT[߽,�@T��G1@T�;���<@T����@T����ۜ@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @V���o�@S�0��@C�ðsY�@Sv>ͣ�+@U�d�G�@W)IK�%�@V���@W���ri@X!
_G�@X�l�(@X�^L�ǐ@XW��@L�@X/�ͅ�K@W�����[@W��%.{{@W�@Vo���/@U�-����@T�8���@S��!�@Qn����@N��pM�@G�<�I��@@�^i�@6�+��?@2V
�ils@6�K���h@<�j�W@7����@1a1c�@8��2�@8-���1+@)���b�@$�f�� @%�mr�8@14l@N�@AH��A�8@Lg���t�@Q����@S.T�*�@Sm��"�P@R�̏��@S�FF�@T��Q)�P@R9�-��@H!|�#@72>H��@'R)�=3@�,�G�@@0�ﬓ?���l��[?��.��*	?��|��?�����&�@/�����@)X��1w(@(�$r�&�@2N��@>:/A�A4@>�WtJ�@;�vz��@C-��0F�@I|O4�p@L ��>5@N#9EU��@PM�)�q�@P����@P��s�@O�(���@Nj-���_@P�@\�R@QE+Ȥ&�@RY���%@S��w�ٌ@V�U�=�@Wt�+���@Wy��
�@Vsi�^x@V	��C?;@U:'E��@T�U���~@Tԏ��s@U�d��@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @W-g��Q�@S����o@CMK.��@QDT���@U�g��@V��;�y�@V���@W��'R�@W�^�@X���d@XuH�絃@XB�H(T@Xht��@W�T��y�@W�n�ج@WI��@VH�~�G�@U�曝h|@U��^�@S��1�!9@Q�ݧ	λ@O�����@K|�0�@G[��>�5@Aj+�%�e@?? �`��@AO��W@@e����@<.l��=�@8CSI[�@?�Y ���@;W��{@4���@J{@-j�A@$+DΓ�@'�2���@8�����@F)�]�#@P��|O"�@P��E0�c@QT뒲��@R�B|�v@U,T��@UQ�#�;W@R�62>@J_�5`f@:Fd�?�@*�<�� @}OB��@	�^w�`?�X���8�?�����I?�=S�NZ@o8S��@1b<ߐs�@2S|��3@,����r�@2�;�d�@:���
�@@�P"�@=&3k���@@��2�D�@G�:���@I��?BV @Ml�띋e@Oښfb8@P�Γk�@P��x��@L�v�s@O����:�@Q&z�C}@P����;@R/��@T3�Nnl@V�R�2}@W{ێH�@W����6�@V�9YG��@UێL$E`@U��;K@Tˤ��0�@T�ȫ�=�@U('��c@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     @Ty_����@C��ݰu@H��w�j�@U^��Y@U�y!V�@V6y���@W+�Jh�@X�PV�@X�lO$i�@Xt-�e� @X2�;b@W��굖5@W�A�%T�@Wa�08�@V�2�2T@U�2��`@Uk	��@T����@T0İN�C@RtOy:�@O�Ϙ��@L���Ѕ�@Jm�D���@G��B3Q@C0��@B�W��P�@B����w�@C�V`�#@E�3B	�h@C��9JQW@? �c��@?_?+�@A�����I@*��1�9@0��
��@20ZC��8@D �62�_@Ida��X�@M_��Js@O�a�e?@Rv�y��@T~X��t@T���H#�@R�E�b��@K���0B1@@ ���?@/��S�s@!���c\@?9�?q?�{�K��@�hc��@HPȿC?��]��X@1Oh�_Mh@6�I1���@)+�t��@.F䯃@8*���@B�cz5�@?���dy @D\���@F}��[��@I��ռd@M+��E�@O�_�r_@P���&@P籎��T@P��Ȱ�@P"�a,�@P�fʷ�q@P�%�4@R?e�M��@T�5��0�@V�n"�k@W{�M]�X@W�ܓ,�@V��@V"<�H'@U0�(�bu@TԸMmD@T�} �Y�@U��A�I@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @W$�K:��@Ux���V@E��o��n@M����.@U��:�?�@W^x��X@VT�`�@Vaq��/�@X8#stq@X�{;�@XeГա@X&AN�6@W�2�Ru@W{k$��1@W:��l�@V���#@U��u趃@UI:3o�@U,�/dD�@T��L�^�@R��@O�Ç��m@L���-@J���D��@GL�B`@DC�k�?@C��s�3�@C�-��lq@B��1��@G�.<$�U@G �:@FϮ�So@IT�A�@N�H��\�@IX� �@B[��o��@K�~݅�@I��"��@LY��V�@D�:��GA@E��no	@Sc���_@U�����@SW��6R@Q�pk��@Lh��C��@B�e����@3��HL�@'L��)m@'p����@7V6�u�@1� ���@�W"�:�?�0��h�@^�S�)@'2E�X�@1���@3>^|1�H@=��G}+�@A�-GW
Q@?k�	�@@�
�ӎ�@G��F�@J ,o��/@M)�S�@N������@P{[�G��@PɎT5��@Q��=�@M��<���@PD��[@Ps��W�@Rh|����@T��R^�@V�O�է�@Wl{<�@W�C�Z@W����@Vl����@UN�#0qJ@T��Sh�@T�'��@U#�f�@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @W����d�@V6�����@H5u��@OZA��r@U[���*@W`��g�@VY�	�n@VY�(s��@XY��b	�@X�C�3C@XV#�P-@X�B�f@W�
�G�@W�V�f�@W!l�!��@Vn.:��@U�.X�7@Un#U��@U2�3�@T� �L��@Q��G�r@OS�cC�@L�be@J��n��d@G�h���@D,��vD@C#t�mO@B-���̐@BK���{Q@C=
����@J%�@*1�@E�h����@F.Z����@I�DWk�@P/4�0`@R޻��]@RȞ�H�@R�h�U@N��衤@G�F�5��@P9�EK�4@T�2y�n�@R�"o9�?@Q�,_U�@N��X�k�@NDܘt@Ey�0�1s@DV{$�
5@M�\Z��q@Gx�ԏm@5��;Yg@@j��L@?�T���?�OU����?��7�L�?�X{T�I!@3����L@!�U���@@�[R��)@D;��b	@Bd�Av�@A�ۘC4@F��z@I��9��c@L��I��@N�Eg*(@Pq@P+�@O*��sP�@Ph�fe&�@Q(�p�+@Pu~C�&P@PZE��G@R��'�^@T۟�@V�E��c�@WFa�b}�@W�@jW�@W@Z�K�+@V�N��@Ue�(��@T�&N�~@T�u�Q�#@U)Qlibb@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @W��r���@Vz���:@H�L383o@I;-��@T�|v�@W��X��@V����3�@WS�G��@X^�$@X��(�{c@XR�D�q@W�ޡ�Y�@W�����@W^� ĕ_@W�q��@V�+��w�@U݁��)�@U�����k@T���s��@T0����K@RfV.W-@O��c	$�@Mn� �o@K���[�@G�(��@C�$l�@A(-#V�@?0��>kk@>gTϛ�@@A �h,ǻ@G%�Ǔ@G|�����@G��	�@F��q��@H���@L4^�Y��@P�p8���@Sʼ�>`@S�$D���@SJ?"*�{@TBC嚿F@TtyXt`�@L�����@I�,���@Gjd�4@D��Vr@Q����O@TPϲC�@J��Mzo@#KPQ��@얭�3W@x�����?�w�kj��?���N�?������?��6��@S�Q8�@��{5@@�����@G�B��X\@H_�~(�@F=ʪ �@F���ս@IK(P�L�@K̮���@M�(�(@P?�,@PM�=���@P��)P@QB�B���@P��'S )@P�[4E�@R�o���G@T�D{@V�a݂3@W-r��с@W�n]IS�@Wj5ɋ�@V���bx@U�s�$�@T��j��$@T��g�@U.�}S�m@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @WOh�iK@VZ�[�4�@J$v?���@Cقۻ[@R�����@@V?��Ff@V�n>@V���:�t@X\��G9h@X�4���@XL��u�@W�b"��@W�C��} @WJ�t�:�@W����@V�I�s�;@U�P^:�K@U��h�q@Ug����@TNYp��@R�E̿�@PQ6z��@M����nS@KJ�C�@H��ס@BA>:��@8 $�%��@2�5@��@3Qo�m��@:L�&ݚ�@B��Y�!x@F��>Jթ@G����]@F��Kr�@G�؅�&#@I��IL�@L�B���$@P��U�@T��<[@VU��i@R��\Ì@Q�}��c@OVw���@A��\�=@;Q�0f�@N�Q[���@R�.����@G
!�ư@.Odj�"@��\��;@���T��@
�̸���?�(J@z��?�>{�W�?��ۮ�?��?w���@�	_�Ȅ@$$����@:Rs�X�@J��/6@@J��O�@F"���@F�	Y�]�@H��<C�@K��Ѐ`@L��]�x@N�v��@P7(��z�@Qϲ�@Q��iE�@P�{��@QBYD��@Rs5���)@Tb�GYl[@V���|�=@W#l��e�@W�U���@W}�+f�@VםUk��@U�#,³@U�1�D-@UKBu�u@U4�V���@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @V��2� @V�W?%'�@L������@C[}Ӌ( @P>���i@U���݆�@V��WΈ�@V���W�@Xi��`n�@X�vBk��@XGNiz,�@W�H�Q#;@W�7߷�@Wn�_G.�@W6&r��@V���݁�@U���om@U��ӛ@U�A��>�@Tn/���s@RX��jWP@Pk�m�@M�K��a@K�kĨe]@ID���Y�@@��A��@2_��A�@*~╫Q@(d]l�@1U�ut�@1����Nw@=�Am0��@C��U��@F-��	@G�+���@J2���W@L�D�C@N֏���@Qpo�<@Ubr\�a@R�+
	��@Pe���.�@M��,&į@B(#����@Q}��U@C��w¦5@?h1��M@2��6��@�uy���@VgB�|-@�oY��@41�q��?�ZJ8��?��Y*�rc?�0��3@�SL��@т�^�@/bz���@:i����@Iհ��e@H+���@EJ�\q�%@E�1�$y�@H#_�m!�@J�\��1(@MJ��O@N5Dr�iD@P���@P�效WP@P�k��4�@Q&����@Q����@Q�}���@TrP?��@V�Z>Z�0@W$�ԙ��@W��X0��@W�b.���@V�&��@U�Q�`@U@caۇ@U����	@U:Ǿ9+@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @W1����)@V��(;�@O��ΟHu@DU�?��@LC�~��z@V��[� @VZ"���@V�9��	@Xq�e$@X���k.�@XO�p5	D@W�.?��?@W�)��T@Wtm�\�Y@W6+�R�@V�S�M3`@Ub��(��@U�L�!#X@U�{�f2�@T���F�@R�US�P@P���g�@N����3@LD��}��@I��X���@Cz�*�4@=X�Ǣ�@6�.y��@0U�'�$�@2��6��@)�)���1@1-x����@C�����K@F�,���@IHQ��h@L?�Z�+@MK��PS@N�A
S�9@P�'k�@R_z�v�0@S����"�@N$9%�ܑ@L�Z�#��@A��@S��!�G@A(��/ȹ@,��s���@!	qd�T@�x�c�@qDJ��@Si���3@�NO�3?��v��Q?������?��N;��X@3��{��@��#P�@'4}�8@B���5=@Hp� Y@D��_ped@CJ�E�@C�5�G,@F �T���@It���p@M�T�h@M�7r`��@Oi�N��@P�ι�OH@P�I[�vO@Q>	�Ӎ$@QS%�)�@Rc�E�@T��g���@V];ѿx@W���@W|erK@Wzպ��@V�P*�c�@U�o:��@U���M@U� ��@UAl�xse@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @U���E��@W�/��@Q&��ӟ%@D��u�E�@Kz���!�@UI��LK�@V~u� Un@V����$.@XywB���@X�`X���@X\��E@XJi��@W��1��@W��_��w@W��# @V�Td�M/@Ue�1��@U�;���m@U�:�@T�c��@R���A�@P�	�@N�����@L��Y���@H��bL�%@J6i��@J�,5$0[@K�����@L��f�@M�[~]�4@C?xH�<@8���im�@?�(Gɻ@I�T!!�@L�$W�+@Nx���e�@N����֛@P�Ç�5@Q/p�#@Q$��Wi@P�;�a��@M[3�߅@H���ab�@@��S���@P�b�"�6@GX3�FD@.7H���e@"��$�@}?��_@�̇T@��G��U@��k�@输+i @���E�@����a@�=Z;*y@!��y�:�@5(��l-�@@t$�l�@E��Y
'@<��ɝ�@@&��(4@B_�R� &@E}?+F�@H*B���@K�����D@M�ߠ5'@N���g@P���K˔@P�q�-@Q-�y�
.@Qs�G�?9@RWY"�58@T[_"�u�@V'Vv>@I@W����d@WV�g�`�@W`�^�@V/f(��@U� -N�@UCP�m@U"����y@UB��GB	@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @Vu!v0�@W9�3�$M@RN�.�&B@D;ڈ��@F@�J�l@T/���=@Vd~��@V�'*`��@Xs���@X��;p+�@Xe��2`e@X0��3C@W�a��5@W�3���@V�$�@Vv�S��@U�Ȓ�f=@Uɭ�G�@Vt�n�u@T�j� �/@R�P(	�@P��C�O@N�s"zc�@L��1H`@I��$�a@H����ǐ@H3�Q*Y@G�~�"c@I�Dѳ7�@Nz��A@Q�����@O�b�퇭@Kz���t@K���c5@M�5��@O����4M@O���!�@P�e�6��@Q�D2��@QOf��?|@QL
9�5�@P܍Bm9�@I��W��@>/���7@Jݕ�Iډ@Q����@-h��)��@$���z�@��C�@.g��@5r��f�@/Nw�gx�@@��h���@-8@j]r�@�E	��@ �f@*�U< A@C.i��͙@;@��+@@�R؋�@;m@:.�@9���8�@B-D�`�@D����r�@H:Q/�e@J��@Mk��C�@O8��!A@P�P4��@P�i@��@QMψX͋@Q���/�@R�1E��@Thٝ��@U��ٚ�@V�P�>vw@W-[��E@WNjT	�@U䧒<RA@U���4K@U{��r7@U+E<`e@UJA�(��@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @V���q�P@VZ��[@S��s�@E�ˑ�P@B������@S[���@V7�%т�@V���<�@Xn�)�#@X�hY"c@X_���@X
}���(@WХA��@W���@Ws���E@V�;6��@V+���c@VH���:�@V #$@T�J3��p@R����6�@P��lRT�@N�+�0c�@L���:�@J�^�@J̽��@Hoā�"@Fv!Nm��@Gv}�t�Q@H��l��,@K O!��@MS	���@MV�\��@M^�>�#�@Nu"�τ�@Pk@#H3@P�:qK8y@Q�y�o[@RX���{�@Q�u>��@Q��/�~�@R��]g�W@R�"����@S �?Jq�@R+���@R�a��#�@G�<5w�@&��g{�@ [L�>j@_��O�@3^˕��5@CzĹȝ@2��f`$e@_�GnT@���n��@;�8kB@;o��4��@@B�CǺ�@7��_�@7�
�$x@<87�@6w�C/'@@@���P��@DF$3�M@H?}1z�@K�޷��h@M`=WAc�@O��1s@P��+}�@Qh��8m@QD�E�n5@Q`/���@R�s���@T7J<��@T����@@VCO��X@V�����@W5��Jׇ@V;�3�@U��;@U"7F��^@U1��a�(@UN��e@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @V �H	��@UƊB�@S�����@H��B`@A�*r@Qƍz���@V }�n@WQ�=5$@Xe�iDc]@X�i���@XW�h���@X�D�4D@W�5����@W�:��*�@WG�V?�w@V�,�>D�@Vcu#�U�@V���<@V6)~�-@T��p�@R���J%@Q �=�x]@OF���By@M�m@@K5��A�@J]�A�o@I'�@`JI@FC���I�@F��9���@IG^�׻@J��[�@LNS@�c�@MNd+��@M�(�M�M@N�5�m�@P9YG4շ@QJ�z-M�@R��D�@@SB�`L�g@S@,�O@Rk�ʂnl@Q�\�^89@R���0�@R���}V�@RO�	�@Q�)B:�@T�z�gS@1?V�@%ϩ(\��@I+c�}@3��X�{s@G���@Q�M�Ȥ@&h���@b���@g���@3��I�Qd@4�H^/w@0�3��S@2��(@9{ϒ�	@9Xzil+-@@�N�t�@Do�	/=�@Hk�M��@La^:X��@M7�����@Oͅr��@P��Ƿ��@Q!�sP@QEQ.��K@Q�����3@R������@SԦL��@TL�oۿS@Un f�K@V���/@W!ء!��@VƯ���@U��ζ1@U$��.��@U5H���@UR�<3@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @V�dY��<@S<����X@R�#N�6@H��@ӿ@A��'z��@P.�5�~@U��׎@V?ʂ�@XL߭�@X�N�#�@XU��O�@X
J�@:�@W�.Uu @W�q+�I�@W}0L��U@W*v���o@V�bݹ�@W[١@Vb4SI@Tf��<#�@R�jE=�1@Q#NJ��_@P	Q�hrX@Ni�1��@L^$��j�@K]�_t)5@I�qi���@H��Ͷ@I@G��2�U�@I���)��@K_P=��@L����G�@MRdшps@N��/K̝@O:���
�@P"�U�@Q�_��v^@S��G��@S�t��no@Sٮ��Y1@S�>�{@Q��Ԩ�@Q��so��@SZ���@TO��*T}@R�h
�@T�+��@I �[�@3@)�Z�)��@"�g��(�@(�9P��@D�/(�@!��*��}@#o��@	$o�u�@��1�@�y:@2���r�@*�ң�@/y��C�@4��m�%@9�!b%�@A [a��@E�V�$@H��z��X@L��Q)�@M���\@O$��� @Pe�j��!@Q�5�=@QU����E@Q���"�@R���Xk{@S���;�E@R�5M"@TN��O�@V8s�?�@Wi.��U@U���|h@U���Oݥ@U$S�ǖU@U7��" @UVM�▘@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @ULӹ%0�@P��v]��@N��Yn@E�<nb$F@B%�_fK�@R�d�5�0@U���%/@W@!�P��@XA���Σ@X�\�+c@XXu�$�@X�<7�;@W�+#� @W�m^���@W�\;��K@W]�V��)@WdC���P@WM�U�@U��5�o@T5o;G�@R�<M^R@Q@V�5�U@P/ʼ���@N����@L�Z]���@K���Q��@Jt����@I����s|@Ji(j��`@JϏ��߬@K�wO\�@M2C �@M���!S@N��t%�{@P5�>�l6@Q<.ĸ�@S��p67@TA��@Tq�o��r@Tڈ���@S��Ц>;@R�i��M@RD�B-d�@S�r&@T������@U�9��f@UbO���+@T�ܮd@Gy�_��@)w��\��@G棳"$�@<�"4�$K@��̟\H@l>|�3�?��(�(��@�g�P�\@�1T,*@&z�0���@$�(G��(@)�6ce�@2$@ظ�@9P�r��@A�����@EhoBW�@I�u4v�E@O;Ʀ{�@O��n@P��8^�@Q=�2(0@QjR��9�@Qt+R_G@Q�i���w@R�f����@SC�i��@SH�JT@SL�D�S@Uh�}7&@V�}��#�@U�&��@Uy�"_@U%ɭ� �@U7�2k�@UZWϬQ�@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @R�����@K���ʐ�@F�n2�x�@B��_�@F&Z�1�@U�qƙr@U��)2�@V�}����@XL�C_B�@X�I�̏@XQҢ��@X]�;\@W����@W�\�r�@WY>���@W]1�(D@W��e&�@W��!l�@U�x�}�@T%���@R�� I�'@Q��'*@P��Ib�@O��I�=@Mm2��Ȥ@L*W�H�@Jɠ8Um�@JZ},@J�h��@K~S��@�@K�)�uj�@L�劕�]@M�3I`'�@N�8Z"��@P��l@e�@Q���]�@S'�_�J@T,��)��@Tx��v��@T,��/d@S��@St��A�@R��]̟C@R�p��r�@T),����@Ug�K%s@V@���,�@V0��d�@U��"�]5@Q�䝩z@R��3�@4��ĩ�@�m��9@	E��t �@�X�G�M@o�&1�_@_�JE��@?>N^�@"x�ɏ@'�7y@2w��oG@7�8��I@@�tM��@D�*�My�@I�;5��q@N�A
�#@P.�y∙@P�.�u@P��8[3l@QZ�)��h@Q8V��\@R6 f�V�@Rp ���@S���@R�၂Ո@S�V6	�@T�Z.+�g@V�we�{@Uz��Bq@UrܷoХ@U��^�@U3�)r|Y@UU�f�i@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @S��75�V@G����8@AWuݡ�@=��n d#@G�onX?�@S��Uˌ*@U¬���Z@V��1�x�@XR@�;s@X�cm=B,@XK�_0n�@W�]tЂ�@W�P��*T@W|9qp�@W�ӵ��@WI�H3�@W������@V�f觯W@U�^13@T(��`@R�-����@Q� �9�E@P�$h(��@O����օ@M�p��@L%�^�.W@K"��R��@J���j֝@K)J�� I@K����4�@L��3Ti�@M�ְ^�@NY�?A�@OH�oC[�@P��f�@Rb'	�0�@S��0��	@TCv�I@TC��XA@T�tu�@S�_ԋ2@S����1�@S+9��[�@R�;�P�@T!���Q@U�7߇`�@V��6���@V�J)�mw@Vt`x�o`@U��)�G�@U[lM�O@2�����a@lC7�r�@aM�?|@ ;y�v�@��D�}@
,9�6;@�:z�-@��j�0@$1�8l�@-�2��@4򍂎��@="��p�@DA��k@H����N�@K��w��@N3��� @O颬ӝ@P/"�n�@P��-_��@P,K�s�@R;q}��@RxI f*@Sr\s�=@R��'%@S��qy@T4�p�:�@V�����O@U�n΀�@Ui�{H@U���Oy@U0E��@U[x錧@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @P-o�R��@D��̓(�@=��\��@::M溙g@G�ώ�K@S~���@U��lQH	@WF����@Xa{V ?�@X��D5@XQ��Y�Y@W�>����@W�f`�U�@WQx0oH4@V�/��'�@V���y@WJqv���@V�,3ݣ%@U�|"T@T���4@Rت����@Q�G��a@Q/N�g��@O��G�UX@NV�8��@L����?%@K��%Lj�@J��$T��@K2�q�3L@K���s@MLpց�@N�	�@Ny�_�g@O���@Q M��^@R��
w	@S���m�@T) H|:�@T:�{� �@S��-�X�@S�G���@T�_G%�@S�ئ{^�@S��M��_@T�����<@U�Qs>��@V�1�G@WQY�̢�@VЈF�c�@V$��O@U����h]@8�+AyR�@�/��Ҽ@-�&�@Z���#�@���F+@-b)��@PJ����@8�9�TX@%���'�,@, }���@5�7C�@<�(�*�@C���:@H{�g�o4@KvU�y�?@M���O@O��{@P}4$P@P����@P����@Qy��/^�@R��9��X@S$!���g@R���B�@Ss����@TCʢ��@V��֣��@U���j�@U^��{"x@UW�n�=@U/�J�$�@UX�{�a�@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @L%��(�g@D���.@=��@mzx@<��?Ś@H��Y�I@U�,A|��@U��F�C�@W0
�$y�@Xg���X@X�$�Yh@XDM���@W믵�[�@W��m�r�@W;K���@V�?��g�@V6,�m�}@V�:܄@V�~	q9@Uq����@T����@Rېw��@R45w@Qa�~��@P&Y�-�@N����-\@L�n���@K��cfM@KƏ�@L�څ�]@L���.O�@M���d@Nb���~8@O�<��@P6ꊫ�@QF�2d��@R��X���@S�(��M3@TX��@T{��Ng@Sቤ�*o@T j{;tq@TP��Y�!@T�����@T�����j@U<ϝs�Y@VW�B���@W6���#@WCd���@V�񂒱p@V"�Bʿ;@U�i�K�@A���-@,�'m��@X��	`@�Wo}~@��# � @�ҟ<@u�Ue�@ �4R���@%,��4�@,�$
�$}@5m�\?@@vd]BBC@E*�4@I�fD,�G@K�%��4�@M�+��0@N���C@O�n��@PY��,�@P ��f4�@P��zg,@R������@Ry�N@S�3M�i@Sd�F�I@T��B>�@V�M�h�[@U�g[�d�@Un[��|�@U�U8�)@U)��#@UX}2��I@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @L"����@E3��pT�@M@�O,~@Dޛ|���@K K)\l@T|[�{9@Uu[G��@U�tD3�@XOE��u$@X�jR�)I@X?���e@W�tEf�@W�R��@W<���@V�`���_@V'�
G8e@V���� @Vo�j�@U�����@T(E) o�@R��>���@RD�Я;g@Qo`�;ɸ@PXk0�@N7�Uh�@L���Q�@K�����k@K̆B��@L����@L�L$9e�@M���k�!@NI"@Or9�k�@P\���^?@QJ��M @R��{�pi@S�1 �@@S�狅��@Sڿ��Fw@S��#�V[@S���Ag�@T���8;@Uo5S��@U�)���u@U��u3�@V�/�Ӯ;@W=p3[��@W.�;�R@V��ُ��@Ul�l�3{@R���m�@Csxޜ�@?�C�0�@1,�<�5�@$����@+��
3�@$|b���@,�Tw��@0P�yګ@'�Y���\@/��Pi�@6^|ڞxh@A�iݏ�@G�spS@K4<���@LV�-S[)@M�Y�@�@N��zz�@O����@Pu�㣓@Q;��T@Q'N��@Q�Ak��@R�����@S9�3��@S�z��1�@T{V�I@V����V�@V f�U�@Uc�M��@U2��9@U#�@�K/@UU�,�@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @J��t<e9@Bc�CكX@P�+���@SyH5P/�@QV���q@VU�q���@U� ��a@Vn�� @X �U��@X����-�@XD�0��@W�ϯ7�@W{�[�/@V�	M�@U�3ISQ@V����@W&s��I@V����q@Ux4.��@T9��Z-�@S2x]B��@RbD��&9@Q�!���@Ph��G�#@N�HL��|@M)�k���@Li�*ԑ@L'�Q�@L����@L���@M�,;�a�@NPL�*,(@O>1��X@PZ9FOW@QqSy�.G@R���=�@SqM	Ȩ)@S|X��Q�@St:�MI@S���]�@T 
��@U
Y�F-@Vf� t@VW�0=�@V��޷@W^Hi۫@WSV�aC�@W%3���@V�-K��m@T�S�bs@R�0֌+t@G$�K-H=@?�B؄@<J���P@;�˛h��@6�"����@4�ƞ���@6|����@;#@�|�@6y�d��@14j�
�@8P����@A���J�@GN�Qt�X@K�ü2v�@Mna��@NR�*��@O��pA�@P:soN '@P��LjU�@QV��eU@Q_��@Q�ʸyQ@R̦5��<@T_Y3�o@TJi��@U���L�%@V��|f��@VL��`w�@Ul��g@T��_���@U���!M@UT!ՖG@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @St�ظ�@B��"�>@Cb�A�j�@S�	�>7�@S>���#@T^����@Uܑw��B@U�.K�y @W�}r���@X��M��@X;��/�@W��HA��@WhE~:��@V��+��@U������@V��U�V�@W\�qo@#@V��ԁ�@@Uerˁh@T2쿪�c@SUb�K@R��2I��@Q�g@�V@P�c}
�@N⇏}�@M�)��u@L��w�@LN>���3@L���ML�@M]��=�l@M�/ 7��@N��-�M@O���H@Pp0̄@Q8��^s@RT�Zr$�@S|iI��@S
|�B@S#f�@SC��~~@Tq�L�@U]@���@V;UeMֳ@V��A�@W4M���0@Wn�ȱ�@Wxo�w�p@W�}��@@Up�R��u@Uc+��%�@Ts�3�@L��څ,@By)�,_�@F�R�/@E��?C�P@A@��<��@CY:�W�'@B���-�J@?���T@@�%�@3+$au��@;$ίޣ�@D&�#4�7@H��I�@L�Hl�9@M�,��@N{&uJ�`@Pe��@P�)�_@Pc��v_@Q5�x�P�@QQ9�y�(@QX+��-@RtL-TJ�@S�k)o��@T��v�Cc@VE��Y@V�S��s%@V�� @Uy�(	D@T�����@U�RKl�@USL���@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @T	��Ƨ@D%���R+@A"
↷@MG�]@S���~@Tsh7���@U�*�H`8@V�~l�{�@W�1�d&@Xn<t��`@X1}��k@W��@�q@W]VI��]@V�Ɨ�q@V�S�6��@WfoK�W�@WT�a��@Vk��Dxh@U^\�,@TEQa;�@S0̚�x@R����@Q�#��Vt@P�+O�(@O�CK8@N����@L�Q)�[w@L�@���@M��í�[@M��*� L@M�v��k@O|zq���@Pmt�ng@P�"��i�@Qͼ3Q>�@S�ԏ�@S;	M#�@R�ǟ c�@Rȋ#*S@SÛ?u�@S²^ȭ@T�Mm��@@V.p'm�@W&4���@W}��\�3@W�P8
��@W��;��a@V���|X@Vj"��*D@U�<��:@@S�a��@P��.��y@J?��1�@L	�R��-@K	޽���@JV�{ysU@I��l*w@D[f�8�@E�HM
 ;@D�r��@@7�XJKk@8����ع@D��ԏ�@I�(Y�}�@K���!�@M@�	֮�@N�0�\@P�̿��@QBŗ:y�@Pb)t�G�@QF�	���@Q���La@Q$��\S�@RRS[��@S�Yl�@Ur��/@V=q�9�h@WᎽ��@V�R��;m@U�It��@T鹖�z�@U'�0�@@UR@�&-@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @QB�F�@G�z4:�*@A���@J-�hr@S�m���@T��D�e@V"h��@V#�wyV@Wg�h�b�@X]V��3�@X6����@W�̟�Y@W@�{t�@V�d5tC@W%`0��o@W��q��c@W5�I@VJ��[P@Uck���@T*D]�g@S?���@R�|�2s@Q�5�@P�q2��@P/V�ݒ@O6<s@L����q@M_��*ȕ@M�f�}}�@M�.��(]@N����s@O����@P�4����@QM�8q_@R@���8@SX�lA��@R�@�B�]@R��!�V@R��j���@R��:$6{@S���9@T�|���@U�$ o��@W�z)?@W�4�]U@W�����@V�W�Y��@V,	��@U��?�@UMDL0�C@S�U���-@Q�\�u&�@Q�w�Y�@PJ�A�M�@P'��^�@Lʇ4�@�@NR�D�@H�@����@D_'8�3@G���Գ}@=��pt70@80e���@D�ګx�i@J����@J�r�O[@MW~c�Dx@O!E�s�;@Qc��,-@Q-���m�@P�Yk@Q���sT@QK���@Q����]@R����@Sp�U�@UD�ۇx�@V5�y,��@V�U�!@V>_F8�@U|��?�@T�Ь�k�@U~6��7@UN%
��Y@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @V����@N��n_�@C�QQś�@Dh!�U�W@SR����g@T�X��}�@V'@V(��)t�@Wu�仟�@Xoڳ?�@XD. �l@W�jtr�@W6?��m�@WA�y��@W9�tyڹ@WHk�.�-@W!q�O�@VQ��@U�Y}~ @T-y�0/@Sh�շ}@R�"Z�@R<�<?�@Q.<w���@PkZ7ɿ@OTR!�@M�z��5�@N�Ms`@M����yC@NW�T��@OT�}_��@Pk�-��@Q [���@Q��y��b@R����@S��eC#@R�K��1�@Rb�Ʌs'@Rnu�$N�@S�M��@S� ����@T$���H@Sv}�;5@V�����@V���rg�@W:��z��@W+tvH�0@V�� 9L@V�s���@U~�	nc�@T��.D�@SU;Z�:@T=3��	@RVxFR�!@L���3�@H�$���@K��Z�x@B��]�@C^LPє�@J_�m6k@BEj�?@<���-@D�j���@I!�G�p@Jc:fa;@L*����8@N���z�@Q-�#��$@P��7��@Q����@P����{@P����'|@Q?:�$�@R�!(�@Sk�g�5@U=?;��G@V(�*]��@V�N�4.�@U�Ӄ��@U`�=`c�@T�>�Q�E@Ug��}�@UO�#�^@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @V�2���7@R�&��2�@HC	'2�@C��`@O2��+�@T�C��a&@U�Iw��@V"L'V�@W`.��Ҙ@XfX�ӏG@XJU�Z%@W���v��@W[4�;�@W�NC��@WTbW	y@V���k @V�@�e��@Vc�p�@Ut'�@�@TXp�<f�@S�>��@S
E�dM�@RGhCi@Q2͠�s�@PM}�-v�@O_���f@NE��{@N*ʣ�u@M���;A�@N���4@P�?/@Q�T��@Q��1N=�@RQ�*@S'���?+@S��^�_@R�ԕXA�@RVvhB��@R��O!@S*�2
@S����z8@T@0`��-@TM�c�@R�B���@U���Y%@U�@n��K@V�\a��S@WLc��x@V�s���@U�����(@T��L�@U�c"���@T��v�7�@Q����@EaF�x�,@Fl�����@K��)��@B�Z	�Q@B򬩈S�@JA��;@E�d��ˏ@B�
U�	@Dx#��}@G�a��[@J��3g@MY(��ex@O�� 1Q@P�LA,�@P��,ɻ@P�����@P�ʹ5� @P���o@Qa���B�@R�5$`�@SP�l��F@U!�R'�q@V"�`��m@VU�(��@U���M�@UNۅ�L�@T�*ϝ�@U��M�@UJd��@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @W&D�:}:@UQ��l@M%��/B�@C�e���L@M���4��@U8r�^�@U�Kl9$�@V���@W�{?^@Xi��X&u@XeZ�i�@W�a5��M@W��/���@W���dz�@WJs��@W��P�@V��s!��@V�)�Ĭ@Utp2V�@Tz��q!�@S����vM@So�%=@RU����l@Q=�Bv�@P�^Wڛ�@O�(�4�@N��;-�@NC����@M�caaB�@N�o<�k7@Pf��(@QL[@��;@R�w@Rh���@SG�R��A@S��]l�@R���B�@R����6@R�w�2_1@S0��L@S��p�u@R����p�@RoeѪ�@S��O��@U&9z���@UN��d5@U��$�C�@W#��.2#@V��00@VA�);@U��6��P@Vx0NS8�@U.,a�`@P7b-kj@Fy�d��@G�/l��@I=����@BI:_��@C2h��x@I�6Zl@EVt�@�@C>�p��@E�3~T��@G�K#7��@J�`{u��@Lᡍ �[@Oͺ����@PC�j�A@Q,-�\�@Qj\�@P��8W�@P��,�=�@Q�J
�F�@R'��\$@S4ơ�@U/+R�m�@V	i�1H@V%�[�#@U�,i6�P@UB(K$�/@T��N��@U����`@UJ�]��s@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     @Vl�w�Xa@P�ݯz�?@D���뚵@IG�fa��@T��k�@V��@V1��s^l@W��E�@XyQ2�t@Xsf���@W��O�i�@W�f�V��@W�\�4�9@Wna��h@W_��kE@W)����@Vn�"&�@UL�w��I@Tv'�˨�@S��%F=�@Sݎd7@RH���A@QK�J��H@P�)�@O� �s@N��0���@M�݉U�@N4�{���@N��u@�@P�lR%�!@Q�B's@R@�U�̯@R��:Q��@S����	@S�xq��@Si���@R�\3��@R�Qe�R�@S<ߨ��@S���
Y@S��v_ۀ@Sȵ�)�@U=�!NVH@VO�d���@V_�F�t@V?����;@Vd�[	[@V��#8@K@V���B5�@U�wgҰ@V�>M�m@T��l��@J`R
,�@Fܛ�4$@GS���C�@IS�A��@B��4��@A�Ԑ�r!@H��]9?@HR-����@DF�2�-{@D^����@JbΔ[>�@Kś���@M3��0@N���s@P7u/$��@Q:+~��@Q)�H�&�@Qw2�B@P䪒�}7@Q~���ie@R�q��@S�(e�@T��] @U�F!��@U�ۣ��U@U����@UFI�@T�l�i��@U!�w7M@UG�9�@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @W�"�te @WM����@R���
�@E����W�@F�7��Z�@V?��� @V#��AQ@U�bX~�@Wܵ��~@X�$
t@X`o�>�@X���3E@W��r�@W��_��@Ws��p�@WdǪ�!k@V�&S{�@VLZW�:@U49l0��@T2�eP��@S����@Rך����@R.���!o@Q�����@P�g���@O��m*c�@N�E��'�@N��P�@N���pd�@OG�M	@P�[�,�@R�@E�@R��핒S@R���h��@S������@S����#@S%y�m:@R��=F�@S��}d/@Sl$?�}@S�{� &�@T���y�@U_pe�c@V'�h4��@V��� d@V�2��@V�=��@V��<��@V�s�g��@V̶��5@Vri�w@V�����@S,�%��@K��#�~c@H:�ET��@IZ�����@I�	�u=L@EH[Q@@_����@F��4D
�@G?�v��S@A�&x(�0@Fz�@\�@N@⍡�@L�9�73@M����@�@OY����@Pel�[W�@Q5NR��@QN�e7�7@P��v��@P�K�N�@P���30@Q�*��=@S���\��@Td�Tn1@U�*;y�@U��/i�@U�T��T@UU��/qo@T�e�nF7@U"(^z�@UB� &<g@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @U��٬�L@W�OC�@SN��+�@E���	�5@D�[x��@T�_�,@Vi+���@Vǉ�cH@X�r�Y�;@X��L�;�@XU��eT�@W�)P�f�@W��,�@W�+-�N�@W�n�As@W<4R�@V�n��g#@V6�!�O)@UH�},�'@T(TA���@S��/��@Rٚ���D@R2M��0D@Q� ����@P�U|e�s@O�$��P@Ng���@N/��0�@N����7=@O���(Wp@QZD��@RO:5oJ@R�k�l�@R�Nz�I@Sf83m�X@S�1U�@Sy���E@S8�K���@SS��(�}@S�%r:Ph@TS�Ŷ��@U
�^}��@U��7l@V��:�s�@V�_�@V���w`�@W�t,i@W
uMl�@V����ޥ@V�'�h+�@Wj� �y�@W�/-c@Rvf�x�(@M�*77@I�S�'%@I��!�>e@K_lH@H��E�u�@@�̿��@D`+��Z@C�ט��@A��y/�@G�����@Nf��#�'@O)N�ꀘ@O{�k��@P?lCr�I@P{}F-�@Q)ZY_-@QD�)9I@Q<T֥@Q����@Q4/� �@RR e_u@S^�d@TT�˿�@U@�Fu@U�����h@U�:�q0�@Uo����k@T��ڤ��@U#��R�@UA�_=�L@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @W\�����@X
��p��@Tws��Xj@F�����J@C�>�ؤ7@Uȼ��@U��VT6@V�[��~�@X�J"V`h@X���Ҭ@X@�~�@W�t��3�@W�L�?�5@W�oX,0�@Wx�)�Lt@W ^�%�/@V��r5a@V�T�A@U<��5�@TD����@S�D�|o@R�Qۀ;9@RF����@Q�b�|��@Q��$;@P
��w@NӦ���@N	e&D�!@N�
%}/�@P ��&�@QrO�p@Rr�.)��@R�"�QWI@R���b�@S5�	�M�@S����!H@S�$�@�@S�����@S��-�@S�U�@T����-_@Uj��H� @V4��Rs@V�ZxD��@W%1v��@WK}��@W?Jm�� @Wh�G�@W��'�-@V�e�WQ�@W�O�u|@W}�"+�@SU� }�@O�>XB�@J���J�=@K��n�Ɓ@LYVѭ��@I,�ս!@@�����@@x�Pm��@C���W�@CJ� �@KK�k��@L A%ڬ@@OW�U��@P^�T��@P!�<a�g@PD���7@Qo�&�w@Q'W�a¼@Q�:��T�@Q�eݹ�@Q�6���C@Rc�43{@S#<?���@TK����X@U���@U[˙���@U%�4]x@UXr��:�@U*�ܒ@U's7E�@U=<��@@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @V�Jc��H@X��i��@U:'t(@H%����@C�Ӱ��@R��[�@U���zV@V)��w>#@X~onbGU@X�%Q��c@X6-�t~�@WӠ�w.@@W�7��'@W��]^�o@W])W�~�@V�z��@V�?�7�@V�A�)�@U=��%؛@T:+;�9@Sfe��@R�v�R4'@R����@Q��O`�\@Q.*艍@P!��
_@N�L� �@N
߁�@N��sM?�@Pc����e@QQ#!G3Q@RK�9%�@RDL��b�@Rg��O�+@R����@Sn��l�@S����A�@S� .b�p@S�"�e�@Tam�{@T�wMJj�@U���YO�@VSWJ�%@VͿ�^�@WF��ϐ�@WY��u�]@W��O��s@W�#��]@WLFb�)�@V�ư�m�@WP�:��@WVfę@�@T�L%�w@R Z��@O��M��@M�z���@L���]'e@EJ#;b�@@h��bAI@?��*�L@B�` �@D��f��m@FpHHZ;@H|#)T��@N#\Z���@MT�z@,L@P�xe�@P��P�=@Q���'ü@Q��Ruh@Q�Ɵ�C�@Q���	r�@RR0����@S�hp��@R����A�@T3���@T�}^��@U
�@T�d��@UO��3ϊ@U��~>�@U%�S]�@U>IG0��@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @V�֑[�@XJ��[��@U�R~Q*@JŲ���@D����x�@R�ڟvR@U{�}���@V�g�,�@Xn����@X������@X3���/�@Wƀ�&E�@Wu;�@WX>���@W	��m�#@V���,@V4�2-�@V�u��@U-Vv��@TH�9�@S�t�I	!@R�rf�9@R@�K�w@Q�9���P@Q|.�@P��Z~@N��p�@M�N�{�@N�څ�@@Pi�!�k@Q��j;@R�[�n@Rf5tO@R�=xTh@R��=�@S^�G��R@T#�E_A�@Ttٖ�@T+��C�p@T����Z�@T���:m�@U���u@V�:���@V�t�Wk�@WN�	�#@Wy��d#@W��
�@W�>$�(@W�S���l@W�%Z�H�@WX'�>Nh@W����@V�&s�B�@T�KJ��'@Q�h]�@OS�/�m@J��4�@B�^o,3@B�i�7�@@��\ Y@C�8G�T�@Eޕ�@@B�%ߪ-@Gto�)O@N|J�@PS��W%�@P�ёk@P?�� �@Q��ו�@R_�F\M@Q������@R�dŬ@R�m���@Sp��e�@R�&�wQ@S���/PU@T�4Qq@T���U	@S���xй@UL��b�@T��(��}@U}�� �@U=����@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @W���3�+@XZo���"@U�)���@KD�5b�=@C��Ԁ`�@S/�>T�@Ue DĶ@V  &!@Xp���5@X���؛@X0��nҬ@W�;�b[@W'�i��@W��ߖ�@V�ì��@VCˊ��P@V_�I�<@VL��@UOЉ�^@Tp�Z���@S�Jp�@R�3����@RIm�Jy@Q�����@P�vB�@O�\�g�@Nm��tV�@N\��Ki@O&�0r�@PI�6�g�@P�[�C�@Q�R�@Qh���e@QoDU�o�@R);�c-�@S��y>@T�n�I@TY�{���@Ty�E���@T�܅V�@T�T�
@T�L8���@U�}0i�@V�q���@W��c<-�@W��ϒ�@WФ
#)�@XX��=�0@X&���@XQ#���@W�����E@We��^v�@V�3���@T�z�I�@Q�-���@Q(���`@J ���@IԘ�/�@Em��\@B>4z遅@@�ݩ�1�@E&�\�#@H;Z��ط@M��c;�@O.J8@R\Js@O������@P@WT��~@Q_��1@Q���ި@Q�)+{@RM��5�@R�2�M�[@R뒱.G�@R�@��@T�6��@T�ZЬ�@Tez�HM@Sy�Z�o�@UE?��c@T��6h�@U'��@U8�㢔�@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @XY6��@XU� �@U�,\�}\@I����0@C�>���@R�0|��Q@Uk����>@V��
e@Xt*����@X���ǽ�@X.�gt0 @W�+���@W/��2�@WangwE@V����� @V/��k@V��;~=@V5�a}'@U(�)+�p@T�mꨧ�@S���^�@R��Lz+�@R7U9X�|@Qu�r���@P�!��@O�w�r:�@O ���I�@Nbc��x@OB�av�/@P�H+@P���3d�@Qx��~�@P��½Q�@P�R����@Q��W:�D@S0y��@T8�2Ԃ@T4#� �<@S��hA�1@T�8Z�@T��e�S�@T��]�6@U�X���[@V����<@Wf'ƅ��@W�I�Y@W��dO��@X$�/rJ�@W�G{��]@W@I�S@W*����@W5Q�Iץ@V�����K@SEKlp��@R*;���@P���s@\@K�^o�x+@L��FZ@E�e.�L�@Ab8| �(@A�;���@FA��E@M����@O:(hѵ@Qa���v1@Q����/�@O�<Y@P�3%�d@Qo?U�n@Q�̛w�@Q�F-p��@R8�#fe@R�a�>W@R�EH�T;@Ru�\Vte@S�0�y��@T�iڲ��@T>pK�zd@T"�L��@U �N�ؽ@T�9S�Q@U|���@U5����@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @TI�\;;�@X;ރ��@U��&<�@I�G��@C��ǭ1@Q9	 �]�@T�cg��@V�I�C��@Xz��{N@X����<(@X>�p
e@W�QiV�@WBG:�g@V�`��@V~q	S@V�
��G�@V�%7h��@Uݛ�&��@U��$�@Tu����@T ����w@R�ה�@R�Q�@Qcl����@P�>�o�@Pv����@O���>�@N۶�{�@O	���U�@O��c���@P+�5b@P�p��]�@P'��@P+͛�@Q$��1F�@R�e}@�W@S��^ɩ�@R׹�b�@SXqp�"�@Tr\�5d�@S�p�#��@U�&졚@U1p��@T��._�@V@PW��c@W�m�fp@X/<�&@W�^K@?@W�9�s�@W��@Q�@V���iˁ@U��9?�@U3�Fi�@S�5�C�@R7�A��@Qx\�M��@M��_��@N���s-@B�j��HA@@��H&��@B4�C25H@Edt^~�@M�����@Lθ�50@P�͞xq�@P�bd�@PM���+@P$�< �c@PŘ���@Q.!g�@Ql����@Qӏ^,B�@R%�D��@R���y�_@R!P���@S��u�=-@T�N�@TJ�(���@Tn��'@T�����m@T��+Ƀ@U̬k@U60v@�@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @V�d�ι@W�y���@UGh�h8@HǐņN�@B�����@L9��Y�@T���U��@V�w��K�@X��ΰs@Xb�j%0@X	Ñ�|�@WtENZhl@W1�_[��@V��e½@VI�T�C@Vu���zG@V���hm@Uۏp�`�@U ����@T�'�L�@S�'��WY@R�W}y�@RZH���@Q�C�(�@P�Rt��@O�@�$�@OJ5o&��@O���
�@O9va~��@OD��h1@O�4#h�}@O�c����@N�3�@]�@N�O�F�}@P�ǁ�lH@R4\^��5@Q�h���@Tl]k,S9@U�7s��@T�
9w@U.��z1@S�3�S��@T0A�Z�@U�7����@Vv�k��5@W���@H@W�+&U,@W�`]�@WCդ�7@V�)�9Ĉ@U�
�FN�@Tr��V}@T�=�a�@T:(|-Y@Rm	%��@P����M@OY��+�4@K�Tu�n@BW�p�T@AH~EH?@CF2;}��@HO�z��@J�-�FY�@M9�&�@Q��@N��c�@@Nⶇ[�@Pۗn�@P�����@Q���޷@QZ����@Q��{�{@Q�瑳�@R7�OIE�@R<�;�@Sj^S�@T�	d��@Tk7�Q�@T��a���@T�j]��@T�.^`[@Us8�~4@U3BjD�@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @U֤��=�@W��"��e@U%T��+�@H�bM��@A�<@KI��D�@Ts�܏ #@W�$�#@X��.��8@X�!�6A�@X�O�R`@W���B�@W8�����@V�r��@VkE�UHM@Vp��s 8@V�����w@U���jx@U0�C)J�@T���ET�@S����u5@R�	��MU@Q�3U�W�@Qp� ��@P�x�@OF����@O����@N�|��;�@NTyW'�@M��3�@N_.�ߗp@Na�~��@ME�c���@M'Z\���@Pf��7G@P�~!�=�@R�*���@S�
�_@S%��)�@S���7��@S`e���@R��XT#@T{��F@U�N�n�@V�;���u@W��v=��@W��B��@W`���y�@Vo/K
�S@VSwk�K�@U5R�X�@T7[��y@S��Ti<�@T��o��@Sܠ�wc�@Q�Ey��@K�N��M@E�AJ�@C~�H؁�@B
}A=�@C�7�cϑ@E�ÿ~�@I�YxC-@N�:���@N��%��x@N�4�[K @P.�ch�k@Pzy/�{�@P�<�5�;@P��a�9@Q ���w@Q�V�go@P�E�P1@Q��p�Y�@R���Q�@Sp��Ƚ�@T�	(Y�@T�S�e�@T�#֐�@T���r�$@T�,T�Y@U�=/]�@U2���P@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @W(�ա5l@W����M4@U'^h&@I�QY�@B�A��@P~�տ�@T,�����@Wp��k@X�JeR�W@X�7	�>�@X$ܾK�@W�A�U�#@W/|��2h@V����X@VJ>�4@V�_�t�@Vk״�Ǐ@U��
��@U�.�N;@T��RK�@S�SN�N�@R�\|��@Q��l���@P�ǃ@PByD�@N����zX@NF�j�@M�4G{�@Mm6j�4�@L���-��@Mu�8�Y�@M{D����@K�W&��@K�s��q@L�#M�a�@M���`o�@Q{Z�i�@Q-`��@R)=Dn��@R�X�@R�����@Su%�5c`@S4_r���@V?�W��@W67�K@%@W���C@W[2��� @T���2h@T��u��@VFqn\��@UQ?�{H
@T�{��e@SY�言@S�a�Y@SEJlx�@Q���[|@MS���U8@F���:�@C�+�O�@Bn��`k@CfL���E@E�/�O S@J:�#_e�@L5Q�q�@M6R��ε@P��SyE@P����@P��:��@P�-�ؚ�@P}>$ԋp@P϶��Н@Qw�)�C@P��:�2@R�C�7@R�Z���@S_Z�ə@Tf�3w;@Ub\0c�@T�P�@�@T���<1�@T��� K@U`tV��@U1�-��@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     @W���9z@T�d��I@H��S�k�@C��<�@Q�$?��@Tѫ�Ը@Wl�(�@�@X�q�j�@X���"�@X1<-���@W��D�@W&:��@V�!C2PU@V|��t@V�RL�8@Vb2ґ��@U�v"���@T��"v@TZKtT�@S�z�{;A@R��ů�@Q��
+@P��%(p�@O���(�@M|�;���@L�Lᒨ@LMZ�ik�@L y.@K#>�.@K�R?�jS@L]���@J�n��g4@Kl#��@N�F,@I8���t�@O�Z	��@P/��r�	@P�v����@R��N@Ru�M*�K@R�\�n�@Sd;��,�@Sy�h�t@V�r���@V8�g�E@R�Ձ��@P�`�#��@Q�=,��#@U��Z�>t@U�愥`@UZ}M�'�@Tu
k�s@S)�o��?@R~�>��)@P��H�%@NiF�_�@Hpӈ�[�@E`���@C�{a(@B`Bj~@E��G��@M�[�t��@Ok��8�{@M���g�@M|�0Q�@Pxc	���@Pj�-�E�@Pc4�i�@P!�m@�@P��D�6@Qq@��d{@P���'�@R,eF�W@S ;���Q@SoC.@T*¬^�@U�ү���@T����@T�7�i��@T�<ؾU�@U�K�	�@U.�Y@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     @W��e�@T[چ3.@F�0�h��@D��$@Q���jM�@T<hb�@V��0�l@X��{��@X���8�h@X+��	
�@W�M��̩@W5;�y�@VߋK�!@V��
�,@V�����@VO���, @U�F���@T���'mm@T�d�NR@S��|P"@R����F�@Q8E�i@P�Y�'g@N���e�U@K��H.8@IY���@I5���t@I*�p`�@H��E�X@Iw�#��l@J��; �$@I�g�u�P@I{�/(\@J�ߵ��@E�M�w�E@MM���%@Ovs\Ke@R�Y��[i@RH<�'u�@R��*r@SX���@T�吅�@Tw��o�@R
���6@Q@4YKd�@QA@�9ǔ@RK��(k@R���?�@U�>B�t�@U�
/��@U=�I#@T+�tW�@SN#�)-@Q��9
�@P�	�G@@M,1o@H���*+�@GC�q5�@E&'	|5@B�C��@FMx�~<@@L��dd@P�;�*?�@O����@N��r7�@Q����:@P�ϲ�Y@Pyt��`�@O�(��y)@Ph�Wm��@Q1A3S|@P��^�T�@R'۸z�9@R�����@S�fX@T?X{�@U���7@T�Aq$@T�ו̎4@T�,���T@U �*���@U,���2M@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @V�OY��@W����=@S���~@E	�+M�L@D�ϡ��c@O�.��B�@T=ƿ�>�@W���ഽ@X�	QH4�@X�I���@X3!]J`�@W�z��@W+��]��@V�7��.K@WA�e�@V�B/��@V<rޮ	%@U��K�J�@T� A��@T��3�C�@Sڦ��w�@R�܀wk�@Qg����@P���3�@K�P�N2`@F��U� @C��;�@C��@DPv٦(�@Ek�]O�@F�+ %z!@HCS�I'#@G��ff�@GU��`��@I�/��G�@F~�s��@N��snB�@T�'��_@T�o�L@S�QfT��@R�_W�@TG�}�@T�j[c�@T���L@TaǦ�/@R�r9 @R�V���@R_{��4�@P���d��@T:6Ü��@UeU?��@T�~ߔu�@Sĵ���@Rg��HQ�@R;�.2�@Q'���A@NZQ��0@K�|W�U@I?�7x�a@G'�(E@C���V<�@G	&1�t�@K Mg<@O�`�l'�@O4��F}@P�R櫫@Qy�R�×@P�O$jD�@Pbe�NpP@O�Žo;�@P%|d�'@P�NVÃ�@P��9ɾ�@Q�v�p/\@R�(�<��@SM>���@T�C��@@U��&g��@T�3��Ԝ@T�;x��J@T����7@T�r�� t@U)�
)!@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @T�H-�G@W��u�n�@S`���V�@D|0�:�@F�;���@S�&}ý@T��G�J@W��
SV@X�����@X�Z�gU@XA�d��@W��Q	�@W�YSc@W���,@WA\!���@V��W��@V0!]�a@U��f���@T땿~��@T�+�)x�@S�I!�N1@RmT�R�_@P������@K=��C@F�dk� }@?"6�9@:-"��s@8��R��1@=�#ܳ�@Aa��֚�@C9De�}9@E겇��@F�m�]@D��%��@ED���c@Gɍ<��p@M��y9 �@S���g_�@T��G�j@S�b��[[@S=�B�I�@Ti�6R�@T���	-s@USUU�T@Um��}�@T�_�t��@S�=ma2�@R�f(�.@Q�A�~�@R�1I
�@U6|^!�@T!�����@S�a��i@R��:Ǟ�@R1%
�9	@Q��֍ e@P}
|���@O+�C��@K8]o}C@H�~��4@FRE;u80@I���@J�遙�@L8շ�@N֭|��@PT�Zz�M@Q�G��k@QGV�@P��S@P.�`�x�@P�ɥ��@P��4@P~��@Q!��Q@R��!@SL�3	��@U�p�3�@U��~�@T�!�S@T�N��|�@T�/8��@T�$ �D�@U$L
ry(@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @U�C	�I@W�Arm�@S*��@ނ@D1����@G3���H�@S�A���`@U4��)��@W�����@X�-�v��@Xy�u�@X(I�6��@W� �X�@W<��G=�@W2�[č�@WB���C@V�5G���@V/��G�@U|�k�c@T�:���m@TR~���t@SR���O�@PH�{��k@L�9��E@Kv���t�@A�}���@7��26�|@51��B�j@3��Ж�@3����Q@:����@>��	�:@B�"L��@D��¡@@@D��R��@B��/��S@I�`>
�@P��p���@Sul��k�@U~����@T̾��m�@T>��«&@R��w�h5@T���$��@U�<XZɹ@U�
LA@U�_�߅�@T�d���@S0���s@Q���w@QL���@T�"��2�@T)wK1b�@S��<?@R�:�Hc@RmEW6M@R���@Q�Q��s@P���<%i@O \>��@Kj�X�S@I�H�r��@I�K`)��@I;a��Ey@Jৗ��I@M�aL��@O�mL�=k@P�^�p�@Qh����@Q��}�@O���fGe@ObdƸϰ@P�tV�@P6�X�@Pӭ��T{@RQ �H��@S�T>.��@U���@Uo�ޢM@T�zXg @T�h��"@T��%�9@T�m�˸�@U!�g�z�@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @Uߍ\�v�@W�qMU�@SC����@DDhɉ@GrU���@TJjw/�}@U��֚�F@W^
G�]�@X��hX��@X{��C��@X�XƧ�@W�*��A3@Wr�� Ġ@WwQQy�X@V�`���@V�����@V!��d8@UR_U$@Tg��@Sƶ����@R�����@O=�ڲP�@O��B���@G�ؗ�e@>k�`�z@6s���@46=���@2���@/N?���@2�����@6i�o]@>�����@B�Ld�m�@A!Ĺx�@C���M�@G�]R��@Kf�ǖ>M@P�~7R@T+�c:�@SI���ͱ@S�+9@R�;��ε@T��f\@U`��&(�@V͊�@U��`C+�@T�G��T�@S.e$��@Q��
|0@P�giU@P���t	@S.��ܣ@SXu��(s@S@� �@R��1�t@R�̱���@Q�w���@P�j8p�@PZW0���@Mo�x�c@L�����@J��-�h@JE�	��#@L�*��=@OK�
O%�@P�P5� X@Q�%�q�@Q�cWN��@Py^Q%��@O�k�)�@N��=;$@O��%��@P1.	N�@PƧ ���@RD�~��+@S��S&w�@U$"�O^A@Ug�\��_@T�.�0�@T��U2cO@T�#��@T�n!SN<@UI��;@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @T.�Z�=@W���j@S�k��3K@D$m �S@H.%gm[s@TS�4%"�@U� 6�0@XUP�@X�N��r�@Xt���@X
&]@W�U�Y��@W��HE�@WP�X�S,@V�2(ؑ;@V���
��@V�YC�C@UM���~@T<m	�@S'�E%T�@R����8@My]Al�@K�.���@D�P}.��@>�
Q 	H@8HH�I@3�r�U��@1T��ޒ@-ƪ��#$@)��n�s@0v=�o��@9c�-Lh@@a`,t@@�)��U@D�=��@I��	@PZy���@Rn����@R��e�@RG�����@Szv��@S�����@U�2��K@U�U���@Uf��:��@U�Gd׉@T��m�o@S	��@Qmn<U�A@QhF��V�@P7ތ��]@O�8hѩ@Rÿ��_�@S[��M@S_:���y@R+Ф��0@Q��4��@O��&@@P%�~e�@L�'=ػ�@K����r�@Mh�:�_�@Nu,�/s@M$���@OӰ��t�@Ps&�(�@Q��!#@Q[)���@P+~��H@P�Xm��@NIs��M5@N��`&��@O�o����@P�f�[E�@RF����a@S��ed@UD"��C@Ue�8��@T�5����@T��⪃@T������@T�\����@U��b�5@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @W��
Y4@W��x��N@S�v���|@D�H�M��@E)�ʴ@Ta���-
@V]�X���@W�<���V@X��Z�3@Xm5��%H@X���O@W�����@W~X��@W1�k�@V��O@V���j*�@V�'��@U0��j%�@TgM\Ƒ@R�&�9s@Q�_Gk�@M� �	�L@H�|�P�@C�t����@>֨���@8挚�2�@2TBs@0)W)�D@,���_S@%����!�@%P�k@2��V��@<բyG� @:�9Cm��@B����@J�����@R'}�G#�@T�$���@Q�)0q @P��DjJ�@S �� �X@S�]�J�q@U1�{�@U�����@@Uy�7��@T��1� a@T8X���?@R��;8F�@Q98�;�@P3ƞ�@P���y*t@N(i��@PÀ���@Q2��pEm@QA<�H��@Q��t@@Q�E�r@PЊ���K@P޾n��@P$�J�~K@MH��k�[@L�*��@OPt��/D@P�<�0��@Q��ֳ7@P^���7@Q��z��@Q5�YQ@P([��e9@O�X��ڀ@M�h�W�%@N�
L�3@N�t���@PR�۠��@RNq���@S�M/�@U\�L&h�@Ua�/���@T�*��{@T��Y:�-@T�%�@T��z�@Uń�@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @V���@W�u�	4X@T:=��j@D�	i�f@C��Uc'@S�>����@VV��Z.�@XH���_ @X��nY� @Xc����O@X
}�ϧe@W����6@W{�p��@WH�E�(@W�?�@V��@V�o��@U-ķ1�8@T��9y@R�����@Qf�c-@L�ɏ�Y;@HuC�"�@FIxYH��@@KƑ:�.@7�}5���@0����@,E���l�@%�|W� �@'5�c2��@"�t`.��@&���t�@:���[@AJE�	��@@QA�Asq@KT���@Qu^,Vts@R"e����@RW�~�I@P3��@R�R��@Tx�w�=�@T��$���@U�@Lp@T[�-�@S�)���@S��X@�@Rq���%�@P��]-�@PG��@OӜ
�s�@O$���e@O���O1�@P�Qߖ%�@Qb��@Q��J���@Q��9�w�@Qstw}�F@RTaS@Q=�� ;@O����"P@L���tG�@M�WY|@O�&��\@P�7���@O�I��˭@Q��D�O@Q%�᪱�@PE�М�<@OX�
�{�@MRLuƌ@L�ϗ�p�@M�!dR	@O��%��P@Rߎѽ�_@T.�9b.�@Uw��U�@U`<��އ@T��G�7@T���Ad@T��voj�@T�b��w
@U
�5�;@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @T�ݜM�@W��5�V@T��]�O;@EZx����@C����_@R�L=~gh@V���\@XV]q`@X�H;38!@XlH=*zk@X��P6�@W���o�@Ws�#mg�@WL��8�7@W<~���@V��j��@V���@@U=;��&�@T1����@R��C�?@QW���t@ME����@G4��t@D�{J}@< S8��@6���]@1WGoD�%@*
(΅%@&���n5@$�	 >G�@#Vmh*��@#v�h6�@5�7Y�y�@E%_�\&@Ee��|@MzDA.x@Q��l�@P�jzR� @RQ�mRU�@QxoK�b�@SG�h���@T���<[/@T��{P@Tb�Ї�@T��U~�@@TFa��@SWR�	T@RA[�V�@P�4�\�w@Ou�
�#@O�1O�o@O��~�@P>̹�Y@P�����@Q<��5(�@Q�sV��n@Q�`�
�@R>Xr�K@R4Rӈ�@Q�<��Ly@P����Do@O��,N�@N�g(T%@O{
�+�@NY�^��+@OY���g@Q�{��!@Q���9@PT�z!@Na�$�IK@L$T��K@N����}@P!Sq��@O���.��@R�)'�"@T��?� @U�yG\�@Uh��r��@U
rh<�1@T�Y'`�@T��i�@T���vڦ@U+�`@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @U� �
�@W��8$�]@U+3�ؐ[@E���F�@D���x/o@V7�F���@V�(�$��@X�ٟؔ@X�V��s@Xh络�@Xi�C@Wˉ��9@Wg��s9@WGe�ԉ�@W&p$���@V��OT�@U�(]�|u@U-y苻{@T ��i`�@R�N��s�@Q/�~A�e@NPӀL@H�)�<�@F�&��>x@;Ud�Q@6y��,��@0����5@-<�H��@*�&g�??@%��T�(x@#���\0�@#����	�@3������@CK U��@K���~L@P[oNZ@SOA��c�@Q��l��@S+{<���@R8�(��@SNL8��@TvD�R��@U�1+�@U�	x�t@T孝6�@TC���>@S5t����@Q�w�4@P�χ��%@O"Um�O@Nm���@@O�$��r@P�)؄@Qf� ��1@Q�N���W@Q����_@Sd���H@S�-.�@Q���Y��@R;��x}@QU���@Pv�����@P�h-�@N�)�l��@N�`\��@M�GXNf�@Q�p;��$@Q�/�[mm@O�bx��@Mv�ՠ�3@MZw1C��@Q%��ü'@Q��8�1@Q|����@S�@���@T�禿��@U��9�@U�H��'@U��^�@T����@T�I��@Tџ��d�@U ��r�@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @V<���@W6���}�@T���Sc�@F'�ɠ��@D@*>�f@R�=_uB@VU#�n��@X�����;@X�r��A�@Xa��H(@X"� {@W���D��@WH_��@W^9�'�@W�Br @VqY9R+�@U������@U$6��v�@T4���@R�表q�@Qd-���@O<RZZ>5@H���{�@@E���@:�v"Ue@6��\��E@1-j���^@*�ci.�@*~}�$�@'�#$K�@'
� �Ɖ@)�)��@-��	��@B��\���@K���Q�]@P:p�q��@T>Ę�c�@RɎ���@R�����+@S���ԣ;@S�ҙ0�@T��� }@U9�oto?@U7��|�@T�Y$���@T#e��@Sd��o�@Q��&��,@P�8E�@N��&@M��_lw@N�N%٣@P�����k@Q���W��@Q��#��?@Qǧʈ��@Rl?�i�@Q��(2�@R2��\�A@Rz�$3[@Q�E�ׇ@P�aw��5@P��X��@P)2h��@O
ʷn@ON]Ә��@RG�WW[7@P����
�@OsQ~4@L?�;�f�@N!h�'L�@Q9��%B@Q9^a�4@RW}m&�k@S?��4�@T����@U�m��%@U�欎�)@U(���/�@T���ON�@Ty���q@TϦP<^(@T�`��,@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @V�m��D@V�w��Y@Tb���@Fa��a�)@BU��OF@P�fa e @V:�-�9�@X�_��q�@X��J%�@Xc�͛~q@W�� k �@W���
��@W&#vL��@V��E�U@V�!��#@VS.9 @U���q�3@U'h�<@T"ɮ�/@R��2��d@Q�����@P����@IH��v*{@Aqj���#@9yJY:��@6���|	D@49Ӡ��@2_�[@*��r,@*��ص`@'��2 �@+mKl笗@0T�qӱw@E+��A%@O�!]�%�@Q4�A#��@S�hR,�@S� �!��@R����@S[�%b@S�ӣP��@T�A��7@U-46tB@U<��ai�@T���y�@T~*ӽg@Sb��ہ@Q�8R�5M@Pa��n@N�zV�ay@M��Ю[@N,����@P!��"�@Q]�y��@R$�~�N@R~U��As@Q������@Q�H�7:@RDA2�@R�bk�1�@Q'�y���@PW���k@P*��V^c@Q�D�!�@Q>W��R@P�K�u��@R08�k�@P�/�
��@N�(�h@L�n��_@O��v�E4@P*�rb�q@P3_�j�(@Q��oJ�g@R�O��dA@TRaV�@U�g�r�@U�Ya�r@U*z?;kr@T�v-6�a@Tn<�XJ!@Tπn�
�@T��^��@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     @Vwd�%z@S7�\�@F�"��@AY�D�Q�@P�l���@V��K@Xu*f<r�@X�n��ޠ@Xa�%}1O@W�aT�H@W���=@W8���_@V�K�S�@V�W�7@VG��pN�@U��"��@U<�:@T"��yV@S(b�@�Y@Rr"��@N�!Ҏ=�@H���o@?��_N��@9*K0@3�a��"@3a-0Y�P@1Q��e�e@0�D��@-{�0O�x@)��(�c<@1η*tf�@7��@�(@K���U@Pv>0*S@S��
���@U^��X@T�[PU@SY	�fFM@ST���?�@S�nh��,@Tv�<�i�@U�ĺ��@U�f@T�j7��@S½��i�@R���G@Q�����@P]@N�LEwx�@M�0:r��@M��{!g�@O�T�s"@P�xN62@Q�g��0@Rn��na@R@����@R �&��c@RF\��fu@S��Qm@Qj^��@Qk��{�p@P<��_��@Q�hRY%�@R{K@QjA��;@QGF�p{@O�0��@M�ǌV8@M4��3;=@P|7P��@PI��d@O��1�@Q
-��]@Rn�z[J�@T�SpOx@U���h�h@U��*$��@U)W>x@T{ܸ�@Tk%e׉�@T�˛Z(�@U ]��X@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @V��v�:�@UdjOH@Q���u@F�P�2�@@k�6J�@P�Z���e@U��β�@X����Q@X����8@X`��j	/@W꺕�w@W�J{��@W3By�hx@V�tU�o�@V�ė��U@VY�j{� @U��y�@U5��@TDu�./@S7��@Q�� 3<@N;�[L�@I��;�@=�C�5|u@9���#�@1'h�k'@,TSg@.�����@1 ��b@*{ϒJ��@,Z�
$X@9Y�_0Z{@C�+�i�@M��K�U@P7s���@T����?@T�\�2�@Sd���ee@S��"��@Sa�:)�@S��3 @TU�QN��@T�=ۯk{@T�d��p@Te�ao�%@Sv�F!U@Rg�����@Q;���'�@P	�}u@NQ�w�m�@Mj1�_>�@M���&ay@OH1M��@P����@Q�t�L��@R��UC'�@RWK�Ykp@Q���Y�@R����@Skc� ��@R�Ά�@R.����@QN!O��@P�
�÷T@P�_βt�@Q|�@P��S���@N���� H@NTN!�@Na��~��@P#�_�@PE���@N�^��:�@Q����@RK�Tr��@S�X�Ω@Uh����@U�*�z��@T���;ޗ@Tja[�@Tg\R@�@T�*O��@T����-@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @U�/����@T�v��S@P�H���6@C�� �q�@>��p@Qx�9�@V
��ed@XhCƉo�@X��n�X@Xj���@�@W�%]�H@W��B0��@W)	OA��@V췽q7(@V���J-t@VW�f�~U@U�Ku^�D@T�Z��.�@S�\����@Sa>�C� @P�� �(?@Ld���H�@H�ר�@A�/���%@DSхց@6��X,@@+$��C@'.Cm�ZE@)���@,Ga�Nmo@,�Qb�@<&K���@G�qZr~#@M�1ɰ@P�/c+��@Tb��Ȯ�@U�n^�c@S�8��@TLP]m�@Sh��&\@S�v
��d@T6�}���@T�Ӂ��@T��*��@T�Ȓ��@S6c]�n@R3�D��@P����@PàQI�@N�}�T@L�=Ȍ(@M/'��@N�,�8�@P^!�nL@Q[3���@Q�� U�@S3�����@Qo���u:@ReAQ��]@Sk��� @S���N��@R�w vT@Rti,��W@Qp��$Ӆ@Q�h�+@P�����@Q�yaBa@O�=\F @P.���@QO�tRio@QX͸�c@P��V��}@P��	NV@QY�v��@R�XX�@S��zk~�@U}{����@Uw�jK�@T�ܩ��@T^�
,��@Th�'�>@T�>")u5@T���'�@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @UۿlN�u@S���Z"@MT%��H�@@�-��w@>����@Q�7��I@V.
�Z@Xbީ�>�@X��T�@XhFD:�l@W烚�7<@Wm����7@W�Yt@W)����@V�9� �@VU4h���@U�&g��@Tᐼ�@TJ2컕�@R�u�x@P�+#��@L�A���@C�$NP��@@n��q]E@:���1�@7�	]��@2�K:(@,�2+�O�@-d䐀�s@,q�`@'��H@5��_Ҥ@D>pb�(!@K��r�(@S�q��@W;�ͅ%@T��ȵ^�@S�qV�@S�vg��@SsZ����@S��:�@T:��@T���9`�@Tj�8�K@S�L+��@R���IZ�@R*���@P���SG�@O�ʛ��@M�tw�@L���4@L�y�	-@M��Rn_�@P�8�Z�@Q=��@R.˃���@Sc!F�է@R�pM���@R{W��y@R�u�rm@S
�����@S�����@R�"�NiA@Q��x�?�@Pz�.4@P��ܴvS@R����@Q	���A8@Pe@�d�@Q�"��[ @Q�I4R�@R�;NKv@Q��@Q�x�[��@R;���Y@S�X��q�@U��|��x@U]h0t/4@T�<0�@TL��&2%@Tg�r�r@Tќ��0�@T��\�@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @V���~@R���c��@H�l{��@=�I�@@��C��;@Rb|zlx�@V/9���@X1�S��@X�-�@Xi���P)@W�,C$J/@W=�#�ү@Ws���@W�e�@V�TtG�@VM��Ao@U�{�|@U&-�|�@Tu���GT@R?��{@O����l@LOqt��@Dl�T(M@<��xV$u@7�8E��?@7p��_�#@1����@0�B��@-8�����@1x�4�@4Pp�Lӝ@A|����@JQ@�@M����L�@VZ�Z�!@VY9�sd�@T\�����@S��3��@S�L�(?�@SU6�1F�@S�8H�8I@T6�m֠@Tm<�@W@T^��8��@S�d7�@R�����@Q�~;'��@P��G�]�@Ob�^�@M�u"��\@L}�>�lx@L$(�r��@L������@O���X�@P�a�~Q@Q��I�@RӘF9��@S���?k@S�d�خ�@S�-b9�@R1���1@S<��v@R��(�3A@Q�6L-�@QF��b=�@P�[�q<�@R��p��@RB���@P|�R�@QdS\��@P}�?��@Q89��g@Q'Ry��@Q�K��(u@R�v�r{)@T6��kR�@Uo����c@UE�@I'�@T��B�@T;B���@Te��h�]@TґċL@T�J(g�@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @UsY�@QnG� �@E��z	;�@;�t`�3@DӍ���@T�l>@V:q�b	@Xu`=O-@X��Xvy�@Xj~&�c@W�] 6�@WU搊\@WdVޘ�+@Wz�����@V�H	Ԁ@V8�z]K�@U�H�xg�@Tv❡@R����@Q�\\9��@N*���@MMV��@E��:�j�@@}��@x@:���AZ�@6���t�O@72�=/N�@4ꢟ�W@4�_{Q@8�o�Dӣ@@�~/C�@J�=$ �@P Q�9@Qv�E�S@U��iP@T����@R��U��@T�f��@SW���<@SD6>�r�@S��V�@T	>�Mg@TSѼ%ݍ@T@���@S7m!��@R4S�G�@Qe/���@Pi�I�@N�˃Pb�@M���%@L�'��0@L@��!��@M&a-�-�@O\���m@Pߔn�4@Rga�i�@RŅdJ�@S��PP@S����@T[9u�m@R?�u��@S2i����@S0����@R�(5f�@S�Z@SY��-!@S���*T@R��]��@P��q�@Qf�y8��@Q	0�=�@Q�`'@P���@Q~
h
^q@R�=�/G@T"BJs�0@Uk|�WЄ@U,�Ѿ�<@T���קA@T)du�9@T[@k�M@T�V|n��@T���N�U@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @S��j��@PU%�=�@B��0k�r@=�a�m�@Jjx��|�@S�7oA+ @VD�X@XZ��4L@X�T���S@Xr����`@W��m�H�@Wq.�<l@Wy�;F��@WC�B �@V��^ �X@V.���'@U7Ua(@S��A�@P�1/�@Q9B�{�/@N��Ti�S@K)i8�K�@E(�N3�@DN��t�?@@���Ŀv@;�]R@9�FIoͿ@:4O^���@@U�q	.�@J"�`S�]@M  �`l@N��gnU@P�j$�'@Q�ri�@TV혋.P@S9�Uh@R�}���@S~�>rE@Sn�t"�@Ss4W@S��3�@T-��<�@TP��s�@S˨�/\W@R�dx_@Q��\0S�@QЬ���@P7g��&Q@N��CKe@M��v�C3@MT\�@LB"��@Me��u�5@Oe/Q�_@P�ҏ��@RC�)�@R�I��ι@SY�M���@TkxB�r�@T�E�V_@S�W6j�X@Tf���y@T�r��0�@T�֫C�p@TK��_?@T	�z��u@Tk�0�n@S����@P���8�X@Q�u�s@Q�5o5�@Qz��9�@O���〱@Q$�ޟ�@R�G����@Td^�o@U*��y��@U�����@Te,�ٶ�@T��ʷ=@TT�=��@T�x��t@T�+5�W@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @U�0{z5�@N�W]^�@@�R��w@=.�1F^�@Q�I/�Jo@Sա�6@V%��p"@XS|���]@X�Y���e@Xw����@W�\�Q��@Wڭ��@@W˅����@W@M���@Va͚Dq�@U���h@TA���m@O�H�b�@Nn��b@M�Y�5A@O)��
�@L�Օ�g�@I����-@FiL�̚X@Ae�P@>�0�R4@=�}�h��@@;��TK@B�V�)��@KE���@M���@O���J�@P��M��@RJ���Е@S�]-ލs@S��U��@Rz&CE@@S2�l�?@R�`�^�@R㖁|g@S��ł,]@TK̶�q@T���I�@S����ѻ@R�Г�Q�@Q},����@P�N�+�@O��[�fD@N�ѥL��@N�zm��@M)����@Ld�����@MQ�wz�@O`�QT��@P�7�'��@R	��7@R�s%# �@S�G钩m@U���w2@Uu�����@U��Z��@T�LA�o�@U����&@UQHB]D�@T�d���@TRe-��(@S�M���@S25����@Q�֫@QR�=�@Q��o�p�@P��1�\@P\9}}�@Q$�s�{)@S1�J%|@T#`�/�@U��$�@TڲK[�g@TI�w��5@Tx�R8@TP����P@T���sLA@T�n�� @T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     @L�SPD�@<�v�aA�@=ϭ��G@Q�A|@Tm�dCDh@V(���V@W�*eW�@X�����D@X��ͭ�@X6��v�a@XN~X�@W�a��<1@V�7@�@V�Z��M@U�0�ߒ�@T_�'}�@RJ��s�@R`���d�@P	Ѭ�@Haa~��=@JjH+�8o@H\�K�h@C� ⯂�@BQ�ӧP_@@���@A�LW��@B�O7!-@F���r�@J��?�`�@N@��>�@P\|�f�(@Q�U�a�@R�4�6c@SS_���N@T�"�Ye@RPY��-@R�C#��@R�д�`@R�b_�U@S`q�ٜ@S�u3]�@S������@S�^5@R_	�A��@Q0����@P[�|�B�@Od}=1P@NJN���@M����=@L���x58@L�˒V�@M�[�]wu@O�<�RL@Pѹ�z� @Q��*��@SI��hB�@T	[!� �@UY9�In%@U��>�@Vg^$/1@VVHS�T@V�I�@U������@UF��8��@T�J���@Te��͖@S@0�X[@Q�+�E��@QO�7p@P����@O�9�T�@P7�$�8@Q�ٛ+$~@Sx4�"�S@TIp�PZ@U/Oh @T��$��_@T.�u�@TW�%\@TO�ۻ��@T�xt? @T����@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @P�����@J qG���@;��ԭ@=��PL< @SWE�,֫@V�G�Il@V$��J@W~��@X��52�-@X��a`@X8��ް�@W�#�f(@W-Ƕ��@V�O�ݐ�@V�c;b�@U6��O}@TQލe/�@Smv��m@Se�R۪@RJ��*�'@P� #�g@K.^�'+c@G�\�@E�&�Y�@Di5BB��@D���d�x@B���A@D�^N��@Jd`yu�@L�|��@O�Q��z�@Q�@�!�@QN!b���@S��j�@U��L@�@U����)o@R� պ @R�@�!q@Rl�/HT>@R��%��@SV�{h@S�*ZO@S�/�;Q@S--���4@R���@P�8qP=�@P4=�%�@O9�/�8@N��i�g@M�ږ&'�@M5�Tl�@MUy��[@M�UJ˗@O|��l@Pد�^�3@Q��LY@SH�fzu�@T97�?�P@U��)�.�@VC�)k.3@V�_�s�<@V�c�_�@V�����0@V" ]�4@Up�j��<@T��:)��@TB�A��@S�}h@QQ�^8�@P���8��@PPF���@OqA�uI5@O���:�)@Q�w���U@S���@TV.����@T��ar�@Tp؜'�@TB~ )}@T�I��@TL3)g�@T��l�n@T�����o@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @P�.;�@Ijw��`J@:�"�bU�@>O�ff�w@R����-@T�^�8�K@U��F=e@W����@X�ūd@X�Fl�ƣ@X,9�r��@W�����@WoӔ{�+@V�$�K��@V�vvi9@T��S@T!� ܰQ@Sv:4Gs@S'$�@�C@RZ�뻥@QB�ԁ��@P�p�N�@M<@���x@H}t�]��@G��#�@G���@H��*�K@JU���BO@K����jl@Nj=j��K@P�k�[E@Q�I/�O�@Rll���@T?Ap�@T�:����@S�T˛��@S����3@R�0��[�@Q�Hx]�@R_�'{@S/�[m��@S��X��@Sp�1��@R�*�e?&@Q��ᆴ@P��X�@OeC��@N������@MՂ���@M�:\1��@L�!l�zH@M3o`�$\@M�����Q@O��"�@P���H�%@R��vS�@SH)9�%�@TQ���x@U��&d��@V� �\�@V��0j?e@W �����@W���7@V9���F4@U�m�73�@U8�a�9�@T3���w@S&�J��@P�M�]N@P���)�@PUQ��@Pk��\n�@Phd��@Q�7��!5@S�>>���@TP;�u�@T��sw@TG2���=@S�;�$��@S����@TK@[�S@T�ݴ�c@T�p��Մ@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @O0��L�@G����p�@<
}�fv�@@���  @Ts4��/@T��8]�@U�2�A�@X����@X��H�a@X�)<�@XP�`/�@W�G3�m@Wkо�c@V��ԁ�@U�1�^�@T����@T+�KQA@S���,^7@SG�ŊO0@R5�ajo�@Qa�8@Q=vf2�l@P^X��K@M�=5P*�@LA���E7@J�[R-�`@I�sԦ��@J��7�?@L�;�$|@O̳����@QK���0]@R��ށ�@S���Fv�@TdU�V@S�|�qڃ@S��j_@R�=�'��@Q��e�x@Q[
X_@Q�� @R��=�@Sw�n��@R�Ee��@Ry[~��@Qp6��@P#J�ɷ8@N���R5�@M�F��@M@%��}@Lء����@LZ�&�<�@L�)b6Q�@MQ�F���@N�I��B�@P�Yl�dR@Q���s�@S*T�2��@Tl�X�BL@U��4��@V�;�\�E@W<h�lY@WQ`���@W��RH�@UbI���@U2��J�@S�AѶ��@Rs�ƉP�@S	��Y��@Q^d���O@Q�����@P�/A�Q@PJ�@�v�@O�e$��@Q��/�_�@S� 2��@T?<�k�@TM�K��@T"]]#7@S�n�w@S�)T��@TJ/�Yc@T����T9@T��Dcy5@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     @Ehհ�,@;$,lI@C����W@T�곐�|@T�gs�Τ@U�yʈ�@W�����L@X����p�@X�a+4F�@X4�ekA@W�� !H|@WX�&.C@V�URG�@U�0!T@T����@TJ?���@S�ŋ`��@SV�h�5�@R��PA�@Q��Q��@Q3�"�ݬ@PD^�h�+@N�}<=B�@MA!����@K�h}m�c@KX���@K�Թ՞;@M�j5)�@P��ʶi@Q�5噱�@S=O@S�+�P�@S�$Q��@@SL2!��@ShK-�@Q��׃F�@P���ү�@P@�눋U@Q����@R4gp��@R�X��ُ@R��$��o@Q�ͺ�<@P��L2ы@O�$�A (@M����~�@MUg���m@L���5�@K�J�O@K�9y��/@LRZA�@M��E�@N��XX<@P�%�\e!@R���+�@Sxt�;x'@T�~	[�@Uù>��]@V����@WwD���@W��4�(�@WQPX��3@U�25��@R���1@R�Ꮾq|@R��:��=@Q{��� !@Qˎ�Å@RV���Y@Q{E��@Pq��o�@P�1�@Q���@S��7���@T/��Nz@T*[��V/@S��.���@S��μ'@S��uB�@TEyz��@T�3�@�@T�&^�ƅ@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @Bs�Ɉ9�@Dw��v�I@9�x$�i3@Iì�!��@T��v�.k@T��՞��@U���v�@W�8���@X������@X�CG�9@X �c�x@W��Ԟ�@W^m�%I�@V�4v��@VF�g��@U1l5@Tj��yҙ@S�j��!@S;���'�@R�����v@R#L�Jx@QR"�/�@P�(���@O�Wi�ۈ@M[L�t @L�r3��@K�	u�W�@K�O����@O��#�@P���I�@Q�$[�@i@S�x�O@Sm¼�}2@S%e@c3Y@R�K��Z@R�<��]@Q� �9�@P/u��F�@O�T��@P���l@Q�RӒ�@R\����?@Rh6��@Q{�[���@Pa����@N�����@M"8�h�@L��鯋�@K�Dvsk@K�hj�+@K����<�@L ���@L�H糿�@N�����@P�����h@R#J���@S�SpJY@T�T�j0k@U��m�@V�U��@@W���c+4@W���N�@Wsn�Q�@VR"j~U�@T�^H�@R�U67�E@R�<��5@R�;0Ѐ@QuaVsW�@RC0M��@Q����@P{��]�M@P C��W@R�/�U@S�EA`�T@T3�/@T]U�@S��]�#@SŸ�Ι;@Sεq���@T<�t�T�@T�Bv�@T�^ֲ�@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @D;.��'w@C�^���X@<��j��l@RD5��,@U-R�4A@T�O���a@U�³�J�@W���@�0@X�E�Zw@Xr�=|}�@W��(��_@W�Zk}��@WTZMv�U@V�d����@VL�IЦ�@Uce�ɀ�@T�T;]�@T�ԛ�+@SN�8x�@R��2�j�@Q���%]T@Q~Q
F0@P��p�@O����@N
{C���@MrlЖuC@K�1�"�@L7a��P@NWrX�8�@Pt�Uz��@Q��.da�@R�m.��@Ss�د@S�á�r�@S��]�D@R@]4�*�@P�~Ν�@O��\P@N6�Ƀ|�@P�7�* k@Q�+v�w@R�=��A@Q�ơ,��@Q/o;z�@P%�%
t�@Mմ�{ @M,+M@LAR�ow�@Kt�t�6 @KQ8��¨@K�^+g�(@L��.-�@MS�f��@N���0s @P���M>@R-m 
ǚ@Sp1�[�@T�)Ɠ'@V8�� t�@W��Y�{@W�]�@W�PWA@W��^@V��`��@U�c��@T�^��a@R[9@@R��R�A(@Ry��k�@R7��V[G@RS��A!@QY�+,Y�@O]����@Q�(�cq@S��e+�@S�
�f#�@S��0���@S⍄dv@S��z��@S�� ��c@T2�+��@T��9@T����V@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @W�8�-��@F<�;���@>`BG��@S���{@U2�ˠQ@T���ii@U�U\�.@W����2-@X�d4�k)@X��S ��@X4��	�@X@�j�K@W����%@V���q@V��_z�@U���}Ww@Tu��.5@S�h@Sr�x>@R�>����@Q��c�I@QM�f�m@P�1 �4@O��"�9�@N-�=]V�@M�8F*�@Lv$eyt�@Kb��d�@LKA�	@P�K��oC@Q�@�S�U@RO���uu@Rǁv���@R�Q�U�@R�O�k,�@Q�7t�2]@P7�{�(�@N�.��=@M%_���4@P,���Ef@Q�8@Y-@Q�+�S@Q˹Ȗ@Q��Ȋ�@O�^CL�@M��EY@M��
��@LI��Q^]@K�X�S�{@KD����@K�,ǳ�@K�~���@M:u�U@N�O���@P�k	/@RfL	l��@S�E�5�l@T��EG��@V;���5@W)Wp��@W�wu�k@W�����@W�����@W=�&��@V��S��k@Uà����@T�#�Mmh@S*��\(@@R�p^��@Q��%�[s@R�v6@Q�?��@P�#�@RZm�@S��x¥@S�9�'@S�t��`^@S�_�/�@S�.jP�@S���u@T&��D��@T��l�@T�'V@�@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @WW����X@P]�'�Ѝ@?��(4�@S����	@U_�
�O%@T���FpZ@Uθ��?@W��ɼ�@X�����@X���H�@XaĖ�0�@W�����@Wo�]���@V��Tp=X@Vz�@T����P@S�x׫P?@S�n��e@S�2�C@R�w��Y�@Qݎ�x�{@Q����v�@P�����@O������@N11Qv�s@N��L�@M�[;ٸ@M
��c�@N�?���@Q'nY�<{@O�[ �l{@PR(M�@R-��FK�@R$�$�@R��g�g@Qn@}@Oe*��dP@M]�P�@L+G�Pn�@O�Œ�<�@Q�ʧ���@R���@Q����,@P�%���6@O���Nç@M7�?E�@L[+�:��@L��9>�@K�W%�=@K/�2���@K��bT�m@LPC�`@M���@Oh��(�@P�7�#�@RD5��[@S�;éE�@U	uC�Ǐ@VMn�{@W2Y���@W�2���@W��(d��@WԐҼG/@W}$�i@W+9���@V[�?�@Utrdh�@TJ9[�ڤ@S#�P���@R8���=@RJ�wO��@Q��d�@QT�:��@RK�tK�@S�cp �@Sқ���@S�R^y�@S�U��@S�*���@S�}�3�!@T�`��@T�	�v@T�rX�5@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @V[��U�@T��GQ�@C�o�d-@T�vb]E@U/���@V�jI�;B@V �  >�@X����B@X�7z=��@X�L��e3@X;�ꉣ@W�Mo���@W,g=��@VW�|y�@U{�jd�@Q뿽�k@Q;��ϒ1@R������@S��/�@R���1�D@RL��㿡@Qc��E@P�*�<�p@P�VD1#@N������@OǠ`��@O1wb��+@O��dx@O��~ۥ@P�ZX�i?@Q���/�@Qp�Ѕ~�@Q��v�d@Q�u�-��@Qq�h�y@P�����1@N���� ]@L_<��@K@�d�C@OM��9q9@Q�1Ex�@Q��
�@Qi}N�\�@P�d!��@Oka����@L��Rn�@Kݟξ6y@K�,iv��@K�b��@J�]�t�@Kp�	�E@LNMx�#�@L�B��e@Na��5@Pq_1w4@Q��P^�@S^f6Fj�@T�d�ZY)@VQ�^���@WG�M��@W�	c~L@W�4���@W�B�/=y@W��#8F�@Wz��K�@V�f��@U��
�@T�-5a-S@SJ�P���@R��4��@Q�b�`y!@Q�AD�!@Q:h���@Q�e�@S�]`@Q�@S���ڌ@S�Jo�{�@S����t�@Sk����	@S�˵�D�@T�x��e@T���%�[@T�b�Z�Q@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @W��.@U*��)@OD��Д@U xA�@U���}@VS��Vz�@V+K0,@XA���@X�a1���@X���,�%@Xr�X��@W���u`@V�v�X�@VR���	@U6�T�f�@Q�g�2 y@Pl��W@RE��!~@S/� @R�#|�h�@R3J2M�@Q"��|�@Q�\1��@PQ��8�@O�1���c@O�om^��@Ol~�H�u@O�;��3@PI��wo@P�D1�d-@Q�S���@QG�z4�@Q5�a>+@Qg�%,�y@P�5}d0=@O��d���@Mñ�y��@K�%�`�0@Jh�C�=@N��ڝa@Q�&��Vr@Q�e���I@Q�<S$)@P�Xt_@O�ǂ��@MJ��c�@K���ھ�@K�z��e@J��P��@J���J9D@K6{��T@L^(<�@L�Ƞc��@Ni.q�@P&��6z@QɆ8�X�@S$ba@��@T���b_@V>�_�p@W@X6���@W�E���K@W�3���@W��x�%@W�#Ej��@W�,��@W[`��@Vy�r\��@Ui�z���@S����u@S#]N�w�@Q�5D� @QD���@QL�k��@Qdxۉ@Sֱ���x@S�fs��Q@S���A,@S��P�@Smr�"e@S��8��@T��f1@T�Q�v��@T��ɩX@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @WE��*^�@VZ/���@T���u�_@U��ŷP@T�����@Tn�C�=�@V�l�@Xj ���.@X�=��L@Xt�.]�_@W��ly�@W�����@W��A�@V�7���@UJ���A�@SI��"�%@O��>}=@Q+�Ļ�@QŨp�&�@R�����@Q�R��@P���{_@Q�cE��@Pz�iWs�@P��
_@PT���s@O❮ظ�@P'���R�@Pt���&�@P�B� �@P�z�IV@P��
?@P��EVL�@Q[��y@P�Q���@O
h
x�o@L���!q@J����f�@I�_��+W@N2K'~S�@Q�R�z#d@R)2gU@Q�����@P��9�� @N�o ��X@L�����p@K.�H@J��ы��@J��ݣ@J�*/U� @J��<©�@K�����@Lʹ�Ns@M���P@OڜD%�c@Q��(nT�@S�H�@T]IS��!@U��7�}u@W%J)�@W��z�l @X3�r��@W���lx@W�hd|*�@W�MSt;U@W��k:��@V�=Ŭ5@U䇺�]S@S�	��҄@Sb�r���@R(���@�@QMR��@QXb�I��@R4ə���@S� �BU1@S��ۮ@S�Qg�H�@S�?d��@SqG�9	5@S�7z�ϫ@T:^�/@T�F��ǁ@T��.��@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @V�'�q��@V����K@Ub�t�/�@UV���@T��v}T�@TLMG��6@V+N���@X���H=O@X��i�\S@Xd���%@W�宷ym@Wn�5���@W/��&�@V�_3F�@U���<�@T,J��*�@Q���#/@O"f�)Sa@ORX�g�@P���u8@P���F@P�����@QaҤ
c�@P�c�� �@P��{}k`@P1~���l@P>=H��@PBg�Q�@Pw�ŀ@PZ�k�Š@P�~�EW@P{���a@P�5�)�@P�Wt	L@P�]u	W@N�k���@L3��*X�@I��:?�@I10��z@M�f����@Q�Q���@R��)�@Q�T�}�7@P�~�@˦@Nƾ�wU@L�S���@K3�s%qs@Jv�`��S@J_����I@JQi�	g�@J�T��C%@K^���q@K��#t�/@M�=���@O�����@Q6�G�#v@S�Q��@T]���@U����8@W�7ݑ'@W����_@X�m+��@X��5y�@X^B�ܭ@W���-t@WÍ�=�A@WNg��<]@VbQ���h@T�Z2�@S��mh��@Q���3l@P���LK�@Q�h$��@R�۝�*@S���{s@S�Ƅ�`�@Sۉ>(�3@Sɟ5;1@S{U�I@S�2�
�U@S��u��@T�4�� @T�?�C�@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @W�I`-�@V���sc@U���V @Ue��z�@U���SG@TR&���@V�.�B�&@X�dq���@X�*:��4@X^�V�3�@W�M�S�{@WR=;�wU@V�>�4�s@V�N���@U�?V+@T�N�oK�@S �-�[k@Q�K�!�@Qo=4/b�@P}�[�J�@P��[D0@Q�a���@Q.�z;��@P�j����@P��x`�@P=y���O@P[�x��m@PqdeDX@P�K��@OM��)}@P/"l��@Ptb���@PlnĠ(l@P/�w��@Ou����@Mc�T���@K_�Q�m@I$�yP`/@H�%B���@M!D6 ��@QV�	rʅ@RRk�]�@Q����@P�ުkJ@N�KEV� @L1�#_&�@J��Vk�@JE��V�@JC�PC�@I�>K;q�@J6?k�a@Jl� ՙO@K��8S-;@M"���=@OJ%1�E@P�6�6�@R�s�W.Q@TA���6@U��s�l@WlR�:M@W���e@X{<gAK@X Y.��e@X߈�Z�@X;���c@W�#�&��@Wm�g�e @V�x�%��@U�� j#�@T'u�s{@Q�)��
�@Q�XE��@R?ӫ��y@R��P�!@S�Gc��@S�q�,�@S�/�B��@S��=�@S�,�Y�0@SyK'��@S��s�@T�0�(}=@T�o�V^@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @W���<�@V�Te��@V,��K��@U���7@Uc/����@U���z@W�[���@X�o:*��@X��[~@X@yY��@W͹�'�@Wl� ���@W	�}���@V_
�u#�@V�9ǔ@U.9��@SV�V�k@S�ε_;@Q'�IRa�@O|����@R���@Q�Z?<<B@Q;[U�R�@QU6h�@P�z�l��@P�I'@P{7�R�o@Pk�cF�i@P��n�@OU8mJ�@LW1U@"-@Pf=�o�@P\�i��@O9j�g"?@Nm�W9�@L�ҷR�5@JO����{@H��z�%�@H
1t�]@L��dE�(@Q���-@R&I1�I@Q�R�/��@P��[�?�@N�럒)C@L4bc�d@J�L���D@JjM(��@J'T� ��@I��C��@I�'YZ��@J�r�G�@K9��V9�@Lz�FB8�@N��\'�'@P���3$k@R��Ոų@T+��G@U��˄_@V�v3r��@W�~k��@XڥߛH@X��Q;@X`�(��@X3e�}u@XH:/A@W���x�@V�a���@V/����g@T�~�s�@Q�����@R	;�/��@RM?�E@S$7��}-@S5`B�P@S�^ ��#@Sٻ�ӝ-@S����+@S�o,6��@Sj̎e�@S���8PT@Tn��y�@T�1��@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @XV�ػf�@V�1R��@V���J�@V�E�V�@U��Ɵo@U�o���@W��~��@X�1�Y|@@X�I}��@XS�UII�@W���ζx@W�vf(4�@WO�(d�@Vm�gћ#@V� �@-@U8g��Dq@S����s@S�(%���@R����pa@Qu��k@RkX�]�@Q��✋@Qi��)-@Q\����]@Q<��B�@P�_/�3@P�"��@P�Z�	>�@P��m��=@Pu�SP\�@O~��W�@P*S�@O[X�"��@N��><@Mw��N��@Kp��f�@I���`6�@Ho
�ݗ�@Gpjw���@L~BN�$@Q9H)8M@R8"�V�g@Q���wC@P�K�A�@N�A�K�@L?�H�q�@J�=�U�7@J���@J�Uw��@Io�w�k@Is[q�@I�ў�@J�n�$y7@K�ɪ�tE@N*�z;�1@P��Rc�@Rftz'�a@TR�O��@U�R�; �@V�����@W�{Y�B @W�f��(�@X��ޞ�@X
�9�H@Xٽ�F�@X�~@W�6�+8 @W&�
x}@V���(?�@T� ���@R���|�@R���"i�@Q��]��@S!��m�#@SK��
�@S�m� �@S���>_�@S�ciue@S�<��[�@Sf����@S�~F�C�@Tz�  Q�@T��/��@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @W�mk�@V�AЫ?�@V�&H_|�@VH\n�Kp@U����@Vή��@W��V�_�@X�mC/X@X�����@XT��O5@W�1h�=$@W��6E7�@W[�TF�S@V�]��#@U�1E�8@U���NH�@T���8Z@TK���@SGx�K��@R=Ϟ5@R=�rB;@Q�L~���@Q8�Guӱ@Q$�Oo%@Q6���\'@Q*\�F�S@P�×�"K@P����@Pp�� �y@P<Ta�?@O��v�*�@Ot��U3,@N��E�2@N0T����@L�
~�25@J?��Ua�@H���,<%@GR��X@Fƭ��A`@K�H��8@QW�@R6��*0@Q�faXL@PXu6Yp6@N�$��3@K�V�6�\@K6��C=@Ji��Q��@I��=-\9@H���Q`=@Il%�9�@I��)�@x@Jrܯ�^�@K�<G�@M�UK��d@P6��q��@R	Ҏ�&�@T���+@Ux��SQ5@Vܘ��б@W�3�YX@W�����@W���H=@X+�
�@W��Y�NX@Xٟ]�w@W�R���(@W;Ir�zD@V��2o�\@Ucōl��@S�+��x@RڦP�dK@R;�ƙ@Suq��%w@S���Z'�@T�����@T���X@Tș��"@S����&�@Sg����A@S�L���@Tw��Hd@T�hfC�@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @W&�u�@Wd/b@V��&�L(@V/�n��@U�k�o�o@V���FX�@W�7\��@X�$���@X���@XY�����@W���̻@W�$��@WV��ދP@V��utp0@V���@gE@V�#L��@T����1@T�]uo@Svu�^qU@R��:�|@R8�{$�@Q�=2K%;@Qjr��jb@Q$�qO7�@QKq���@Q��Y�h�@Qo/:d��@P��;@�A@PKC��N�@PL�\@O9�٨��@N��8J�@M����=@M;���@K�:8�@IQ���$@G��K�@Fv��k�S@E�^B�j�@J���u�@P�X*��;@R]X��@Q����@PN�ȕ�@NY6U�=�@L=�����@KC#��r�@J��+o�@I���f�@H�v[m��@IQYT�T@J�'��w@J���%��@K%D`nd�@L�B�@O�
J�jl@Q��[��@S���="�@U;����@V��`ؾ]@W�0$(2�@WѾC[��@W��Z?@W����U@W����7@X���@W�1��@W^���0@V�F��I�@U�0 #��@S� E�
�@SkN|�=3@R��#[��@S姴�'@Th&���k@T'!�ĹA@T���)@T��Tv:@S�J�:��@SoRF`vA@S���f�@Tu�B��)@T��E���@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @Vp/5/@W/��ɍr@V��F.�@VK'݉Nl@U��C *�@U��b�{@W�s�R��@X�s�z@X�r�5N�@X]A��|�@W�ɞ��g@W�<y) @WmO��4@W7��]?�@V�zf�E@U�r�O��@U8קw�[@Tw�]���@Sr�zܒ�@R�7FK@RFvͨh@Q�rb�1K@Q��JV/@QZ��I@QGJFsF�@Qv-��;�@QY�jY��@P��h��@P-��.C@O?+zy�@O2���@L���f10@M"D<i�Q@L|�D��@J����v @HUړs"5@F�����@E�EKc��@D�$q/��@I� "�)@P�u3>\}@R;����@Q��M9oA@Pc�๫@N>�SP@K�<
���@J�L��_8@J�=����@I�<��R@H�f��D@H�BMY�@I�&���U@JGo�"�@J�N���}@L�i�*�0@O��e$�@Qi,a���@S?��<�x@U&u�$6�@V���9z�@Ws�5��@WϭON��@W鈝^~M@W���8@W�˵�*�@W�m�R-@W�.1f @W\䎼�`@V�*��.@UΞ�~[�@T'���q@SM|$P��@Rʫ�T�<@T����@TrI�#��@Ti��g5@T��"R@S��Y0��@S��56]@Sdt>�
/@S�e�dp�@Tn�`Y�@Tؑ��TC@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @V63k8֙@Wq����^@V�\E�@VY>��n@Uٺ2��=@V������@W������@X���B�@X�J!n�G@X]��A�=@W�:�D�@W� G'!@WB��t�W@V�ʈ�� @V�����G@U�#Bp�@T�r+H�@T`s�V&�@SQd?�m@R���ߍ@R0n�Y@Q�F�i@Qԏ�!=@Q��7)�@Q�ي4�@Q�D�hT�@Q��u�cF@P���l@D@PJ����@O���@N̍��H$@L�R����@Lt�4�4�@K��o�l@J+����@Gt��I��@Fe�D�-@E�y�Z�U@D^-�d��@H�I���u@P1R��'@R)p�;��@QܚW�	@PTN��@�@N?��vEX@K®��O�@J���1`�@J<�}k�@I�C"D�@Hz|�5��@H�TςȜ@I; �r�u@I��1t@J���L?a@Ll���wl@OW$���@QSi_��@R����e@T�'jT@�@VoVq@Wfu�">U@W�3��A@W��Vl@W�_�7��@W�n��C�@W� �Uρ@W���XZ�@W<-@|Y@V�a#C��@U���Y�%@Tzʍә@R�ݏ�J@S;EB��p@TA_0�j@Tg`ٽ��@T,7ڌ�@T��B��@S����@S��r�N@SU�$ �@S�H��C@Tg�:��q@T��Y�@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @W��X~B@W�ɜ%�@V��O�I@Vb�N�,�@U��o�@U�r���@V�@f;w�@X{�J���@X��@��/@XQQ���@W��?�@WRq�Gu@W�>��h@V�@����@V�njL��@U����p@T��B�D@T?i�
l@S[>�B�@R�9>��@RW_�DK@R+�T�F@Q�wA�%I@Q�9"��@Q�\�#�@Q�OB��@Q{�{�@Q���@PG��;�a@OG�_@N�V�{@L�՝`J�@K���*$@K_�u�@I��z�K�@F��C@E�L�� @D���"2@C��1
A�@H��;c�]@O̾$��@RYq���)@Qަe��@Ph�b��@N[D��1l@K���@J��R���@J`ƪϫ@I�*��_�@H~.>!�@Hg���@H�\�1@I�����@K4�E6k@L�ܫ+��@OwW�G�@Q5�Dҭ@S�u��b@T�[V�0�@VJΗ�,5@W]���,�@W�%|��@W�}�=dQ@W����+@W�J��܋@WɂV�i@Wz�?���@W��ɕ�@Vr��G�H@U�R��@T[�V�K@S;��<Y@Sy˶�
�@T��0�PM@T��U;�@T$�Mo�@T7Ly	@Sϙjb)�@S}1�p9�@SLD�O,@S�l��Lg@TcV���l@T�o9���@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @W�|b4Gf@W}���+�@W�C35@Vn�}�	�@U�?�N�T@U�0��k@V���$3�@XB�8U�@X��86b�@XG�~��@WʾB��K@W<�Z�٘@V�jv0�@@Vᢍ��|@Vd%�@U����		@Tĵp٩�@T8{au�(@S�o���@S�����@R�\���@Rh�ʯ��@Q���o�@Q�~��@Q� �j�@Q�$]6�@Q��ݤ�@P�
i�S@PH1ߐ�@N���,@M���d�C@L�qq?�@J��z2S@J��v�6h@H�kǍ�'@E�?HBy@E_E��@D�C)��@C�تL!@H�2�P��@O���u@Ruv\��x@R *d��@PkC��#@N"�E�@K�j��1@J%��H#@J��+�,X@I��e$%@H3����C@G�!�i1@H��P�W@I��?�@Kfe���@M;f����@Og��p�@QUR�̣$@R��g`,@T���63@VQ�8��@WY���=@WØ�|a�@W��p@W��b��@W]��8��@W7p��+@WC{�Q\@V��\�]@U��gw��@U\b���@TF����}@S�Uf�0�@S!��'�@T�t��_�@T���?(_@T*� k�@T����@S�q�׹�@Sr�t�H@SDۜ+��@S�/Tv�9@TZ#�O@T��#2�O@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @W�.ǈ��@WZ$�z�@W"�r� {@Vf"YE~�@U��>���@VZ����@Vx�beB@X:U��?@X��~��@XK�)E�@W��lG%@WVfW~ݏ@Wޔ�/c@V��l!�M@V-�����@U��/@T����Ą@T0��C��@S�r���`@S\Fo��@S^64΅@R���V�@R �kT�c@RT��'x@R��Pp�@Q��e@Q��?t�@P�q�Y @P�L�@N����e@Mb6�m��@K��3�}{@JG֬YH$@J$q-��@G�,�~jS@E6|(�@D��F�E@D�O�_@CXL���@H)�����@OZМ7%@RR\���@Q��\d��@P���.�+@NDT�vW@KGb�<��@I�~�	��@J�o?
zH@I�dȼTt@H n�TC@G�{<:�@H��0�n�@I���)cS@K�x@Lu(rDOL@O�(ޕ@Q"\�n�@R��.��@T��K�@VKM�0!I@Wc�=z��@W��EH3@W�@��@W�z�*7L@WVk���@V�����l@V�e����@V(<�C�X@U=�
V�@Tbicx@S��,��@Rz}���@Q��I�	@T/�ǚ�1@T��L=�@T(5�@�l@T#y��Qm@S��A� @Sg0��@S9'��@S���}@TQ�i�/@T�&:�8@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @W���H&o@We>��g@W ����@V�So�5@U�J�rβ@U7�a���@V.���y@X5J����@X�����g@XW?p�ga@Wǃl�6�@Wl�7��@V���1hK@V��0�H@VU$�8@U���{��@T�l%�	P@S���?��@S�Z�@	�@S:�l�@R���p�@R�y%�A�@R`�זc=@R<��no@R@��+͋@Q�=�Ҍ@Q��!^�@P��~$m@O��6��@N=�mO6�@L�WIs@J���y�@I��a��@I:2s��@GS���;@D�w컮�@C�(�C�@D!���s@BRo�)@G�Ƴj�|@O'�1Hn�@RR� ���@RJLn�$@P��
�W�@N:�bN�[@Kdڪ�s@IS�w:�-@IȲk5��@I�N���@H.����C@G��Lc@I.�A�#�@I����/H@Js	*��x@K��7��@N�5�@@Q!��n�Q@S�t�@T�T�b�@V?w[X�@WW4���@W��Mk@W��oq9@W��e��@W���_��@VH�`�@Vp�{��@U�5<�B@T\��[{@S��ش@R?����@Qu�ƪ��@P�.JA`@S9܂��@T�H�V��@T/�3�3@T ��/��@S�Y��N�@S^���:�@S+zw���@S����@TI��yW@T�mw�a@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @V�@�2m@WgX�J@V���@V��.s��@U�(g��@U�W/��@U�(Cڔ�@W��j���@X��׏��@XVX���@W�+��@Wt,����@V�S���@V��ʛ��@VT�#.�@U��U��@T��z�l@T]R�Cz@S��WX��@SBD*@R��&Tq@R�-��q@R��X�1�@R+;���@RP�l!K#@R,&#xD�@Q�{Dbj�@P�	��@O�7�>�@M���i@L��!Wc@J�M�SU@I�x�"P�@Hz�P�$�@F�8�ֹ�@Dw.lm�r@C��^E�@Dǜ`R5@A�?�Gg�@F��=@J@N�*���U@R`��ǵ@R#�041�@P�פ�ǋ@Nx�N�c�@K��vB�@H\G/��@IeuqR�@I���g6@F����9�@G��'f�@H��S@H���;@I���9@K{u����@N�2y&�0@Q	2GC�t@R�J6��&@T��L��@V��T{@W%�!�@W�fw��0@W�z��:�@W��z��K@Wx�i`b�@U�����i@U��Ƒ�Y@T��i�@S�zl��,@Sw�;��@R^z���@Qzˁ�5@P����@R|���@T������@T5�م�@T�C�sG@S��� 9@SE����D@S���k+@S��(G�@T?�p��@TƎ�C�@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @V������@W�1��ɐ@V�N��D�@Vm/��@Ú��@S޷X�� @U��D3l�@X����d@X�����@XN����@W�Fޓr`@W�v��?@W(�B�d�@V�����@VX�D���@U~3*0�@T�@韶C@S��o�}@S�[6· @S>��8@R�;ێ<�@R���;"S@R�b�U��@R}�E��=@R��Wz@�@R`�poI@Q�G��1@P�"���@OU��@M���*��@K�d���@JJ�~��@I��~D@H4��T[@Fţ`WW5@D]��D@C��&�`@D�O#�@A\$���M@E�
�3��@N6�V���@RV���k9@R<��n�E@P�F u)Q@N?��T��@K�uMv��@HK0�}��@I�ǹp~U@I��C-�@DmERx�@G���/��@H&�6��@H��F�E@@I�
h� �@Kw�/�`W@NQe���@P�K�#@R�_Oh�@Tl�M���@U�e��O�@W�?P��@W�,�y~H@W��R �@W�W�j+@WDa�0�@U
�� �f@T¬r.��@SXJcu�@T�,�'o@S��o�@S=:�@QH�iw^=@Q0�t��@Rr!u��@T<��H�.@T2h���o@T	B�z-@Sm�_(,@S&�te@S��Q�@S��Q��c@T7�}O�@T�i|_�;@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @W�����@W�F����@Wc�F@VJ�.��@U��d-�t@U�� B�@U����@W����@X���G�@XUQ�8��@W���=,}@W��,@W,ш-�@W\8Ȝ\@VJf�I�@U�nt@T����@TT��@Sǋ���@S+TU�0@R�H���@R�>�@R��-���@R��p���@R���b�@R4�@xN�@Q��@C��@PŸ�;Œ@N�%�R@M?�d��@L0G1;�@Jָ	��E@Iz��.`@H�!��@FmKs�-@D���٠@CLA|�@C�����c@A��Vp@E���u9�@Nv����@Rc���@R1�V�e @P�w���@N�~���@L%D�S�@H�2�B�`@H$��@E�&݀}k@E���V�@H2K��@H�a-PW@HvW}Y]@I곞���@K�qmb�@M��}=@P�M�^ C@R��614@TE�/?�@U��G�8�@V�����@W��'6�x@W�;8am�@W���؀@W5��B-@U[Ȍ��l@S�*,��@S���W@S�Iߚ�@S�e�
y�@RP�{��@QCe[؛A@Q�<�x��@R��|��A@TZ7d��@TG�W�5@S�1��k@SUW�$�@S�AP+@R�G<Y��@S�����m@T7���|[@T��j�@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @Wr#���@W�z.�k@W)�ڟ�)@VD��I�@Uf5�}@Ux[/��@U��-$Ix@Wa/�O�:@X���W�h@X_ݜY�Y@XX��<�@W�G�JO+@W.�9~r�@V�d -y�@VF�'�>#@Us$��n�@T�3	Ӱ�@Tb�s�ɪ@S��3A�@S2�K��s@R���p@R�bg���@R��f�M@R��0.U@R���|g@R*=��Q�@Q���,F@P�W��PK@N�Ӑ;��@L�O˹��@K�Q��fg@JexY�@H�%|�P@H&�j�bw@F�뵠��@D0�in�@C&�K��y@C�8(_��@A���(�m@FX��t�@N�~�`Y�@R��(�@Rr��y*@Q�]��@Oi���ظ@L��V�l@J2r�5@F6yg���@F�J�I�@H={�+ �@H���R#�@H�1)�@H�d-%b�@I��#�з@K��.��@M��p�@P��v�@R{��6�@TA�_w?�@U�@��@V�;/>$@Wh���@W�
���@W�!���@W0�p�[�@U�+��@S����@T0i�5�@S���ja�@SqKqF��@R���@Q/K��0@Rt0a�H�@R���̋@T�W?�@S���q�@S�!��1@SI���N�@R�S3O�#@R�~1M�@S��;���@T6��؀�@T�sq4�3@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @V�b�f��@WŌ�ś�@W���Ib@V7[��ͥ@U�cb�@Vv���@N@U�bӠ��@V�$�&D@X�\���@Xew�4w@X����-@W�?𹠨@WoM(��@V�`��-`@VR�W|e8@U��8.��@Tˌ҃��@TW��|��@S����@S&yʹ�@S!�ɖ� @R����<@Rv�쪺�@R���~�@R�0�D�@RN	��O@Q�A$��@P�am{��@N��M@�@K��T�X@K
,��P�@IVIk��@H;�Fu�C@H,{���x@F~Q[Y?@D26�r@C��x�: @D2b��"@A��x���@F��`@Nm{Q�v�@R��y�u@R�����@QGQ})Q�@P�|�w�@MGzW��+@KQ��5M@J�u�FH'@J��]�,�@I�)�x��@IGok�C@Iݾ�0-@I��l%��@J�ml$nP@K��?ۗ@Nc��r{@P�W߈�@R�W�F$�@TY����[@U�}�E��@V���b��@WUL�˵�@W������@W��<�G�@W#�Ռ��@VZ^�4@T e��c�@S�����@S��'a�@T5N��7@R���\a@Ql��ȫ(@R\�`o�@Rv��$�@S�?uTB�@S�݊ O@S���5B	@S=7rZ�@R�<�s�f@R����@S�$8f@T1jV}��@T��b��@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @V�Ó�Hy@W���W�@W�d��!@V!Ɓ�@U�� �A@V;�3�>@U�r�zv�@VpG׍Z�@XN��tl@Xg�с@8@W���~�@W���$U�@W���j�@V�̺��(@Vdz\_(@U�C� H @T�/�GP@Tr,E��@Sׄ�.G@Sc/�A��@S%�ֆ��@R��B�@Rc��wO@R�o��tw@Rr�>AVt@Q�}��0@QL�ϑ@PZ`@��$@M���Ϻ;@K.�n/@I�v0ɦ%@H�Rt��H@Gq��)��@G5^ǆzH@E���
�@C̴s��@C�[k�!@C�ɀ�p�@A�Qs�q@F�x�9�@N'�����@R���9�@R�����@Q�08���@PK.!C�@M��$$3	@K��'��@KCJT�\@K;��Y_�@J��*R�1@J�|��@J�VihT@J���^�@KC�0�@LUr�m15@N�#��s�@QF���@R�]1 �@Tg��[,U@U��B�w�@V�_��F�@W,�s�a@WxO��-�@W}��(�@W/h��@VHtQ@Tq�7��/@R(u�|��@QJ�-��@S[t @Rw���W�@Qrh0&�@R\z�c�@Rj��+q�@S���: �@S�O���9@S��ue�B@S,�Sٴ@R��ӯ��@R�u�nx@S�LTb�9@T.�����@T��(�1@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @U�l�E�@Wnv/TR�@Vʺ��@VF����@U��;nv�@Vy�_�+�@UzeW۸�@Vo��u�@X@�s*�@Xp�0	7m@X��G{d@W�⠠�@W�F{�@W�ܨ@Vu_1ɀ�@U��$(��@T��?=@Ttȅ��W@S�d�_@Sp���@Ss���/@Rځ*�@R�.7'@R������@RN���r�@Q�{��@Qp��@O�!Y��@L�u�5�@JAr�7#@Im��{�@H&���@F���*2)@F���dy�@E�,7@C���p�M@Cn�Q�T@Cl���G@AKl�t��@F�Y v��@Np�$�@R�k�	�@S�Ac&�@Q�q�g��@P?�
Ʌw@M�M�S�@L����A�@K�T�	�@LB��0@LFzZc�@K��:ჵ@LOsJD�@K�d�(1	@K�����@M��~W@O��mK@Q1�Wu�@R�28�R�@Tc����X@U����@V��7&e�@WX���@Wl#Hj�@Wj��l@WB�&V�@Vy���~�@UA��31@S����U@S�b�K@R�)/��@RH�É@Q$l�@R 盧��@R�aJ@S���K�@Si���b@S~a4��@S!}��7@R��@<9�@R��*c@StAďE@T,X��>�@T���_+{@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @S�xA�=V@W�-��@VƔ>��Z@VSg�x�=@U�J�!@Vzw!�^@U�<���H@V�����.@XK���@Xo&T� @X
���G�@W�,1�!@W�^���@W+T�Q2�@V�\&h�d@U����C�@UDkM��@T�~V��;@T?z$�x@S���ꄑ@Shg��۷@S	ϻ/�@Rۣ^v�@R�57�4@RTp?�v�@Q��m���@Q	U�/�@N��v��Y@L�0�}�@J��ҹ�@H�y&T|@G���F��@F+���@E��g @D�����
@B�
�#!�@C���@C%�#:,@@�\��5�@FY�� h@Nbt��@R���
�@S.���@R���_<@PB[ɃP!@NQ$L;m@Mo�@�,@Mh�$�u@M���}�@MM1y���@Ml�"�[@M3���@L���[@L�����@M�DO�@O�_�ܼ�@Qh2W��U@S}{Y�@Tc�~Oi@Uz!-%@VRR��U�@V�����@WR���@Wb���@W2�4��@V���b�@U��q6�!@T49�E]@Sw;(�E@S�H�/@R����t�@P'���2�@Q�����@R.G�w��@Sz��(z*@SI D��@Sf �G�@S��b@R�9�Nx @RӣHn�@SjF4h(m@T+��X��@T�nP�4@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @R���Ɯ@W5�T�G?@W"c�K��@Vk�LH(@U֊�@T���U@U�"4E=p@W
}�,F@Xt�<��8@Xk�����@X��m��@X����@W���|�p@W@�Tz9@V��;ޗ�@U���\��@UOO��@T���@TS�؋v�@S�f�hpp@S�W�ٺ@S3F�D�@R�.tl�@R�0�_�@R{�733@Q����@Pƾ�S�@N����p@L)d�n�G@J�
�v�@H�['���@GH�� �@E�lh��W@E<\���u@C�Nm�l�@B�gX�~7@B�S��6�@B�t�D@A�P⮠@E�����@N/2s_%@R�A�bv�@SOUF!!�@RB�e��@PpЋ�m@N�5D��@NB��{ @Nj����%@N��.y�@N���@O*��!�@N{>���@N6�u�@N?K9��@O��/X@Pg��Be@Q��0��@S��Iv@T<iY��@U`Ӿ���@V?��Z�@Vݝ��@W@܊mw@WQX /��@W-�u��@V���`@U�ѩ	#@T��%�@TV�>��@R���=@R�M�2@PA����E@P�8����@RPlʬ8�@S����G@S:t��X�@SBL���@R�r¤�<@R� �V�1@R�w|�'�@S\��#�@T%�{��<@T���%�@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @S���@j@W'[Kf[S@Vٓm�+0@Vbd����@U��2��S@S�a�L��@U�?\LB@W`tJ
��@X�ֈ�H@X�����=@X(��s@X	�e8,�@W��d@Y@W_.���@V����5@Vy�?(@Ul� ��@T����)@T�oө�@TMd�[��@S�<��Z%@SCL�Kp@R�B�z�!@S,�n�@R�IcN�@Rm�\Q@P�����@NB��Ed�@K�p)�?@I����5@HS��e�@Fݒy1I@EdB�:��@E�I���@C�n�tv�@B�״Y	P@B��)�;w@Bu�T�]�@AI�x7��@F6����5@M�x��b7@R�+���@Sw.�1�@RE]Cqӥ@P�n�1@Oi�.���@O^�q2@O���K��@P>-Q�8@P}�3H*�@Pi\t~��@P&���l@O��4(G�@OO�F
�@P�K���@P�>Wjn1@Q���ƴ@S�dRq@T>	���@UM:(�+@V)��El@V��}LM@W.�#)@WR��i�@W4�,���@V��y;j�@V#4}ur%@UX�	�w@Tk;nLx@Sf�[@R�Y6"��@P9��~i�@PfOX4=�@R�>qn�@S��U�̔@SZ�]��@S!��c@R��\5�@R��d+�@R�,L� �@SX���_@T�JUY/@T�D�M<�@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @TP��)��@W��P��@V��c�@V4�B@U�":�9�@Tq�<�\@Uϯ��s�@W����O�@X�����a@Xy���@XEA@��e@W�k�=+@W��*���@W^��\�@VĎϢ��@V�#���@U��K�q@UF���-@T��?@THV'1y0@S���DP�@Sf��dY�@S8��$�@SN%���@R�����@R�eĶ�@P�1X�I@Ncg��@KЋhM�@I}թ��@G�f���@F`��a��@E5f0�@CӢ��l�@BA�]U7@B\ �'��@B�+C���@B��DR�@A.ئbxH@FYp���a@M�ŗ�z�@R���4k@S��f_%@R�џ�,�@QP��H@O��4�@P6zlLY@P�r*�@Q��k@Q{.��-�@Q]�3l�8@Q	jb�
3@P�J3�@Pa��8�@P�X�΅�@Q^?|��@Q݋aE)M@S�.@Tdc�3y @U#��q0@U�{xf-@V}�+hS\@W�w��d@W)��;�@Wċ;�s@V��;@VB"Zg?�@U���gs@T ���!x@R��ˆ�@R;�;��@P����@P-�X\�U@R�0E�D@SmzF�oS@R�g�@S�Ď�@Rާ®y�@R�q�SY@R��-��@SSL�'@T�g,Խ@T����*@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @T0X� _�@V�}lƺ@V����@U���eن@U��7�@Q�e�]/@U�LC���@XRk̘�@X��Mpc@Xo���	@XT"�>��@W��)*Ak@W�)e(�@WIB�մ�@V���&��@V4p"��@U�H�Q�%@U]�E/Q@T�m�,W@TV�@S�ހ��@S��;�z�@S{�Xb��@Sk�Ti�@R�(g�ѿ@Q�J�D�1@P�S�,�w@NB��P��@K�,N-@IX�\�S@G�k���'@F�W�a@E2M���@C�;͑�@B�[C���@B-'�/@B|��#:@BP����@@�ZP�̩@Fe˽��@N,6�Dã@Rtj9�w@@S�)'d�@R��`�@Qã��/@P.uڋ�t@PV4;��@Q.����@Q��Ċ��@RPI��*@R+���e�@Q��D���@QC����@Q7&U7�@Q"3[r�@Qcv�O�'@RG�|�@S1�<�@Tn����@U,�Jj��@U�G)��@Vk�Q�M@V�uH_@V��1fR+@V�M��y�@V������@VT0���3@U�N���@S��i�{�@R4��$�@Q��z=�o@R7)�\@P�ʋ��@Rڣ��@SE�^�a@R���@R��MI@R�Đ)@R�j�tW9@R�6 <T�@SC��g��@T�)�=U@T�
��8�@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @Q�gl�^M@W �K��@V�� O�v@Uߺ~���@U��zE��@TM��#�@V ct@XK��2�@X�`b��@Xs)�{k@XO\�e�@W�4���@W�o��U@WCc=�m@V�S	7Hc@V2���@U�%��@Ub����@T���@T}^�[I@S�J����@S���%�|@S�}�O�@Sj­h�k@R�QdT��@R7G��@Pj���G�@N k�c�@K�귉�@H��p�O�@Gm']�Xk@E�I�*$5@EFq�;�@Dݐ5m�)@C4C�e�@Bњ��[@B�5u@BP~[&@@Z�)+�@F.�Z��)@M��Ͱ��@Rk��tL@S��oJr�@R�e� �@Qko�עx@P�v���\@P���&�@Q���/?@R}k��V�@S ��~3E@R���o@R�J�4K�@Ra��-3@Qמ
�g@Q�0�N)�@Q߉�y@RqN�S6-@S=�ޚ9�@T;���NX@T�l"�|r@U�MmC�\@V^S~=e@V��q׽H@V���[�@V�v�2i�@Vuǰ��@V8���%�@UF�TH�@S:#���	@R"_"�M@RW0���@Q�`73@Q�p]@S���!�@S2ӱ�M@Rߞ�'��@R�p��:�@R��;@iX@R��Ar��@R��hR�@S/�X�G@T}"�|(@T��׮	�@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @L�8�X\@V�&ԏ�e@VغP(��@U��"�?-@U����Bp@U����G@VŤ��/�@X�@s�L@X�W��%@Xx��+��@X,h�'��@W��W��S@W�Ԛk��@W"R'��@V�0?�6L@V<�_��@U����x�@Ue���bp@U�QR�@Txg�Ne(@S��^s@S�N��P�@S����@Sy�e�[\@S����a@Q�["���@P8���*$@My�̅T�@Jÿ��P@Hƣۺ3K@G)�����@F<��M�@E4!�Z�@DP*��;�@B�qN���@A�6?�Q�@A�چa�g@BY{D��i@@�g�W/�@FQ� �D�@M����@RS]�Մ@S�~��@S��v�}@Q���2!@P�~�:�X@P�|,���@R6w茫d@S?�|k�@S�*ؑ�w@S��$vqH@S]R�0�S@R��8EZ@R�x��ʱ@RqK�0�@Rp��jK�@R��ܣJ�@SCk�@T	�M�@T�0Y�U&@U]ps�s@U�5n]$?@VH���H�@V�7İx}@V�sө�U@VO�MT@U�l��d@UE�LM��@S�84A[@Q}��˚�@R�+�`��@Q��H	�@QU�\1خ@R;���Ni@S2�j��@R�j=*=@R��)A��@R�N�Pt@R��&>��@R�eo�@S����@T�	�,�@T�l��@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @Rv/Ѫ�@V���<Z@V��^#�@V20���@U�b�B�@VC��:@W~�AcP@X�N��@X����g@X�D>��@X�{�S@W�+�4=@W����@W!)����@V����)K@V����@U��!W��@Um�0���@T����X�@T�	���@T"�V�	k@S❉C�@SՔ�ܟS@S�����G@S�ı�@Q���@P-��@M9@��e@J����1@H���|d�@F��y�Q]@FA�_��@E.]��
@DASFS��@C��W�@A�?Y��@A��4)W~@B3�hSY@@�O"���@Fv�ෛ@M�̦�@RxM*R@S���=>@S(
�y;@R	��� /@Pgd�@Q����@R���0@S��g< 3@TQ��a�@TTQOG�t@S�z���@S���l��@S:��}�@R�?u:�@R��^a@R� e�H@S1wD�m@S��K=�\@TTzgUQ@Ul�\�@U�(9p=@U�5*�i�@V3D���@V 󵘸I@U�+m� �@T8�`�W@T���}��@R��SN
�@SgiKAP�@R�PQ><�@Q10���@O�C)��@Q���O��@S7M�D!@R�?��4@R��ͯ.A@R�	�yI@R|�{��3@R�V��@S��,ة@Td��@T��4��s@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @Q�=����@VOL�y5�@V�����(@V6`#uk�@U��[@V1\��8�@W�f�4@X�Uw�[�@X���]�@X����y @X#����@W�^�zD@W�h<<|@W.h��@V�SG���@V-B�R�@Uݜ���@Up�����@T����$�@T��uX@T(�p/�@TA�$��@S딕�g@S��f��+@Rӎ����@Q��Ά�N@O�Q�vW@M�P^@J�7����@HyR/��@F�cS-��@F��t@E5#�6��@D>ċE#�@CJ��l
@A�S�R�@A�����@A�[���@A%��͟�@F�Gv���@N��ꁘ@R�AGMs@S��^-��@S?%�|��@R8�*P@Qci{�@Qo����@R�۟�s@TD���s@T�x�o@T��|qy�@T��곬7@T9�Rs�@S��M@S[�횜�@S �?c�@S�Ȃ�-@ST/'��@S��s��@S극�g@T���bk=@T��֊��@UQ����@U����%�@Tn�7��@S.�W�S\@TS��R�+@S�s�hY@Ss}Ȣv@S����h�@S���܀�@P�{�(�@N�[[�Au@Q�����@S1*og�@Ru %�>@R���j(�@R�?I�l�@Rv��ã`@R��C{@S	��4��@S�'����@T�\��E@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @N�]�@V� %�vK@V�"k��b@V܈,�;@U���@U`x��I�@X)$J�z@X��x�>�@X�����@X��W
��@X)�Ut��@X ����@W�nR�m@W��-�H@V�f~?m@V'��P�[@U̦����@Ujy��<�@T���-��@T��~OB�@TF�^p��@T�w�@S���2�@S��xڝ@R�+.�0�@Qp56�@O�k��Ϥ@L��./'@J]ʁ�N@HeA�D�@F���7-@F|'ı@E_'0��A@D��n��i@CZlN�D\@Bk����@A�Ds:�@B�i-�@AD�no@F���@NI���;@Rp�����@S�B�͹�@Sq�R�|@RU%�3@@Q<ulQ_@Qm��w�@R�092�_@T}�Y@UTTA��@UP��͎@U
�g `@T��I�@T���7�@S��`d�@SN��T|}@R��J1S@R�t+ ,S@S0;�X�@S�hbk&�@TH�5G@T<퉸�@TbM�
T�@TM��0�@Rj�L��k@Sz��>_�@T�:�NM@S�\����@SCso
@S���0��@S�
)���@O���Lc@N:왧��@P��>�CS@S=�F�@R{�KR��@R�}9u7�@R���ً�@Rw޴Z7@R|��*�y@S �N�q�@S�:+�@T����@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @P�x���@VV��4��@WXr�k~@V=Ӆ��@U��<l�J@U�,1�P@Xg���ڛ@X������@X��/|��@X�#�̭@X5����p@W�3~�'�@W{<�/�@@W�E���@V�0�#��@V%���X@UǇsd|'@Uu�J���@T�~�� @T�q�A�a@T����@TF'":��@T�WZ�E@S�b�$c@R��r�d@Q&�Jg�E@O
�Dfw@L�R�m@I�T�p�@H'�'X!�@G.��d@F D�8��@E7~�!k�@E��=��@C]3�-�@BWy%?z@B��hC�@B[
��|}@A��VR!@G7��>u@NĮg똡@R��7Lu@TU���O@S�.~J�T@R���4�@QHކ���@Q����i@S+-��@Ty��nS@U�Å��@U�V�S@U]ϔo�o@T��1���@T���b@S����@SY�|.��@R��Y?@Q��O"V�@Q�E� /�@RX�9�6�@SO�LB�	@S���ɣ@R�;��E@Q��؄�@R����%@SKn^�@@S��=A�+@T}hbL�H@R{#��@TB�jZ�@R�0	 [@N7�,7�@@M�\υ	�@P����@SD��V�@R�6\x�@R����M�@R�����@Ru��V�/@Rt�J[]@R�b�.*g@S�����@T���k�S@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @R�2h2Rt@U#a
>߷@W�q�mi@Vp�(Ԙ@U�����1@T�"�F@@X�*}fn,@X���ow@X����@X��b��!@XEH�T�@@W�W2xܘ@W{ B��@W,��e@V���tg@V%���׵@UӁ˪T�@Ua�ِ�@U	A���@T�Kb�!W@T�5˂y@Tl
�"@-@TdU�U@S���&F@R\PP�aI@P��|�j�@N��!�@K�l��F{@I��>AW@H~�K(��@GPݼ�T@F�OT�x;@E�ԱgDu@E� w@Cq;�Z�@By9�@BV|�h��@B+/����@Ai^?z��@G�Av_@O� ��@Rڭ:
@T(���@S���^�@R~��6��@QN�5i��@Q����@R�s���@T]�����@U�Ş�DL@U���;��@Ul}�a�U@UDK{B�@Ty�&i�@S��Vb��@SD	l��@R
��8��@P$���ru@M|��\@N)��_�@Q�R�!�@R���Fk@QB&�풁@N���_�@Q��Y��^@Piߕӫ)@R��{A
�@TIP*7=7@Q�>��O@R0�
��@P��v���@M}p��@M�GP@��@Q�:�}�@R�gV���@R� 5��@R·�>Ȏ@R�K�8��@Rp�Cp�@Rm	if�g@R��#=�=@Sҙ㭣@T��	�@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @SLg�)�@Uxr��C@W'J���[@V��
vg�@U�;ƒR�@V0�)F@X�H܈`v@X��#�`@X���ߥ@Xx�KDݸ@X@ʊ}@W�4����@Wx���H@W껁�@V����@V)���@U���x��@Uz�ǋ�@U��\�@T�\�w%@T��d��y@T_
(W�@T*k�5��@SMX��@R�tn3@P��k�}(@N80&&w�@K�'^�L@@I�\--@H�a�d�@G_�X1��@F�4t�-@FF7�@EXJ�;pc@C�#�7D-@B]iXѾ�@B.��! @B �y�@A���8�@I*#rS @PVW��@R�w��~�@TMf��S@S�@R� �@R�H�@Qh��\�@Q��3.�@R�7���@TYY$h�@U\]�`T@U�H�'��@UW����@Tნ�<�@T@�Sq�@S�K2�TE@Rߛj�@Q�����C@M�k��C@B$A����@Ab<(��@G{�Z@@M��֊�@L�]�@N�-����@O�zbr�@O�700R�@Q�t�*�@R�����@O�Z����@P��"9@N�^�~Ho@Lt]E�\@O!�XXal@Q��:�=�@R�;��V@R�
��`@S4�J���@R�@�C�d@Re
�dn@ReB�% 7@R��l�@S�I>���@T�*
��@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @Q�n���@S�l]�@W7�@�(@V��}�!@U�,P�;�@VUb=��@X���@X�R)I��@X�-}�& @Xl(�^n@X.����p@W�:�Pִ@W^X�}(@W��//G@V���e�@VJp��@U���V��@U��+��@U6��	��@T�=é��@T���� 0@T`ة	T@S�v%��@S>���hY@Q���b?@P�Ƣ��#@M��2Ǒ@Kl�a�?�@I�D�$̳@H��PN��@G�cz�@F�
�L@F6�IZ*<@E�}X)�@D0��b`P@B�l-�K@Bc<�-a&@BP�_��@B�i�y�@Iξ��-@P[���a�@S;1�P�9@Ts�����@T"�=Z�E@R��b˂M@Qa���4e@Q_3�@RY[���a@S�A%.@Uqu�|@U;�_8�@T��N�Ou@Tl�"9q@T���@S�~��W@S)�7@L��0?�}@3�X�$�'@*]w�8�x@3�eם�@=? �H��@D�C�e��@Je�v�	�@M�x�L]@N�"��@Q�P�@PHX�g��@P����@OsS��@M�BF�*�@M�ۃ�S@Jp�s��@PL��(p�@Q��	�\�@R��z:�@S2(L*�v@SM��-�>@R�����@RP�	݄@RT�yM��@R阭�h@S������@T��#ǗE@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @S'cβ��@UD�rQ7\@W%��B�@V��t��2@V��1��@W��<��(@X�OVKѡ@X��ȓu@X��~{<�@Xh���O@X#8mW6�@W�~���@W3���w�@V���ӯX@V�o���'@VLM_;B�@U�� �_�@U���~0M@U\�8�u@T��@{@T�bk@Jn@Tx�ju�@T\��Y�@S+ֻ�kg@Q�N �1@PV(E��p@M�Ka�@KAl�w+�@J#���=@I�W�C@HF��q��@G���0:a@F���g�@FO&?�-@Dx���ƴ@C}+��	@B�s<>�@@B�nzmh�@C8�³�o@J�X�ˁ�@P�����v@Sl�V@T�D6��@TRe��@Rˣn`+2@Qb�d��@Q,�~�@Q��G4�@S Q?�do@T��~�@Tsf��@TX��*�@T"h��+�@T1W:Bo@T0Eæ�u@JlD�$@#���}#�@,\fޯ�@.��$�@5W(��@8�I�	@8�Y��A�@B���v�@J*0+/@Q 5N>V�@RTf(��`@N~�|�f�@PuQlop@O����]@M�nЌ�@N*-�p�@@I�!��6p@P�K��v/@R	���@R�u;X @S6�w���@Sj��ˀ�@R�z��@RH�����@RC���8c@R��Rv6@S�mY�yS@Tz��`-@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @R5��]�@Ud��C�@W.�%�%@V�U��@VC�g�@W�O4	@X���P8@X��q�[�@X�bZ�� @Xu ��@XrǕ-�@W{vS>m�@W��@V��b��@V����Mt@V=���؋@V�e��@U�]���@U]>����@T� ��?@T�]P�m)@T��ǅ@T��V/@S�CfY@Q�#Hb��@P96��&D@M��0=��@KY���7�@J,aBz*`@I��g>)x@H�òf�p@HC��m@Gc���O@F����@E: ��=@C��	S~@B�_%&j7@C!&*��@D/ �J)@L����p@Q X���@S�l��@T�exp��@TP��y�@S	&D�ã@Q�%�LA@Q1����@Q-P)�s@R����@R����@�@SJ"Ц@S3	^�4�@R�oĳ�x@S��5��@Q����D�@8/󐳃@(�����@1F߳�(@1Rg�Ig@5�O��%�@9�� K@=�/9��@C��;e�(@M�u�8Tw@R��#�@P̄�e٨@N��+�@N�܇�=X@N�.�	�u@M0=Q���@Mm���"�@L��(���@P��V�5@Q��	���@R���m�d@S�x���@S1ٔɞ!@Rȷ�:N[@RD���%�@R60O8@R̠�gP@S���@Tsw� �<@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @MJv�=�@U`A�c��@WE�a�@V{>Ҽ*@V��K7@W��p��{@X�*K�Mz@X�u�°@X���~{@Xrm�.�$@X��\!]@W�Ƽ��h@WC.ʲ��@V˗��@V�T�<�g@VR��{�@V+$Jr�@UƂ��@Up���u@U"qmK��@T�5��@T�eo�)�@TL����@R�@�M��@Q�8A@P�#}�>@M^
c�@K�%tV�@Jv� �l(@J��<�@I&?�^�a@IGv��@Hpu��֋@Gȕ�>�@E�H#l)�@Dj)�d	@C�@��W�@C~#뿘�@D��A�2�@L�+1���@Q��9t�@S�L3e(i@T��I9M@TuU�F�@S,l�3�@Q�gu���@Qq���{@P���/K�@P�h̹n@Pܽ���@P�:l�ss@P��U5�	@P���o�@Kp	q@5�耣s@*xݛ���@-Q����@4�ž��@9�3�A�@:$���ݽ@<pw���@B�sߓh@F����[@M�F����@Pϥ�w�@O����/@M�-_D�@N![���@M��
���@K����j�@N%�5⣕@P�p�ik@Qd�H�lJ@QޞI��@S^��C-a@R���K��@S.(Z��@R�{i#��@R9M�:�@R+e8U(�@R����G#@S�R�E�@Tp� ��@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @LSa��@T��c���@WR~��%:@V���NK@V|�.�@Wڔ{�] @X����p@X�j�i�@X�$ZXmY@Xf�eu�@XG"`#@W�Mx�խ@W|[��@WSii�g@V�w��a�@VvNj�Q�@V��%�@@U�h
y�-@Us�=��p@U<#����@T��aI@T�Q���@S�i2դE@R�zG��@Q{y4�@Oՙ�"��@MdC�f!�@L	c��w`@KM�:.�T@J���~Am@J4�j�i@I�Ӻ��@I��-�g�@H�|UY�@F�Q�{ʘ@E>S���h@D�n+@C��U@Ee��@�0@NKi@�X@Q��K���@T�����@U"X�D�@T���_��@STA�.�Y@Q�����@Pﳊ��(@O���Hb�@N�/�&��@M_/�$m3@K��gR�@E�f`�@;��m���@400
q�@01@�݄�@0]9��+@4:m#_Q�@8n�����@: B
�#1@:�U���@A����3@@D�wXy��@GS�J@H����E�@J�`Ĕn3@L*���K#@N��liX-@O���@N�����@H��K��@O*~�p��@Pˮˇ�C@Pᙢ�N�@Q�@c�@SO|[�V@RHy�}�@SJ7�(�R@R�8k��@R/ֆȁ@R���u@R���HI�@S����f�@TjB]6@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @P��]��'@V��t�e@W�ºb�d@V���?@V-z��f@X kj%P@X�R`�[�@X����8@X�\����@XX~��@X_Ί�@W����@WVA��k@W����@V��k% @V���fn�@V0���X@UՑ��>@U�VIY@UVs��@T��K]@T�B�K��@S��M��l@Rٚ/�f�@Q�h�ǰ�@P�Sb;@M��6�h@L36��D@K�\�y�M@K)LRHrp@K��ƚ @Kd�ٷ�@J�Y���u@I�cf�mE@G���5��@F�x���@D�!�@D��Xr+@F&מ��@N�w{�@Rd�"�@Tt�E��@UL1YNx�@T솠"<Y@S�Q 2G@R6b����@P�~�"c@N��	��@LNT8Z_}@H� ^�C@D�U���x@<C$���@:�;ǒ|s@8W��A`@68ze[��@7��ަ�;@=�EG�@Aܦ�yy@=,��"a9@<�gKe�@@��i�@�@D���@D@)P�h@EvFӲ�@I���&�@K� p�@Oԃm�X�@NnG����@M�l�5�@K�%��h@O��>�^�@P�xu�X@Q�H��@Rw�{��@SC�*P�@RA�0���@R͎_GY�@S$��3��@R*��`3@Q�o�J@R�����@Sy͕�pj@Też�r�@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @Qí�0:�@WN���@WJ�R��@V犽bk@V~�	*ҧ@X6e��@X�����E@X��T�M�@X�{8=@X`-���g@XRJ�-@W��2b5�@W?�oU+$@W`p�@E@V�d���@V�KK���@VOBb&�g@V�����@U�ؘ�L@Uz�c`��@T�2�BD@T��GS�@S����@RЙ����@Q_`p�+h@P�sHE@M�!�v#@L}�7W��@L3�����@K�4IЯ�@K�~���/@La�2���@K�%B���@JΗ5��@I���r�@G���y�@E������@E)A�0k�@F���h��@P�O���@RѰ��/�@T�N`���@U��SGO�@U.��އ@T��u\@R�=�t'�@P�g��6�@N~��<{%@K�	:R=@F��h+`@BK���z`@@p�8ř@A޶��x@=�f��B}@==D2x�@?�ӎ�0@:��^�Sm@8G��7d!@A�V���@@̜�X�@F6J�|�@D���=�@CVC`x��@FJ��b�}@J_	%�@L�~ހn�@P6\2�@OJ.��@MrU\���@Mś2��@O�iR��@Q��?h@QfH�t@R������@S9�+,2@R���F�@S6 �Ŋ@R�0���@R��s@Q�c�%�m@R��C��@Sl�pO)[@T`*�b=@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @S���dR�@X9-�Y�@W8�ģ��@W�$0�P@V���`Q�@W�0���@X��y�@X�`1�&{@X��Rխ�@Xa��'k8@X`�1�u@W�@�f�@W<-8�;@V��3@�@Vȅ�/x@V_p����@V����@U��b��@U���j/Y@U@�z�$@T�i��l{@T��G�u@S��	ÿ�@R�[9��@Qk]�?i�@PE�v	��@NTh�I�E@L�x3�5@L��Ճ�L@M6T@d�@M]�,Z7@M|��%0@Lک�9@L y��[@J~%@\�}@H�5�~�@F��47��@E�ĝV�@GqQ.&}@P��K�Y�@S%�����@T��³�@UݏD���@U���V�`@TmRa�y@R�^h\�n@P��D�p5@O���ҍ@L?�ʤO]@HZ�*�0�@E����Q@GOmE���@E����y@BUk�W��@9%�j*��@B��@�@<W�L�7�@C���s@A�i���@>Q
�0�@?h���}�@@��?��@C3M��@GH
;X/T@JQ�YJ<}@MjcN�o�@N��Wc@PM����y@N�o��y@P,(�� @PL�X��@QEE��i@Q)� �2@R��)�Dm@S;$���@R<�|��[@Suv�k@R)$YW�l@Q���tyg@Q�-Ҕ@R�ܓ�{i@SaYC֮m@TY\ʖT�@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @T00����@W��fy@WRߴ�M�@V�P��5@V���a�@Xh�Ev�@X�Sz8^@X�@��Ȣ@X����@X\��I@W��W�@W�SrF]@W"Z��v�@V�j�Ҵ+@V�?&�O@@VI3�0�@V%8���@UћB~"�@U��܊=%@U/�H���@T��{@�@T�����@S�T��@R�?(���@Q{'�@P19�2@N�p�t�4@M��w	M@M������@N��_��@NS�[�k@Nqv�̵@N&�M�l@M�Fa���@L`�4��@I�Z[P�@G��R+�X@FZ�W?mX@H,l��}�@P��-���@S�э��M@U+
��@V)�̒?@Uϗ\�q�@T�.��{�@SXI���@QU�Fv�@P*�3(�@N+��oi�@KN�4q �@L�}k2|�@H�?�K\@Aq��$�@=�d�Q@91��]-@=��Ebe@B��S��@E���ME@H����@B(fo�@@���7@@�a���S@C��K�@G����@K��4q@M�6�Ґ{@P_ty�@PB��k�@OӟD@PI�h-��@P���e�@QA����@Q�rcXE]@R���+@SW��޽@RiI�p�{@R���ؿ@RD�Q�H�@Qܵc�]	@Q���r��@RvW;w+l@SX�!��@TTμ�S�@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @T��� �@W�v7�@WZ]�?�@V��Aq@Vy/C���@XJ��@�@X�+_��@X�e��N@X�^�U�@Xb��
�p@W���m�@W��|e�@W%cci)@V��'!@V~��ZW�@V/�M��A@U�Q����@U͋TX��@U�}p�mX@U7&��XD@T�g��7�@Ts3��F#@S�pcE�@R�	X�5�@QeI,uV�@PdUր�a@N��K�@Ns��tU�@N9�j��@N�q�<�@Of�rՂ @O���=@O����^a@O]��4u@Nh��wߛ@K=� �_u@H3�5اg@F׏���@I2�7�@Q�C1�U�@T?[�O�@U����@V4�ɇZ@V�q-.c@UYW�k��@S�J�/4�@Q�x���@P�J���A@Oz*���@J8@��\�@GP6���u@?j.�J�,@@�3c�F@>�]>Eh@9t�v�@;�d��@=�dZ.��@=���-x@>���P�@?j��h��@@�k��p�@Bj�l�@Ea���@Igq���%@Lt|����@N�_6h@OӁ^A'@PA#�M�=@P���@P5��z�@P�'\-s%@Qb�[��@Q�<�%V�@R����@Ri�ϔ@R#�u	�@R�5|�!k@RfU�	�@Qm�_@Q��{#j�@Rj����@SOJ�^B@TL,�#�@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @T���:�$@T�ڶ��@Vf�IR@V׼nԦ~@V�@�)%e@W����@X�}6`��@X�%�S;@X��ó�@XY�s,k�@W�wD���@W>���@W����@V���@�@Vt�@k@V(��_�@V!���@U�'4���@U��ꟽ�@UK&�r�@T�
���@Tj�0��@S�/�]88@R��.��@Q�ң�]Y@Py�{��@O�@���@O���h@O=���Ec@O�7�#(@P+zl�;9@Px _��@P��'7J�@P���,� @P�tT0�@M66��]@I��~�g4@H;�c�@J�_K"X�@R�����%@T��X]�@U�lW��@VYZcfz�@V/�"?�u@U��Q�}0@S����O@Q�6Q�@P�+���@M��Pїp@H��Q({@C���WP�@@�)�#Q@C�܍�-N@A-\G��G@>����S@@��&l�@>�z�e@=�r�ֆ�@?(�}Wy@@7r�(�@Ak ���@DE2�]��@F؛ @J��=�"C@M ���@@M�棵@O��i�u@O.�2�ʇ@P�Yx�@P*a����@P�9�@Qv�?�wI@QAm���@Q��<�S@Q󀲃1�@R���L�@R��
�It@R<w�4�@Q�j���@Q{���ie@R[8��i�@SA�P@TG3R��@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @U���C$N@RLp����@Ue̺gnD@V���.�@V�� �&@Xd�z�@X�� �v@X��Zg��@X�{]��\@XP���V@W�3b�@Wy.�@W!�XU�l@V�Ne)�@Vz�8˿H@VFl5��X@V�p�]@VJk�]a@U��(F]�@Uf�uk@U��E�@Tz%14Yh@S�SX�O@R�I�U�@Q�A(��@P�t�nKK@P%kG!Q@P��@P.<\#�u@PR��M@Pًg�=t@Q=H���@Qx|��v<@Q}���W@Q0\R��@N�K��@K
�)�E@I�����@L�
*�7L@Sqq�n�@U(�(@V/���@Vu��͈@V�;OI@U�V��@@T-q���@Q��"�P�@O�ʔ�@L�+v�0@I��O���@D���YS@D�1�"�@F��
�T�@E�u��@CX�X�U@CQ$oS�@Bz>tr�@A�R�իy@Bjs�6�@B��%q�@C�S�w��@Eؐ�L`U@HP�a��@K!=�_�@J�I� (@M"�C��@O�ߊO��@P_Uٙz�@P1*e'�U@Pc���t�@P��N̺w@Qv!sT@QQk3��@Q%�Nd�@Rms���o@R�k��M@R�
�֤3@Q�f�zi�@QJ@#`�@Qd��s��@RM�2���@S8���-@TCz�_��@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @R�`c�V�@Q_���D�@T��>5U@WWӥ/�@V����"@W���F�V@X����@X�p��O7@X�ˉ��E@XPJ<O^�@W�L��|@@Wv�d�@WB�3(�@V��g�L9@V}/U0'�@VB
ʂ��@V(s�.�@UڡQ�T�@U����?�@UP�6,7�@T��F��@Tx�(To/@S�a}u��@R��E��@Q漎JD�@Q��
�@P��l��@P��L�Z�@P�Gc�@Q��`@Qt3�΁�@R�l�K@RL��.�@Ri���W�@Q�x�
�A@Pq���$@L.�IJ#@KE�s�@N��l�@T5`r��@U�XGt��@Vn��ۈ@VTU�ZM@U�8����@UQ�w�p@T!�Nв@Q}u�"�@N�a����@PzZ��3X@O'^8���@Hdr�?8@I��cr0�@J����(@I���~̣@F��h,��@E��ei#	@E���@D�����@D��#�Hu@Eܺ�I �@Fr�R @Gw�v�@I��=?o@K%oCTD@J�t�f�@L�pf�״@O���0�h@P����@PSG�|�A@P0�>Տ+@P�}��@Q���&�@Q�Cs�{L@Qv�%�K@R�=���p@R��ȗ�$@Rθ��@Q�w�)�@P��%��@QK�wU,{@R9��(R@S.W�
��@TB���?�@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @R����J@Q�~B�#�@U�$C���@V��Y/;@V[qY���@XSo��J@X� �]�`@X�\I�@X����)�@XE``1�<@W���p 0@WxާK�@W���@V�{�Ya�@V�P!@VH�P�h@V6�^'�@U���l@U�\��,�@ULm�.�@T�F�lŕ@Tt�2���@S�bǗ۱@R߳�T�@R��8��@QJ��L��@Q�1@P�z��C�@Q6ɺG��@Q��^�L@R-|0�Oo@R�`�;�@S(U��P�@S:Ԯ���@R����Ǥ@Qx�NTl@M��DyS@K��"J�@P83g(��@U���,�@V$�,�/s@V��6�h�@V�t)�5@UrV���|@U3�vZ6�@TEm^N�0@RT�����@R�H���#@O���3�@MY.���@J_��@GM?7�<@G�^\�s�@NQ���e@I���p@H]%nL�@F�W+�Y@G]��e@G5(��	�@H���F-@H{v�,o�@H�
n�@KG{W�b�@L�\��@NepI�@OHxb?6�@O96n�@P/��o�z@O�8L�@O�L�[�@Pl`�4pc@Q���B�@Qooߣ&+@R+�&�Ջ@R�����@R�I�c�!@R�1H+�@Q��H@PNm�`Lj@QDw�&��@R �V,��@S!�?/�@T<�a|��@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @K�Y�hd@Q���H@W)H�� �@Vݳi�[^@V\(��!�@W�A��#�@X���]F@X�����@XLCC@X8�KgW@W�� ��@Wk����0@W%�� @V�va�\@V��R�Bd@VZ��qH�@VI\9@U� w�D@@U�}&"E�@U<����@T�0�_ @T[F寄+@S�\��'�@S��O�@R<��@$�@Q�+���k@Qcn��<�@QvYwz�@Q���]��@R>(�Q��@R�b�J
�@Sz�%pR�@S� �V��@S�,�F�Q@S�.s@R_j��h�@O���n� @L,.P_�m@P b>�i@U��2eD�@Vfɸ��U@V�\7R�S@U�@i�@U@@�`�@T�}����@S�6�XbE@Q����g�@R�����@O[ϙ�@K۽���@I�mG�ڍ@I^�S|͗@I���U�@L�ք� �@K�`ײ|�@J��Xp(�@I��<���@IpK�x��@I�� ��@J)�DaK@I��4�/@J#5Gw3�@K���W/�@M3s{�e�@PM:a<@O����@O��:��@P�H��@N����E@O�<��#�@PSSoHY@Q��7�&o@Q����@Q�&����@ROH�^�@R����=@Q��2W�4@Q|CT��@PA�K�	@QM�U�{@R��dXK@S����?@T9N��0@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @O�<�-��@Q$Ί�@W!�Lc��@V�:/��p@VN���~]@X,�c��@X�����@X�T3q&�@X}����@X3U{���@W��^T�@W` V��@V�Y?2�7@VםЩ(@V��Y��@VW����@V${+'WC@U�b!�@U�i��;@U?��w@U~M�� @TW�v�]�@S�,�NH�@S }YU?@Rjzf��w@Q�����@Q��|���@Q����@Rpi@V2�@R��
9w�@Sqwr_��@T+��Q�@T�%a='�@T�M[9\�@T�����@Sh�Cj�@Q��צ"�@O��j]@L��m�oK@UR�zק@V���8��@V���(��@U��Oٺ�@U� *�@T��(M��@Ri�pB�\@R=���>@NEW]���@G�X���(@G��pR_@I��̢}@J`�">E$@K_�ޅ@Nlq��@K�Mq0o@J���@J�}��ə@J��� �@J��V>-[@KP����+@K�#F��T@J܈�1��@L�f�yj<@N��	-#�@P]��B=@O�%�x�3@O��ˤg@O(G4�?�@N�{�U@N�����P@P��i{3j@R%��sv�@R���]��@Q�3��p�@QT��jDs@R�m��E@R���9@@P�Ӭk@O�w*X�@Q�UH@Q�-}�Hu@S����=@T7/�+~#@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @O��1��@P�r�_��@V��#��@V�/�0�(@VK���?�@XG\=�	@X��#o�@X��ϝ��@X���6֬@XAػ[�@W�:y@WU禕�7@V�.}�p�@V��X_��@V�\�9�7@VO�^�C@V%����{@U�_4<@U��a�c@UTG���]@U�Z��@T>{�1lD@S���H�@S��_��@R����@R0��h�@R%+fq��@Rtm(��@R��P;>�@S{�b6C�@T"=���@T�S�7�@U2�N)M@U��߽��@Uq'�(��@T	��G@R�P>@RW��)4@Q�7����@U�gI$�e@V�lz��@V���9l�@UW����@T��H��@S����g�@Q�W�\��@S� �@R��34�@NÅ�_��@E.����@I����J�@J�I��@L�[���@Ok?.u��@M�H�y�5@Kv���@KP;����@J��@J��k8m@L �m6� @L�6=�k@K	�ܶ��@J^eΖ,@O9���&�@PI��K
�@O���{g�@P1��r��@O�w���@Ox*�G�@OT}�Ie�@P��"p�[@R<�����@R�N-&�@P�p5n@�@Q�8���@R��z'+'@R(��ױN@P�&����@Phi/�@P���c8P@Q͈J��@R��['�3@T1PG?D@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @P���A@R<83��@V��w�8@V���"�@V:5{&d@XX��>@X��*y�@X�!į`y@X�:�ޣ@XN֤) @W٠5
48@WL�����@V�::��0@V��2泩@V�C��@Vm� ͷm@V.*�G��@Uơ����@U����<@U+��0O@T����D@T
U/.	@S{����@SL�
0�@R��Q���@R^���@R�˥P��@R�)��^�@S��O��@T!(?�[�@T�b�E}�@UYք}j�@U񘾯��@VAI��^M@V$��@��@T��&�qM@SP_�@R�~t�Yg@Tl�0M��@VY�5K��@W	��wM@V��@Ujg�Σ@T@I���@Q{���,�@QP��Ĩ+@Q����_@Q����{c@Qn�w �)@H"�/qX@H� �x�@K��4]�]@N9Ya^m@M��n�|@N���n�@M>�W�@L����k<@K�"��K<@LU9[=M�@J��Z��@I�ABG|�@J�so��\@H��j�@M��xS�@O����2@O�Qa^�@Pr��@P���
�@Pp)��@P]PWK@P��*{@Q�B��~@R,�� ��@QW� ��A@Q�!�(�%@R͛.�i�@Q�J	�:�@Q�A�q�@O�m�:�@P���ˏ�@Q��"џ@R�떑�C@T(Q��h]@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @R��874@S,���/@Wf�7w@V��`� @VF=�`��@X;)�@X��a�/�@X���K@X���G�g@XPV��T�@W�H���@WDp|��@VjO�@V��x�Q@V��mF @Vj�Z+�@V�&�/�@U����PH@Ut	��A[@UJS�\@T��#��@S�Kb9!@Sh�e��@Sz~��W@R��t�@Rv��'vX@R�-��v�@S�؊�~}@T ����@T�F�%T@Us���@V7$|mk@V�I^C�@V�'5��@V~�Ub-@U^@wM@S�����4@S��V�{�@U��@��@V�^�xs@W.�\�F�@W�^W�@V��έd@T��~t��@T"$Q�\@UGJ�@Q�V�;9�@P:�>�
"@M�g*p��@H�֞4M@J!���@L[i���{@M�����@NJ�ϲ��@N���Ɩ�@N��Kȃ/@Nk����@M>�n��@M��nɁ�@J����m@I��tv�@G&vY�m@J+��^��@O4%��=@O�����@P_$$*�@P�
�sZ@P�tmN��@P�WU�g@P�\�Ebg@Q���؈@Qo�v��@RK�z�'�@Q��g�4�@Q��J�Q@R��q�d@QC��	�@QE��P�m@P.$~�.s@P��U�p�@Q�z~.@R��;�@T ���z@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @R~��
�8@S�!��=@WQL���@V��ֵ-�@V%���i�@WV��	
�@X��֝z@X��߀�@X�z�}�'@XG�@��@Wڠ�o
�@WE��I@V��	��/@V����S@Vv�3��@VH�l��@U�~�*@U��)\�0@USv��6@T�fnX��@T����^�@S�e���m@Sae�;E�@R�T�md�@R��&`q@Ry�h:@SE��@S��]�@T��͌vf@UL���/}@V#��@V��J�@WU�4+-@WD$���@V7	�փ�@Uqm�ofm@T�����@U/&5e�@V�<�V@V�� o�@W7OE�!�@V�p�e�@V�b�_O�@V�'yC�@V����U�@U��m��?@R��l��@O��x^�@M��߷�@L�g�q@I'��s�@K2D�]%�@J�a���D@O(�,�Uq@P�m�@N��<�M@N��Z��`@N����B�@N�����@M�1��w�@K�(��j�@I�C0�h@M�$}�(@O���@O������@O�2�[@P�l2	�@Q"هYu�@P�Z0:t@Q�V6��@Q�(�-a@Q��Yf�G@RN�ݏC@Q�h��lu@Q�pe�;W@R��Z|@P��a�o@Q���;�@PS4� �@P�,���@Q\�`�LV@R�݀�m@T��v��@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @Qo}P�@Sɽ�+�@WRv�Q�@V��5��@V3k���k@W�>z ^@X�i�!�@X���h@X�7]vʐ@XFa��k@W���]�@WE�*>�p@V�uTM@V���z�@Ve�"���@Vɹ��@U��#O5@U���S�0@U(ͅ��@T����e@TX����U@S��=��@S>D���@R�f���@RY�-�#�@R�aMт @S(<�,�@TI>S�u@T���77�@U�X$@V��^��{@WxE�|�=@W��L`M@Wb1k~K@Vm���@T֏$��@PK#�X"�@U</�fYd@WM0$s�@V��,��@@W*��g'@V�1��˓@V�؏/@W<�K@U��W�H@Sz�8xח@Ql��B2w@OIr�<9 @N5,^�A@@L�﻿��@JHD��~|@MK[��QT@Q5� ��@P���$Io@P*�ȱ&�@M�ڈg�w@OQ�R�&@Oq�����@Obؓ3k@JON�T�5@HL%��O@I,�qTI@O�Gp��@P��\1-@OIV���@O���X�#@Q�'q/@Q/��(T�@Q �܁4@Q�3�8�+@Q����*p@QD��@Q���w��@QC�g-E@Q��*��A@R�v��k@P�>F�@Q~Î�h@Q?@�m@P<=8���@Q0�6�@R�h�6:�@T�5ō�@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @RE�~�@Q���W!�@WJ�w�3�@V�?VX�@V�̼�@WO��8B@Xn��s� @X�A�掬@X���a�@XA��w3�@W�k��u@WKk�B @V�]�6�@V���+D+@VNZ���@V�U:��@U�/E��@Us퍧t�@T��/>�@T�ZI�w�@T	ɋˡ@Sh�@���@R�:f���@RN�1�&@R/�iП@R�A�]@S!)��|@T0��S�.@UZ2�M��@V��1��@WX:$�ٌ@W���s@W��b��@W�}�`�@T�oרTI@P�q�O�@Pe�7��@U�B=@W/�.h�P@V�Nh�	�@W%;�+i@WF�aa��@V��r��@V�m�Ei�@U� �@R�D	���@P��d)��@M���d�,@M^!�;@La�<�*�@L/텎�@O�_M�)@M�̇�@K�6�ƍ@J���	P@N���,�@M���x8s@O׹����@P'M��J@L&x(�@L���i�@K�U�F4�@N����@P�Z:J�$@O6@$ �@P���L�@Q ���]@Q0iܴ�8@P��[i��@Q�����@R9�����@Q�7'�ƿ@P¥[��@Q��A�@Q��%�AI@S4  �@Q�U�u@N6���Z@Pp?o�]@P*�v9�l@Q6�+A@R�y�B��@Tc���@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @P՛�Y�%@S�qjP�@Wd.(�D�@V�7*0m@U�F�߼@VG#	��$@XHe� @X���o�@X��jO�@XA`��s�@Wɳ_a�@WV��o@V��uv[�@V��� +@V$ې\�x@U��Uc�@U��8w�@U'ֳ4_@T��p@��@T7y�z=�@SxO�ֳ$@R��,sWi@R.����@Q��v�I@Q�7�<��@R'��n@S!�$$�@T�f�>?@U�x�0'@W.� ��@Wly��@W�3�@V��'H�y@KW\Q��X@G��Lt��@S
NY!�@Tq�H�e�@UW���C@U�?�@V]v�q<@V��?*`�@WC����,@W ���^@V��q� @U@���@RD���@P�����@Nr����@K'�l @M�L܂�@M��&T�@M��x���@N5\O@O�j���5@P 񋳨�@L���@N[��k�@Mg��I�@O�%C��@P��e@K6��.��@MS8�L{@O��k*S�@P���@P<���~-@Pg}�W3@Q6�Z]��@Q@����@Q6ągi�@Q��ڱ�8@R&���k@Q�m�w�@Q�}�NE@Q[�īw�@RY}��jP@S��0��@R4]���@NE���``@O��jx�)@Oê�$-@P�|x�˫@R��>�@TIS�
�@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @O��}W��@R�^F);t@VMǼ���@U��� @U���Z=�@U�\��n@W�UU&&@X������@XzG�+��@X?=k�H@W�CX��@WCO]�h5@V���xc@V�%Pw@Uw��$��@UD��Cm�@UޘI�@T���纀@TV�:��@SP�8�@R[�_�e@Q�GAP��@Q7\ nle@P�eN��@Pݓ8�}�@Q��e:��@SĆ�J�@T�4W�\@V�9ݒ��@Wk���?@VN�OG�@EU�i��@@�=��	4@M]ݑY[�@P�I0c@P����@S�Mf�@Tܳ�@U�Ɖ��@@Vŗƛ�@U���'S�@ULN���_@VO.(㦘@T�R�=@R�~g@Q^���@PV]���@P����@Mlٝ�@K��E�s�@K�n�c�#@K��L�@L�r>N@Nι��O�@P�&x���@O�׳���@K����q3@I�"n��@N�-��@O��";�@K���@Mcr��w@P�d$��@P�Nv��-@P�
FJDi@P��=�|@Q��phS@Q�0��@Q�p�A3@R�-r��@R�1u�@Q}(� )K@QkNRղ�@Q��o�@R�Սp��@TdՂ5.b@S	 ���@P_q]//@N��9�V�@O��,Wec@P�\�o��@R��dM�@T��D/�@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @RiB�WT"@R�ў�L@T�8�{$�@U��w?@U۹�|L�@U�h�W�C@W��� �N@X��K�t�@X~��j�H@X-����]@W����;@V��;I�-@V-�?���@U�#��	�@UUju� M@UI��ܡ@Tz�]�@S��FO�@SU�E@R
�K�3@P�&��é@P<��Ѽ@Oïw�([@OT��+I@@P6�V�@Q�����Y@S�W�@U�D�S�@W)��&g@W����J8@H��]��@7�#�1@MᲡ�A%@NI+B@M' ��%@P��q@R���_e@T]�P@U��k���@V8����Q@V���e@S��^?�@SR�l��=@R�9��@O\�@.�@O��{~!�@P��N��@L�e��@I�t���0@KQ�׋�@J�W��(@K99;�3�@K�{.X�@L�q�\�w@O�Cq�@P�tͦQ=@O6��I�@J6=J:l�@KF��?�@M�0���@N��Ӵ�/@N?�me7�@P�5n`��@Q3d�Q�+@Q��×]�@R���@R1O2/��@R&x��L_@R4V�X�@R�����@Rp�'~�Q@Q�zF
�@Q)��.�@RsFͥ@St:H���@T�V��z�@Sf���tP@QhB���@M8L�(@N�as.�@P����z�@Ru�r�@Te��@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @R��;m�@STL����@S�B8^�s@T �
�w�@U��H$@U� dG��@V󠲢�@Xz��J5�@X}��{9@X)r^T�U@W��sd�@V���@T�-�%�/@U*�Ncg]@Ue��{@T���Y)p@Ul �'@T�#��P�@Tn� E��@RpɊ��@P�lɹ,]@N0�݃��@L��rV-�@M=?�Fk�@P��V�@SU3�)+@U�/�ח@V�7�$�+@W}��bOE@Up���m�@1�*�@?�\1m@O>�)�@Kn�ρd@Lo��d@P���B�@Rߝ�]@T�Q53@Urcp'\s@V�vg{@V�N���@Vx�3��@U�����@S@B��7�@K7�lHJ�@N���Th@Pdk<l(w@K���{'@If8�>V�@K���-0@J�Z����@J���[�@J㲾�a;@Kj�~��@M.�F��@O��:P(@P��?ۯ@N1�,��@JI|Fs@LH���q@OQi;�s�@O��p�P�@P��x7S@Qۖ���z@R�����@R�X��@R�9�##�@R�`6/�@Rv�u �@R��}�$4@Rↈ�m@R �G� @R
�� �k@R���c�P@S��l��@T��q��@Sz�nV��@P��xm�@N�vN��O@Nݒ���@Pv�.՗$@Ri���@S�ü�ϴ@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @R`/�ӻ@S02�7��@R1��k@Q2���h@UTY���@V7��~�4@V�_��@�@X�Ib�BF@Xq$K��@Xp��@W$��l@U�l���@Rx�<t�@T���C�@T��5=$@S�'T�^�@S��[oJ@Sb���@Q�{ U�@Q����@P�QF(Y�@PP��L�@J�-J��@E.��+�@@ݔ����@<>�N��@;�.-£@C�|����@D�P	��@8���Tpt@-�Ņ^�@HY5�1e�@JŧN��@H5cI"�@K%5V��9@O����(�@Ru�A�D_@T6��b�@Uh����@V_>��@V�x�d�{@W�?���@U�/n}�o@S�!n�7�@LBy#n @P8�x�{�@P��B�7@P�b���@MkBW�{@L\A��I@J�:ҫ5�@I�OS@�i@I���pC)@J��3�@K��د�H@M�z(0�@P�mݕ	-@P��є��@L��U�F�@Kꗕ�'@L<o2�@P.�`�@Pr\�'.@Q�� ��@R�EE�j@R�N�1�o@S9���	@R��a�i@RS2�B�@Q�
��}u@R��[<Ĝ@Q�ě3�@R���$ә@S%��S��@TEE�P~�@T� ��׬@R��]�ct@N _���@N@{wKz8@O.Y�U�C@PZ
�U�@R`�DVV @S���@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @S���c�@R��=Z�@T�f��@R���h@ST��R@V?���>@V&�*^t@X9�4��@X}�06*�@X�Q�a�@VZWS@�7@Sk��][@PF ��;@Q��G�@S��f���@Q�V�H�@R%��
��@RÙ�Rs�@P�Ϡ�@O�u$�F;@K��k��X@EG_�2��@DNZ�m��@>�*hz��@:S#�ա@3��	q@. ��;c�@'�n8�+P@<�%Ҙ<@'��@2K@F�b "��@L	��Z�@E�۫�i@Gd��K�@I�Y�yM@No&_�-@Q�@߂}�@S������@T�����-@U��gA�@U�C@-Ku@VƑ�r@U?���_@S�����[@M����_@P`��:@Pb*�4�@N+bӁNK@M�^|���@LO�@0�@J�?d��@I���i@IsLz�_c@J2K��@K
�7�@Lا��=p@P]����@Q�Z�A@N��<F�@O
�;Ō�@MIX7ߪ�@OI��X0�@P]#�˖@Q[^j5�@S#��|��@S�f�^p@Sq�Zݍ@RZ%�<y@Q�-(S6*@R[����@R�lMIwK@RY��z�@S*C/�K@S"��0@TȜ�qkQ@T�j��X�@QH7�M��@L�L�m@MJ++�8@N��v׎M@P�8a,�@RZ�s?�S@S��n�8|@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @T�:ߠ@Q��@Q��!��@O@�k�0@PL~�@Ucj�E��@Vwu�P��@XG�:��@X{����@X�y�}!@V�$ݎ|�@R����q@Q�J���@QA?Ѳj�@P툚.1s@L�����@Pk��`4h@Pk�6FxS@M�M|��@M-��i�+@KjCo��@H�v���@C�|���@B��V���@@���%�@8S��v�@1��[�@%��j��@'����&�@4�U`H@K
��7�@EV+�%��@C�fF�@El0���%@G���R�@L�ݜ�ƛ@P�&�O�@R�:(q@S�M!��@T�����@T^ĵ@T��	���@Uv��-@Qf(��, @L�G���@PR�`EC�@PA~�W0@O��8��@M���@K�}�L�@I�i-�up@IB��M(@H�&2��@IF�DE(/@JA�ߥ�@L�fs�@O��k)�@QVb�A�@P@�pg@P\T��@N�~k{��@O٭^��@P�M��v�@PH7?Aϟ@S,ٮAH�@Sd��l@S�����@R�݅{��@RfV:��@R�D�%��@R�C���@R�O���(@S%�l&:�@SؙB��@T�o2�@T�����z@PM��L�
@I��ʆ��@M{����5@M�)f�8@O����XC@RU,y�3�@S�逊i@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @U�/���@Q��*Rdm@P��r<@Oe_��Y@U^)�U��@Q�u2@V<e��@W�S��*�@XqG���@X!/�5w@W�R���@U+l��C@T"�m3
@R9yM��@PnH��z@N"撄I�@L��e�M@L�o% 3@Mt����(@NVM��0@O%!���@O)��sl�@JoLV���@H�S��Ou@E����y @F��C@G�j��"�@F 4hMaK@B8�l�Q�@H"}#��@GR�	{�s@B#����@A�J�Qs@C�'ԟ�@Eo�*.�p@I���џ]@N��P5m@R.:d�А@St|v��t@T@u�{��@T��|�@S��PSr�@T��M��@R9�ÇD�@Mm����h@P���@N`���ܵ@Ny�6Y�P@MF�6���@J�-	�@I &��@HC:\�G�@H���@H[`B�W@IJ	,�ch@KD�ӫǤ@N��O_ڝ@Q3��7�=@Q*b%='@P�͝��^@O�2츬�@NW��1MU@MRiK�u@O��N��=@S#E�Net@R���l��@S߰���I@Tt	���o@S�,`$�y@R�5Խ߸@RSKg@R=�N^�s@S!���.@TMX�t�V@T��{�(�@T����i�@P��h@Fig���-@K��*��g@N֗`N5@O�Twj��@RQ�f���@S��B�`�@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @X��1�k@R���\�@R xx��@S���~@VS�\�/@M#��$T@T����@W�K���@X�=�8 @X��8Q@WITDx3@VNk��mG@T��]k@S����U@Q��`��@O����!@N�TP�;m@N ��K�@M�m�&@O�_�.�@O����t�@N�T���}@N��&"4+@K-�S �4@Ie�qd@GZ�3���@H q��+�@I�O(��@I��^~�@H��N���@C�M�߾@=��=k~_@@*6��t�@@�����@C.���@H0��n�@L���.�@P� "c�@S5�D��$@TdXB	)@S��寃]@R�8���@Sxed�t@RP����+@Oѭ���@O���Ar@@N�a_\!�@N���pE@M���@Js����Q@H�Xh�o@Hg'z@G�����@G�[IE��@H���E�@J�N�ݿ%@MZ�w|�@P��W���@Qq���x�@Q=�p�v@P�ѥ�?@O��3_@Nϓʷģ@O����k@R�f�$@Sk�w��@Sm����c@R� ��C@S�����@S�L�	(@S>\��#@R*�5{��@S���T��@Taө6��@T���o��@T}���I�@O}�&�7s@E��a@JF����@Nw�V�l@O:��|W[@RJ��m�m@S�MZ�~�@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @X4�; ��@V^ .�%@U�{���@U[�:�@U]б�}@R�_@Rv��8��@W1 ���@X�,�cK�@XB���@W���A��@V9%?7�@T�ؕ���@Tf�|8$@S*�2��O@Qc�n���@PB9���k@O3�1�h@O)�`���@P=�����@O﹩z�@@N��1#[�@K�n��;e@J�(^�@In]�3@H]�S��@I�<�@I�y��n�@Gx��L5P@DXh1�<�@@�X�eS@< �Ǭ��@:,���K@< ɋ@A(��_Y�@F��s��@K#�G�i@O�c���@RD�NV�@T%E3��E@T68���u@S���I@R��;yJ:@P�Z{)��@P����$@P��iQ�@Pl��IP@N���:�@L��w3!l@J<r�΁�@HXC�l�@G��u��W@G����@G`��Hh@G� ��GL@Ir�8	O@Lc\�)C@P,V�H/�@Q~�-�A@Q6�'r,�@QG�_�@P{rl�x�@P��{��@P� ;�@R�����@R���ӧ�@RD4���5@SW��5�?@T! Æ�@TQ�ry[@T?�w@S�6�P?@T�T��\@T��o)xe@T�V��@T�.���@M��2�c�@F�Sg�~@H�T5?{+@M�/��pI@N�5�\��@RD� �@S�J@�@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @We�j�z�@WPh�y�@V���@T��=���@T�M��@T���g��@Q_��� @VhI%��3@X�
�tQ�@X[�̃�@W�0�aU@V���t#@U��j�@@T��ӎ@S���s��@R�Ӂ1�@Q��]�|@P=�S��t@Oq���g�@Pu��<
�@P��Q�@Mwʯx@L� F��@J�����@I��v�q�@IU�Ѐ�=@Hԟ&W�@G�f``@Db�J=#�@@Y2G1@>��T�@9sm�,�=@6aܑ�@8��26��@=Ԑ��`�@E�0��@J Z�=@M�|��@P���`G@R�=e��@R�x��;@RlZX
*�@P<sX��@Q2��_@P�e��@P��f�i�@PYA�3�@N��==��@L|�/\�@I���7x@G�:�U@F���k�@F��/��@F���p}@G)���ޓ@H�z`D�@KI��^=@O�yX��a@Q\�|�@Q��2��@Qβ��+@Q��c4M�@Q�g�1J�@Q���@R��;�Bw@R�-�0N�@R���Q'm@S��S��@Tyy�z�o@T��0�P@T��1��@T�~3���@UCg�Hn�@U8��t�8@T�%f�S	@R���h_@I����$@G����@D�C�8@MCo௪@N��.e�}@R@��T�@S��j[�-@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @X�\�N1@W����V@V@U���@UQ�I8@TEX��\�@S��uW@RH�4�#"@Vܩ�e�
@X�^��8@Xb�� �@W�4�m3�@W.v%��@VY��^�@U�w�o�!@T���Մ�@Ti��5@S�S�m@R-�v�8@Q���@Pn!E�@M�'���U@Oj���@M�a�G��@LF'��s�@JvM*��(@Jݹp�@H�Ֆ`��@E���r;m@A���R�@<��2��E@9u^uD@4ʗN"�E@3�0�1�q@6iG�xu�@>���GO|@D[���*�@J���h@KF.��@PlZ+���@R9��q�@Q��>y�@MWV�Lm@PV�g~l@Q?=�{@P�ʎ>k�@P�<�@Pq�M%�Q@N�&��g@L}&�*g�@ImǊ@G4����@FS�r@��@F.�tHS@F��jH@F{*C|�%@G�B��@J?�o���@N�
ō�@Q!c�؜�@Q���]_@Ru w�Ѓ@R8��|@Q�^4��@Q~��@R9��t{@R�}h�8@S���=�@TmW�y@U�,��@U^��Vٓ@Ur^/?�S@UC�����@T�L�.�@T6�����@RUp*���@L�z��1]@F�q��g�@G,zD��D@D����3@M�R��@N�+X�@R;צ �@S���@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @X�Ŭ��5@W�R��ܝ@V�։0٬@U�$�l�@T���χ�@T��r��@S�L� �@V9MFDޭ@Xk�:l�O@Xs`�9
�@X��TS@Wa��f�@V�q����@U�A�B��@U��P@U�C3P�@U1�Łw�@T�@R
�@T�L�#�A@TO:K�'@P��\<�@O�Qθ@N��[ @M���*�@K7���B|@H��1*�+@GؾF�@DR@�56�@@��=@9�)&�FL@4wk��_@1���9@+���=j�@2~ܠQ�@8�lw�@C1Pq[�@L�gAo�@N�M���@R:��0e@RD� �U�@Q���B@M���֊p@P�{sm�@Q�A��K�@P� ��@P�wT��@PE��c
@N�F	�@@L�eI�X@I\��>Yp@F�pde!@E�݃�@E�7���@E�-�4�I@FHE�ӵ�@Gq��r@I�p���@M�ԅ%��@Q /K"Ч@Q�S���@R׈�ʑL@R�i�5v�@Q����@Qs)�*�@Rٿ��3@S�*�܋�@T��С�@U5]J� M@U�If�S�@U�:o&4�@UN��ӫ�@S%~Jo��@R���e�@Q`A#AO@O.]+�w@F���|5@Ga�:��p@G-ߍ�@E0�1@N�ˤ�c@Ni����@R=_���G@S�9�A�l@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @X�9��a�@W�t d$@V�1��X�@U�6Hi��@U+�\g�@U:E�A@T�/�AH�@U��Y��@X4RtL_�@XmD/,��@X�ƑK�@W��.��@Vͳ�e4@U��{��@VhD��@V=�v��@U��<�@U����F�@U����@T|�� �@Sf��WL@Ps�)��?@N��~�@M(��j�@K
F�Ԡ@H�{��h�@F ֳe�@BvP9��=@<�9Vj0@70o:0��@0���!�@-���k1@.iՔ��X@2�9h�JK@5�Ȟ�@CN��M3k@M���:t�@PQ)�e�@R9�զ�@R�+��@Q��ld�@Ngdgշ�@Qa�%~k�@QȈ^�q�@Qy�)Z�@Pr҄ZY@P(���h@N���@Lj�4�'�@I�	oG�c@FǱ���[@E��a��@E����@E;�y�j@E�-.cY�@F�����@I2��!�;@Mx�|��s@P�#nxh�@R2�J��@S%D����@S�8��e@R��-��@@R�镮�@S�i�ӫ�@T�9�+�@U/5|z�@U�w+�!@@V���@@Uھ@���@S��e@O�I��l@O��@���@P��r��@K�����@F�<
h�W@Hg��g�@GQP���@E=v8�&6@MG�|+@N~\�;@R;>��k�@S�=nz\�@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @W�C�q�@X�����@V� ��K�@V
�=�@UUV��w@Tq�W�ÿ@T��Z��@Tǩ7�m�@W�ng.H�@X^�P�@X/�Wٯ�@W��JB2S@W	�C���@VE�u�U�@V�ۊ8߁@V��ts @Ub��R�@U�Ϧ�t@U��w&^%@U��[�=@S�X�J�@R��ϏQ�@Q�d�;�@L�l��g@L���P@L����x�@Ft�S��@Au��V��@:�y�SB�@3���|@0��N��@-d���X@*1S���l@1�T�@9.���O@C�W��@K��� / @L�9���@N���P�@Ji��@n�@J9�8]ڍ@P��}�7�@Q�T�`@Q����.�@QGD�Yy@PbX��o@P1�݉�@N���aQK@L��U�@I��.(�=@F�Nb�*�@E���լ@D���cp�@D|:B�	�@D��_�݌@F����E@H�:T��x@L��w��x@Pb���@S�eoL��@S��LշY@T$�CtL@T��jh@S���@T���0}@UX�Ӄ�[@U����[�@V*����@V5��kk�@S����s�@OYN)���@L�X@AEU@K}FC�@Jc홗��@HW�]L�@G��Q�vT@H��l�j�@G|�zÀ@E{����@M߾:[�@N�ΰ@R?Ҋ���@S�c&���@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @W��
��@W֠�N�+@V���Q��@V"���@U��8�q@T��B�F�@U%7���@T_��o�@W)�����@Xl��vP@X4��M@W�����@W+�dkh@V����@V��=<l@V��(N�@T�܆���@T�h�>��@U2�?�i@Tː���@S�o�]r@S3? <C@R��R�}@Qz���9)@Oʹ}ם@O����3@I��wU�%@A۹@:O����?@5U�N�aG@3B~��X�@-�A�N� @+m�v@/P��Vq�@5���2��@AQ=;:�?@L%����@N���{�T@HQ����U@D�SN\�@L^����@P���N{@R$'h4P)@Q���!�@QBA^�@Po���28@PKy�\��@O8����@L�Iz�@Iؔq|B�@G�� X@E�B���@D�3M���@D�H�Wg@D(�d�@E�gʜ�@Hg����@L8#^��@P;�Ⱦ�@R׶����@T��ޑy@T�G��@T�ڣ��@T��r�	@U+�K0�@U���� @V �Z�l@VXIl��i@U6R񍱼@Mb�;	9@J�H��@Jv��@I����W@G�Ր�5@H�S�a�@H�0gG@I�����@G���Ŧ�@E��y�g@L������@N����0 @RG_	܄@S��-@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @WH��y@i@W�Y.ZЙ@V��j,�8@V'�EԣE@U�.f��s@V_l�c�"@T�:Q��@T'����@W
�ydzU@X~���@X9>���9@W�2n7_�@W2^�QSC@V�8Ծ�@W�}l%@V�>\�)@T�AT+��@TOT��W�@T����S@T�u�81@S�-�Ͻ@S:�����@R���`f�@R-�F�@QJ%PnE@N�	�@I��{�[�@A��lR��@=��� u@6�R����@4v^gH��@3�h���@/p����W@,�~���@3j�h�&�@A�� �31@Ns���@Q����a�@G�>M��@Fw
��N�@M���WCO@Q��hL@R\��"�@R;w�D�)@Q���GO�@Pӽ7qk@Pw���Q�@O��5�@MT���K�@J�]��@G"�'�@E����8@DF�Ѡ;G@Cew�p81@C�A��H�@E8s!<�@G�a����@KYѳz�S@N�h`���@Q�I��!@Te>\!�@U8��w�@U)�0ʧ
@UNp�˽@U�q*�֠@V
�ߗ�@VW�&�,@@Vk���T@T�W�I@K�f�O�@K i->�p@KxHu��}@I��9ƶ�@H��3H�@Iߞ��d%@J"]�"��@J��A/@G��L���@Fz@MA>�W]@O$ZW��@RNo)�o�@S���(@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @W��kR8@W�ȇ��@W*�z��F@VO���@U�� ^�@VVI�˸@U"^��D@TOћG�@V�e6@X�zdW�4@XOO$���@W�v6!t@Wu��o� @V�⬟�@W"�9 u%@V/š��$@T��{c�^@Tm�K��1@Tx���m�@T���`M�@S����9�@S6�0S��@Rl�^E��@Qz�={��@PXV�@Nc Ρ�;@H=��h�|@F�����@C�HXY@@٪f.��@8�EC��@4��9�~@24d3e�@3�Tt��G@5���\e�@=�=�� @G�K�\�(@J�MCUE@F&�L`%@H4���U�@N����X@R���:@R�Q
�M�@R���=@R4�d @QQô��@P֎��@P
�h/c@Ng�ҧe@J�mZ�C@G�n�"�@E�B�(:_@D/���\@C�GE�@C�HK2�@EB����@G�S�D@J�%
4]�@Ne'$jk@Q�L�:3@T'��O�@U6U��@UuE�=@U�}�?;@V!}&��+@V6�m&@@V��M���@V�Ϻ�+�@S-��'=@L�^G��@Kk��K�@K���B��@I�8�/��@H��˔x@J�9��o�@Kv� ��@Jm��ҕ@Go6$�Ӑ@FQOV���@J5� Z�@O�V�r��@RWی��U@T��q@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @X*Oa	l6@W�Vz�>�@W '#\��@Vt�V��@U�G|�Y@VnWE��@U)�<��z@TK'�=�f@VN,�6Qp@Xo�F�7@Xa?���@X�k@W��=h��@W
t��5@W:�>��@VB�@]-C@Uں_�O@T�f:$@T�=;�b#@T���|�/@S�D�/�@SJ`-$�@Rf��,��@Qm���@P�y���@M�ܨ=�W@HF��7��@G�&�(�+@KP+0�@M���~%@J��ˋ��@F2f�zS@E�b��Fp@=�^^��Q@<d<�{�@?�$�D�@DG	�GE�@B�^F�f@Gl�DN"�@I���S@OU�h��@R}��9��@S��X5k{@R���@RV����@Q�?�T�@QNZ�=	@P�g��`�@N��~�{@K�kg�,@HG&�2@E�,���@D�آa$@CY�l��@C�e�i=@EW��"�@Grk����@I�-�Q,�@Ml�X�BU@Qn{Ql��@S��*7�@T�v3�u�@U�QN7��@V	q^Y��@VGJQ�/E@Vf�9DQl@V��t�'@V�㾂d�@T��|�m@Q�mK�{@L<N�i7�@G�R4�@H*�H՜�@I]FIu�@K���O³@LS�]2�@I�e�cm@F�?4�%@FEВ�h�@Iۼ?��@O���d�@RfUݧ�@T�a��@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @W�=����@X䔠�8@WI�c�#'@V�녋pv@U��|8��@V]�$X��@UT�ߍ��@TQA�嘶@U���vs@X]s�39@Xf�;^J�@X& ���@W�݉�J�@V�47u(@W>+	�U@V_`�S��@U,H��g@T����@U@Ɏ��@T�K�W@T
�fl�@SZN8��[@R�z?�
@Q��8�H�@O�봀�x@MR�ox�@JX����@G��qtW@J��Y��@O@z �@Q�cd!8@Q��}�f@R�A��i�@OGb@�}�@H��h@EaYC��@J����3@F5�) @H�H�)k@J�: !f�@PX����@Sg��@S����f@SY-Щ@Rַ�r�7@R"�Y��M@Q�X@��@Q=R�YS�@O���&/5@L�Oc�@I�`a�@F]����@D�0�U�@C��}S6L@C�BJ���@E�<�ͬ@G���rvM@JX<F;%@Mc���@Q$�&)@S1�ͨU@T�HZ�r)@U�g��9@V8C���@V\>7�@V��wfe�@Vٯ?'W�@V��|ù<@V��X7@TĭS��@@Q��s��@IR1H(m5@Fݍ3�c@ISp� m @L��%��\@LY^�3(@Hò�O�-@E��P��@E@X@c�M@I�/yf�@P
�P��@Rt���W�@T��D��@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @X�o�B�+@W���y}�@WLj�U�@V^h$F@U���k�@Vw�a)l@U@m=���@TS~R��@U�>����@X$�K{�@Xm4��!@W��63@W�`�1]l@WND�YFe@WR����e@Vld㵗`@UO�B�aZ@U6�+4�@UHy��@T�.NA@@T��J��@SBn��@R�h���@Q��%)^�@O�?�*�@M2;� z@J�֟!��@Io�&��@HzON�ɘ@F���x�@H�?0�xk@KEQ���@P�?;I�@RA�q�ټ@L�s��p@G-6z�8�@F�Y��\@K��Tz�@H��/hm@K"�Fھ�@Q!ߨ�@Sǉ����@T勡�@S�&�O})@SK��<��@R�����@ROP��k]@Q���6;@P]�*��*@M*�Q;Re@Iu�s��@F�}@�X�@E��T��@D��L�=@Dd�
ά@E�ԉ���@Gx݃��@I�bI�a�@M�K�A(=@Q4��eX@R�㑦P�@T����@U����z�@V!�J?"|@Vm����@V� ����@W����}@V�m��D@V�-����@U���✀@T���9��@O���-D@F�f��ؘ@IY�B��@L��0tz�@L@"�s�@G�a�A�@D�S�_+�@C��##@G�f����@P�L
CE@R��6O@T�3��C@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @X~Z7i��@W��WI	@W4�:��;@V"�>_ܙ@U�>A6�&@VpH�c,2@UH���T@TfJ#�p~@U��K#V@W��e�@Xd0�T@VM�ɂ@A@W��HE!@W�D��|c@WO�&ܸ�@V|u]��@U�Y��@U�O.q@�@U@�kL�@T����|@S�߈��@SMDs|E<@R�2�X��@Q��i��@O�e.;@MK���@J�-���e@H���Y��@G����@F��� �@GF72�@G��J]�@I$��\,@O�HS�[ @Rc���#@O�"��O@I����՝@Iy?�$@GYsl�X@J�*=蠋@Qo�eF@S���g��@Tm^O���@T;4�s��@S�� Q�+@S'��`��@R�ꯀ��@R5˒�&D@P�VY��@N�Ht�@J}���)@G�¼�@ED�Y�D�@D��V�� @Dހt
��@E�N���@GR���`@I�:�/�;@M�N��@Q��~�W@S"fF�@T�3��O@U��X�^=@V8[����@VeKM"%@V�q ,�%@V�����@V��WM�t@V��37%_@VB���@Uu4@ �@Qr�]ml�@F��K&z=@G��2��k@J|��y9�@Lthu�$@G4�yJfH@C��S%@CM>)A@J����E�@Pۍ9@R�m�;v@T�@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @X"�=z(d@WmjA���@V�8��2@V"P�q�E@UhK����@V�R��(@U-�P�v@UR=��@�@UhuOL�@W��\�]@Xm���@Wf��fV�@Wʏ�6X@W��I�yM@W:P�ޡ�@V����@U�x��M�@U�+@UOGѭW%@T��rU@S�Dl��@Sbb�E@R�=�9��@Q���E	�@P���@M4Yo���@J�kսoA@I/sP���@H�=���@GuN/#@G����Z�@Gm%��@H���bߜ@I�QT�YI@K�w��(@L�^:�u @J�@;�2�@G����	@F(1�,�u@J��1;��@Q��y�@Tg��@T�s�{�@T}��c@T8��y@S�8YH�Q@Sn��iG@R�vˈ��@Qn��ƶ@O*�1���@K^�ݳ��@G��vs�@E��a�\L@E!˞~��@E?,$G�G@F4Q�d��@G� ���@J���ʜ�@Nl!�0U@Q.�d��@SQG�ڳ@T��D�?@U�2�\@VJ$U��c@V0�Z�i@V�dƯ��@VӾ# o�@V�眲)�@V���O{�@VRA�jPE@U�5�V��@S�ި^�@F�И�P�@E��$ %@F�F���@J�e[��@FlO#1@B�hY�@B��+��@Lxr��̃@P-R�q�@R�V��ɩ@T��!I@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @W��V`�@Wj����a@Vۨ�֫@V=�Ֆ@U^��Ko�@V�l����@UOلCj�@TISQX7�@UNӷ�@Wʬ��>@Xo�o_�@X�TV�%@W�Up#�d@W���@@W/�w���@V_\��@U�$d�d@U�-÷��@U�1&>@T�: ��@S��Ae��@Sh���{@R�^#�*Q@Qj�����@O�Q�Vm@MF��4@J�!��b�@I'L�vy8@HTgCж�@H_�� @G�@�U_@Gcj�4ڨ@HO�D@H�@I(�O3�}@I�%�v@J+0��@H��`��@Fy#����@E(E���v@Ji���"%@QM���p�@TbY<5V�@T݈g#@T{Mr�+@T2��:�@T=^}@S����@Sl6���@R��&��@P=S��߭@Ly}����@Il��*�@G
��J��@E�Rm{@E�u�i/�@G%��zX�@H���@J����@N��lf�@QC�|��@S����i@Tp����@U�#�x��@VQ����@V�[�q-�@V}pS�B�@V���"э@V�� �Ի@V��N׷C@Va�8.@@V7��?�t@Ux��X g@N�p0n�@@E��9>Y�@D�db�̥@G��iϛ+@E�
�մ8@B*��1�F@Bʝ��j@K�$��\�@Ph�{��@R��&I �@T$�H�U�@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @X[є�@WB:OPY@V����@U�{Q���@U%2VS.�@Tƶ{k�q@U�?���@U��7��w@U9�r4J�@Wd�$ɏ0@X]�W7�@X.R�x0@W��օ�[@W�����@W$�{9M�@V}�EW��@V*��*�,@V��B�x@U��E��@T��+�*G@S����@SbAC��b@R�#�W�y@Q7��N �@O������@L���l�@J�`9~�@I9����@I(� ���@Hdi���@HA^qI @G�s�Na@HLEb�~@H�����E@I�<����@IN��MD�@G{P��@E��FY�@D�ȼn�@J�~ޑ^�@Q��Y�*@Tw�>�t�@T�l F]�@T��M2jg@T=&-�6�@TmY�G�@TZ�2��@S�)V��@R�� ��]@P�yP��@M�j��N�@J�/X�@Hf�"��@F�����c@F�|<"�@G�x��q@I,�,n�o@J����X@N�nl��@Q��np	@RҎ9�c�@TTuD+N�@Uuށ�W@V?b
x��@V�,�k� @V~G�Ȕ(@V��&(
E@V���S��@Vy�E}�@V;CP�lm@V:*�\Կ@V�I��@Qt��h�@G�~sqp@EHz�^+@E�g�楰@D����@A�q9F}�@Ad�(���@K�]�xcx@P�3Mw@R�$s�E�@T.�)�@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @V�jN�T@V��@��@V^�(�@U�3���@T�qYn�@Vp`Ͳ�j@U�$!p?O@U�Gy	A#@U:�h�X@V��'2�@X;c�_d�@X>gY��c@XLw��@@Wʇ���7@W;{���X@V��ݑ�@VK%Ɉ�@V#�/}ݸ@U��*hS�@T�b�CiG@T1�썥@Si[F�	@RÓ�IgC@QSH;N"�@O���`M�@ME�k}2@J��2&@�@I�����@I�����@Huݚ�*�@HD%cW�@H%�����@H�0�.o@HȻ �s�@I+\*��'@Hi���@F�	5x @D�>}ʻL@D�����@K��}�@Q��=j�@T��Mc��@UTG��@TĪ��fe@Ts�I�@T�7n�@T��fh+�@TD�����@S��<�@QksI��-@O/`�0�@L�T�]%@IW���L�@H*�G��@G�%�>(@I�EX�@J"Z�7�g@L.Hw�@O���/�@QJw`F�@R�Q���#@T41_�Y�@UO@`�y@V&S<@V����@V���Jq@V�Q�XX�@V����q@Vru�Im@Vv�=�@U����rC@V����@SB �x@KƆ���0@J�c�Y@GgV����@B��?�>�@AD�n^��@B?/�k(�@L5ζ5wX@P���!@R�ΰ\|@T1���F@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @S*��^�@V��?=��@V2�����@UyB�ek�@T��bm�@Vx����@U�e��D@T�I-yg�@U|��6ڐ@VrQ�?@X2�.f�@XR�(7n�@X(0 �F!@W�y4Sy@WAP�ó�@V��wjA @V��=s@VY7� 0@U���\�3@T���ulp@S�+�f�g@SkhCbQ@R��/�.	@Q6)���u@O����N@Mo����@Kh�a��@J7��=@I��R�W@H�����_@H��"��@H��uFF�@I<kßA�@I6�^��@Izm2�ʇ@G̨����@FK�Ⱥ�m@DG�Ә�@D�u3��@L"�u#
h@Q�=;�p@T�9\��@U�ȡ���@U�u�o�@T���K��@T�M�,�@T0���(@Ta)`ꏁ@S{��&t�@Q�O���@O����@M$�~���@J�:�Y@@Iǀ�8�@I %խ�@JK^c�S@K����@M�UW�W@P0'����@Q�M���@S���@TS4]ҹ�@U>�7 �i@U�v�{�@VYH��2�@V���� @V_m�)[@VlM�
��@Va�o���@U���"U@U3b�y@U��k��3@Tփ$!�@M����@N�S
��@I�kZ'�@C䑊���@AC��Z@D��^>��@M�:h���@Q��,�1@S���@T8��]�@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @T�NU�4�@WUֆV�@V6-u�@U1v�e�@U}��|`@T�6���@Ui#9�(-@T�@ߤp@V��] ��@Wiu9i�@Xxx���@XY���{@X*���^�@W�c�4t@W@f�.�P@V�I-8�@V�%��"�@V:�����@U�n����@T��~?@S��E�x�@S~w��J@R�&<�@Q����G@OB���@M0��5��@K�eQB<@J�����w@J+|jߡ�@I76��@Ij���0�@I�M�(#@JqX��@I���r��@I~�O�K�@Gl7��97@E���y@D����@D�$�:��@L��8r��@RcD�$p�@U)��*�@U�Z����@U����@U2\�!Ȇ@TE�0��@T��ࢼ@T�"����@S�3�nt�@R)Ke'%@Poj�-�@M�@�2�@K�W$�J@J�	���4@J��Ȑb�@KIlg��@L����x�@N���6W�@P�����I@Q��BGl>@S(%��f1@Teh����@U-�#��g@U��n�;@V)gG�@V *Gz:�@V@��<�@Va�BHP@V=Cji��@U��V@�G@S��
d��@TC�`��@V��@P`�k�@O�3�@K7�&5@JD$��k�@C�)��,@H"��s�p@M�^����@P�(UM;@S�K�|+@TAXG/,@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @T���;�>@V+���@U��}���@U QD\��@U
-�+A�@V���>�@U��D��@T��P|@V�1%�0@X.m��Cw@X�.�G�	@XV!ł��@X+]I�s�@W�����@WX��*5@W3��\�@V�J,^?�@VXnV�9@U����@T�2 @T\~}aC@S���@p�@R�>�c�@Q:�uC��@O�=�)@M9��"��@K�h���w@Kp�b�@Ju�L��@I�z;f�@J7���@J�K��ʡ@J�A�Q�@J%d+W @I|R*�jS@G|zҭ:@E���0@C­��b�@E:$��@M��B\��@R�`KW>�@U5��#�@V���@U����#�@U���3W!@U?e��e@T���G@T}�lI~?@S�p7���@Q��T�=@P�{��ei@Np�o5�M@LV�����@Kj�"�u@K|芇�@L(h<�,�@M�l%�@O<�tI@P�L�)F�@Q�o�W@R�����@T�*b;o@T�L
LM�@U��-%Xu@U�f�]�@V"�HR�5@V1Ӯ-"�@V0����l@V�fi@UY�G�@S�Ui��5@T�P��NV@V}k�@S3�h�=@Pg0�%��@N!Z�'��@K�[�ОC@HM% ��0@J��q�G@O�;��@PЕ���@S.��@TEh��A@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @T���9�@V[�dE�@U��n`��@T��Ne��@T�?�zo�@V����@U�m�&�s@U�*qg��@V�\գ�@X��{}-@X���N�@X`73�^$@X5��B�@W�Wc��@WtMH�WX@W0�.��@V����S�@V ��v�@U�߇���@T�:�ಔ@T'�Y�@S�#tF�@R�Ă��@QU��,@O��U��@MS�ʋ�@L8�y}�@Kv �k@J�N	&.=@J[��h�@K�t�v�@K�c����@K,�:x@J��=��@I������@G�+�Ф�@D��E(��@CN�˿�3@Ey��L�@N�����@S?��f�@Uq��&�@VBD-��@V?����@U�N�ރ@Un��2wU@U�U0�$@T��3��@R�y_Ŗ�@Q]�$�
U@P��i��a@M4g�@K=���@L}�2;@K��Q��@L4�ߴ@NK��,@O�%�m�m@P�zA�[u@Q�ɖ=�}@R�
����@S�B���@T�9��@U)��}6�@U��|x]�@U�P�1�@V�!��+@V#�D��@V��@U?y�n��@S�x�w�@T�$x%��@V�I��[/@Uv�t��x@S����@PQIY��@L(����@J[gJ��=@M�Dx�	�@L��S�0�@P�����@SGhD�s�@TJ�&�E+@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @I�̸��@V�����@V
T��.@U&:�>�@T���!@Vf@�{�@Uv�;$C�@TN�R�@V,�v��@X#$�]I@X�7�:c@XX��r�|@X 2��@W�J�8-@W}b���@W'�^���@V���Ҙ@V �6��?@U��hQ�@T�����2@T(����S@S����9�@R���!\@Qp����@O��or<@Mr�0Go@L�.BN�5@K�J�VC@Jˡ��p�@J���ҙ-@K���Q>�@L)�{��}@KѴ���@Ks���H3@J<�A51@Gi� �S�@D�!rf��@C0%�N�I@E��t�3G@O��_��@SQ;49)@U�����q@V��(o�@V�R�|@V?�uH��@U�I[O�C@T�1ei@S�%#��z@R��@���@P��Bu�@O�]C�@�@K1̘�4�@Dܙ���@M{vglnl@H �;u�@Mb�3u�)@N6,-\x�@O��q?~�@P�!�-5@Q��GZ�@R��i��@SxEs10;@Tc"h��E@T���2��@UYl�� @U����g�@Uз���@U��,3�@U��L��@UeN4ٓ@S^	A�J�@T�c�M�@V�a�&@V�mf���@U$� O�@Rn��ф@M�F�u�@L�w+#y@L�`��QM@K��N~d@Q6A�&�%@SV�t\��@TK��S�@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @K@�9_(@Q8?q�4p@U�G�qf@U	�o@T�,��;h@V_u�[X@Uj�s��V@V���̝@Uҽ�掤@X
�SP@X��L��@XK�4Fh@X ט'�@W��^���@Wr���k�@V��f���@VM���`�@VBV���q@U�~��%�@T���M{C@TN�ez,�@T<C�c@R��I;�@Q-���n@O`D�͈@MJ�s(@L�H)K��@K�{��7@K�����@L+}I��@Mev���@Mm�I \@L߀�x�@LT����@J��c��-@G��H��U@D��%���@Cl��@F@��_��@Pc�>�/@S�����=@U�P8�@V��=b�@V�Sx"y9@Uh�Ϋ�K@T��lo`@O�$ZDw@H�ؔ�P`@> 
,�@1���-@E����E�@J���p?@G����0@N��H�k�@L�>@	S@Nf�);WK@Nr��� k@O�;%�@P�R)sT�@Qm�[�'�@RiG7\�@S*�1G�@T�aKL�@T�Ɖ�P�@T�H���@U<�F�xw@Ux<�C��@Uɔc���@U������@U��(�s@Sƒ�N8@Tdm�Cq@V܊�{�I@V��Κ�?@VɞvR@S��<�a@Qf��@P���x@PI=`���@K�jD��0@Q��{�w@SdbN�Xq@TO�~��@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @G��&�!@F�9���@V(�C@U$0�ݔ@T�f.�@V��M@UH��`@T�/���@U�E܂�@W־I��@X��S�qM@XB�����@W���� @W���	D@WeZu�!C@V���c�@VF�ʯ4�@V�;���@U��#��@U����@T�L�ݭ@S����@R�3�P.�@P���g%@O�����@NT����U@M�����@L�SS��@Lp�~�I-@L��k�W8@N�t�@N;d�-��@N).Muӥ@M��?�7@L�T�P�@I^�Eh,�@D[g�1G@B�ʊ�u@Gڹ�@P����Q@TU��ε�@Vw##�kx@W��+#@V�Z܉|@Vz�U�@To�ai��@K�(��+E@9EY�g�@-|�7�)@$����@"f��N�@91�}@H���8jG@N^��1%@MDEQ�%�@M�x��@M���A�@N�os��@P9� ��@P߭E}�,@Q�ǔ�a�@R��V��@SpJZ�Ќ@T�Z;�@T>ut]s@T�%��Xd@UV�7�@U�{#|7o@U�%�@U�A�PF�@T̳��H%@U7{F(�@W��M@WK9���@V���d�@U ���@S���7@Q��j�e@Q~���L�@M��v}��@Q���>=�@So]��@TP�� �@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @BD�Y�[�@Bo���@RS3����@T�Ng�g@T��[��@V���d��@U[빻�J@T�$ Eh@Ul;N;Q@W��}��@X���A��@X9n��c@W�hRs�@W�*���}@W=��P3@V^�&��@V����&@V���1�@U���Y�@T�����@T�\]4�@S�*|��@R�&a��@Q"�gh�@P-�`d�+@N�����@M�w��B�@M���./s@M~M�FES@N-\S�@OL�OFl@O�7p�@O�v�%Z�@O3}��.�@MO��i�#@Jj��B�@D�p:��q@A��<@F�8�wt5@QY�s��a@T�o��u@V��~��g@W���.B{@V�|�S��@Ub�_Ђ�@T~�b@KUr̷�@84W���@-�U�a�@%���kg{@#����@"e?9b�p@C�lau�@K_AZ3x�@KR��:�E@L�E��@L_��6Z�@L�T�M��@Mt����@N����wp@Q��Wd�@R."L�G�@R�3挙�@SRe^��@S�^��S@TH����M@U%W��?@U�1|�}@U�*�$��@U��B+�@UԪFmd@Vh��Ysm@WRS�T�@W~
���@Wo��a@VF�XG�@TQ��+@R�j	b�@S�_6�@PZhćE@R/�r���@S|c<�+�@TQ��C�G@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @Fe|�F@A���ʤ@I��ת��@T�I\)@T�L�ze@T���F@U\5\Reo@T���*@Ulmn�J@WGx@MC�@X�-���@XF�&G�@W����5@W���ť]@W"�o-�@Vnq/��@W��ZZ1@VP����S@U����H�@TŐLa��@T���g�@S�F;{�@R����;�@QP�T@P�����@OI�Nq�@NҜ�4�E@N���x��@N�<��p@OOFOύH@P>f7a��@P�w\��#@P���U�@P��OZZ8@O[��g3@K���r��@Ej�B<�@Bl�:�<@G��]�@Q��,_~	@UOe�;Hi@W�ܠ��@W�NIcm�@Vu�n�m#@U)�F�@SW�y��@L������@75�Y���@*��sS�0@#tq�D@!���Ow�@#l]�J�k@*�2�d�@CCg"��~@D�o���!@IR7l��@F�Ñ�ӥ@F?XAC@G��u�(%@H��3��}@O��tB�9@Q�-h}s@Q�"Ex@R4����g@Sw]��@TEWP���@T�L�w�Q@U1�'�O@U��6���@U�n��@V'�y�@V݁m3��@Wrf�X Y@W��.q�C@WY�TA�@V���c�@UA6�J��@S� Nq@T!� }�@R5
^Z��@R~�Ӷ�!@S��TC�@@T[%,y�@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @K
�D�.@C\�@0@Is�>��@T��4�Sl@T��P�.@V9�u��@U2=�O@T�gfL@U~�7���@W�&���@Xv���b�@XI�����@W�qs��@W��a�@V�@��q@V��4�'h@W��X@V9��<h@Uw�)X@T���0�@T������@Sċ�tk�@R��h���@QK�_��@PAL\�@O�Y�ص@OH3H�I}@O>�6��@P<���@P���4֕@P����y�@QM:zV�@Q�=����@Qd�r^�@P�i�Ț5@L���l;3@F�7�e_@C�䳴�@Hx�|:�@RLPD	'A@U��m{@W�s&8s@W(���@V	j(���@U>ˇJ�@RͯH�wo@L��;�#�@7�.t�ӵ@*�+[�K@"��2c��@!��C��1@ �n0�ۜ@"�L3�+t@-��y#@)�i{\C@BH�CRx�@=���.�@4���Bǯ@;�8_���@C�"�t��@N�/�Q��@P�O,��@Q/�H6��@Q�}��O_@S���ͤ@U|L�;@S��ˎ�@T���-�-@U4���@UL��d�|@Vm��*�@W ����A@W�6��@W�U���@Wty��&�@W�*�RM@U�crd��@T�-?m�_@T������@R���
�@R�.���o@S��%l@T^^� �@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @O+o+�@G��#3/@F��2�@@S�;`�%@T�g&��@T�ۏ;�5@UF�6(�@T�f����@U��z��<@V��?@Xfʛǥ@X@�=��S@W�(���3@W����@W08�;��@V�b�@V��L��@V).+�X�@Uc�+�&@T��aE�@T�����@SӴ�m�@R��݊r@QI�,6�@Pp̬ᬅ@PZ(�-@P\w�4)@P?�-[��@PĠ��Y'@Q=*�O@Q��B���@Rix�=@R��N�H@Rn�{Յ�@Q(w5Χ�@N6�k�8u@HD˷�I�@FP{�8��@K�5p�@S��)w@T�e�	�A@W��Ti@W�� /�@V��6y!�@Ui��� @R�`X�!}@J��*U�,@8F9�h��@,[ �'@$�|{�g@!ѫ��S�@!��Eg�4@!MH����@'�F8��#@3��K��@0���42q@:��]ME@/5�:ӛ@4��J���@>?&'�(@N0Dģ�@O��Z[��@P��&�j@Pݠ�+�@QRJ2�@T��=@S�zW���@T� ��7�@T�'�[@U��b=�P@V\':�q@W[7c�<@W���ir5@W�`o���@W�Ȗ��1@W[%\al�@V��2��h@T��b�/@Tu��=@S�᩿�@R�I>9��@S���k
@Ta�٢(�@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @Q���r@K���9op@H�����x@T=<��@Ug�D�@@Ve�P���@US�O+��@T���@@U����T�@VދÎ;�@XL�l,@XI#��Q�@W�w�׃@W�XiA�@W����@W'���U,@V����ȍ@V"�f�T@Up�Hl@U쬢�d@T�`�=��@S���Q@RU�D�=!@Q0xq,�3@P�TK2}�@P[C��@P�)��bq@P�[�0�@Qo��#��@R �\F��@RV�?0@R�&� @Sm͐	!�@S]�4�TT@R.���@O¸��d�@J	b�am@H�{�X+�@O�V9��u@Soz��u�@T�i2%@W��q��#@W�:&�@W�}��@Uw�%S�@Q��C�\�@Kޓ@:������@.���@%�ꐯ@ eM�<��@ O�5���@/s_&�@#N�~���@+�0r�Q�@,�T�\a@@�����@/������@4��`��X@@��瑭@M��'��@M�o�ҩG@O���R�@P�7*��!@R�Z�ȥ�@R6BF�@UV!ơ@Uw=-�i@T�uN0��@U��ƹ��@VTʔ��@W0c��9@W����T@W睃M�u@W���!@W����;@WF���@@U�.�cm@T:�6}V:@S#Xd
�@S%AX=�Y@S�ӡAD�@Tle�A�u@T�H�ߡy��8     ��8     ��8     ��8     ��8     ��8     ��8     @Q ��L�@L�G�n��@If/U��@TmY�Q&@T憓pP�@T��Gu@Umg`ư�@T�s�yL�@UɊ��p@V�.;-�@X8b��e�@XL�j��@X	���u@W�0�B�-@W������@W4:���@V�Z��@V=��V�@U�8��K�@US��i�@T���@S�)�>�@R�����W@Q[��{L�@P���,N�@P������@P��քR5@Qs�j�@R5�|��@R�|p��@S/`��@S��%�-@T>C#�V@T-D��Re@R��"J@P��g[��@K��Hʻ@K>}��ɕ@QB�0@S��U�;@T;���@WŤ����@Wzr1�R;@V�ќ�H@UjV4t�@Q�$��T@H�%ãhu@:�sj��]@0+ _�3�@&�B+t6�@(���@�v�I�q@����]@ ,��I@'�8C�'�@-P;ڣ�@@N����@3�V�@81ӆ�g(@A�sx�YH@K�G��v$@Klŀp��@P扟"��@O�$�/�@T{
�_��@T�RQɘ�@S�;�6��@S�!�dZ�@TR_���Y@U��4{C@V5�y=[�@V���H�@Wur���@W�̲�@@W��<@a'@W��F.5@WYK���}@V}2����@T6���P�@S?%�g�@SO�H
�@S�43�4@TrT�(�@T�H�ߡy