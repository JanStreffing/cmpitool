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
add_offset                   NCO       _netCDF Operators version 5.0.6 (Homepage = http://nco.sf.net, Code = http://github.com/nco/nco)    history      (Fri Sep 09 14:28:03 2022: cdo timmean clt_MODIS_surface_MAM.nc mam
Fri Sep 02 14:51:40 2022: cdo splitseas Modis_Cloud_Mask_Fraction_ymonmean_cmor.nc Modis_Cloud_Mask_Fraction_
Fri Sep 02 14:37:47 2022: cdo mulc,100 -chname,Mean,clt Modis_Cloud_Mask_Fraction_ymonmean_r.nc Modis_Cloud_Mask_Fraction_ymonmean_cmor.nc
Fri Sep 02 14:24:28 2022: cdo remapbil,r180x91 Modis_Cloud_Mask_Fraction_ymonmean.nc Modis_Cloud_Mask_Fraction_ymonmean_r.nc
Fri Sep 02 14:21:08 2022: cdo ymonmean Modis_Cloud_Mask_Fraction_daily.nc Modis_Cloud_Mask_Fraction_ymonmean.nc   CDO       @Climate Data Operators version 1.9.9 (https://mpimet.mpg.de/cdo)         time                standard_name         time   bounds        	time_bnds      units         days since 2002-7-4 00:00:00   calendar      proleptic_gregorian    axis      T          �4   	time_bnds                            �<   lon                standard_name         	longitude      	long_name         	longitude      units         degrees_east   axis      X        � ��   lat                standard_name         latitude   	long_name         latitude   units         degrees_north      axis      Y        � �\   clt                       units         none   
_FillValue        ��8        missing_value         ��8        cell_methods      
time: mean     title         Cloud_Mask_Fraction: Mean       �� �L        @       @      @      @       @$      @(      @,      @0      @2      @4      @6      @8      @:      @<      @>      @@      @A      @B      @C      @D      @E      @F      @G      @H      @I      @J      @K      @L      @M      @N      @O      @P      @P�     @Q      @Q�     @R      @R�     @S      @S�     @T      @T�     @U      @U�     @V      @V�     @W      @W�     @X      @X�     @Y      @Y�     @Z      @Z�     @[      @[�     @\      @\�     @]      @]�     @^      @^�     @_      @_�     @`      @`@     @`�     @`�     @a      @a@     @a�     @a�     @b      @b@     @b�     @b�     @c      @c@     @c�     @c�     @d      @d@     @d�     @d�     @e      @e@     @e�     @e�     @f      @f@     @f�     @f�     @g      @g@     @g�     @g�     @h      @h@     @h�     @h�     @i      @i@     @i�     @i�     @j      @j@     @j�     @j�     @k      @k@     @k�     @k�     @l      @l@     @l�     @l�     @m      @m@     @m�     @m�     @n      @n@     @n�     @n�     @o      @o@     @o�     @o�     @p      @p      @p@     @p`     @p�     @p�     @p�     @p�     @q      @q      @q@     @q`     @q�     @q�     @q�     @q�     @r      @r      @r@     @r`     @r�     @r�     @r�     @r�     @s      @s      @s@     @s`     @s�     @s�     @s�     @s�     @t      @t      @t@     @t`     @t�     @t�     @t�     @t�     @u      @u      @u@     @u`     @u�     @u�     @u�     @u�     @v      @v      @v@     @v`     �V�     �V      �U�     �U      �T�     �T      �S�     �S      �R�     �R      �Q�     �Q      �P�     �P      �O      �N      �M      �L      �K      �J      �I      �H      �G      �F      �E      �D      �C      �B      �A      �@      �>      �<      �:      �8      �6      �4      �2      �0      �,      �(      �$      �       �      �      �               @       @      @      @       @$      @(      @,      @0      @2      @4      @6      @8      @:      @<      @>      @@      @A      @B      @C      @D      @E      @F      @G      @H      @I      @J      @K      @L      @M      @N      @O      @P      @P�     @Q      @Q�     @R      @R�     @S      @S�     @T      @T�     @U      @U�     @V      @V�     @�H     @n      @�g     @'�Z�|�@"���=�;@"�/�9_�@)�h���v@3�Yl"��@6� ����@.�����@)�u��]@-Q.�f�@C�Ն�@R�����@WwuE@X>��3@Xm�%o�@XN1��t�@X6���zk@X �&�%@W�7a�T@W|�y��c@W��<��|@Wv�v�C@Wl��&��@V����/Q@V�����@U��<@U;�8D�@T�=%oy\@S�$�ڠ�@R�Ll"3@QA"n�G�@P;�ǐ��@O5&��<@O+���a�@O���8�U@PCklu�T@P]�f�e@P^�`�Q�@P+9E�5@O�4��w�@Pb�ͳ�@O��>6g@NmĿ�@N�M2BY�@Pi!uY�@R6���@T�w�Ғ@U�tF�E�@U���l�@Ur�0��@SĪ���@P�1	��@G8n�}��@>9z�@41���r�@.0�-V/�@*j��π@*�NJo$s@-Rh�y�@/�~@�|	@/= �|�@0g'0��@6�Pq�G@B�Ӂ���@H��T�9�@I�Im�ڈ@J�x�^��@N�k���@QUu�2p@Qj��ĳ�@Q�m�@�,@Px���� @SSizz�@Q�		���@P�v9B�Z@Q�2�y�@SH��Ϳ@T�"FM@U��L�@U����X@V�p���@Wk�d6�@W��p�K@W�ե~�@X�`��]@WD�/O@QO3k�b@N�Ёu��@O�З�h@QOX����@R��Ά�?@R����g@'�Z�|�@"@8b���@"u{a�@'E��Z��@2A���@7!8"\�@++�M�e�@)#�O;@*��^P�@<��[(2@R#�x.��@W7�ɼ�@X(���& @Xf9!+@XK�/N�=@X5\s�-�@X��e�L@W��h;l�@W}]��@Wy�t�E@Wz����q@We�v7\@V�?rt@@V�1���@U��=A�@U2&��W@T�H��M�@S���(5@R�a�p��@QnJ����@P�ܺ�@P?����@P",�Y��@P|���&@P����X�@Q�پ�@Q/�NU�]@P�!��@P޻uM	z@Q F���@P�:|�G@P
���b�@P"�싴!@P����X @R�H6ҿ/@TWp�C��@U��	�ɠ@V2Z�^�]@VqJ��/�@T�����4@P�M'%�@G�i\#�@=��Z�F�@3��K�@/	�@+(K��@+�9��@,����
G@.�)�h�}@0��P�@1�E��@5�k�W��@A�F0��@Hؼ�Y@Ix���=@I)q�)�@M�G}[��@P�b��wA@QI��8�@Q�,�XQ�@R/��b�@P�GfLt@O�n��@PƷ����@Q�;�g@R1��4+@T-�?��@T���'��@U�B�p�O@V�,�p�{@W;D��S�@W�NeȾ�@W�'���@X	�^�m@W��B�V�@SN����@OM$+¸@O�P5�,�@Q_=����@R�J<���@R����g@'�Z�|�@!���|2~@!ɑq�-@%s����@/c�B���@0�7WH�@*"�6@*3iJ1x@(����l@8�0���@Q��-Ԑ@WM��L��@X)�f�A@X^��k�@X@���	K@X'���+@X����@Wς`��@WzS�x@Wq�1z��@WL���t0@WV�z�@W��x@V�%�uZq@U�I7B�@UU��]�@T�x�nba@S��<�@R�:�dc@Q��9W/0@P��9��@P���L|@P�H�E7@P��'��@Q@�.��@Q]T�j@QunϹ@QaMJ��3@Q�4hB*�@R�W�pU@Q����3@P���U@QE܃-��@Q���~@Sp�t@T��+! �@U��$���@V�� �Q%@V�A��@T�V�q@O�r��@F����@=�i&�@3�> �p@,/7ԝ�@*�Ǎ�1�@+5b�E9�@-�KXT��@04��W�@/����@1J��u�@4��^��i@=����Z@G�)|�7 @J�����M@J��ҭ@J�$���@M3��¸@P͹�ȷ@Q�N|Ed?@R_���Ta@PD�Ǣ�@O'<��3�@Ph��m�Q@Q=f)���@Q�y
�n@RӰ�O�@T��E�^B@U|Ƥ%H1@V>����K@WY�[��@WӪ,���@W�X7��@XE���@Xm@�@TG�f��@OT>�~��@P8^�G@Qp��s��@R�7��$W@R����g@'�Z�|�@!��n��@ Յ��/@#��A�Z�@+��0up�@*�ϛ��@+���P��@-eC�\.@)h�����@7?⇨��@P�T+��u@W'q�kx�@X8�"U�@X_�Q+�@XH��@X!���#@X	uo 9{@W�@N�@W{t���@W�)?Tp�@WA���@W
G��?@V�Gk!2�@Vq8fݴ�@U���:�@U|��
)�@T�fxd��@S�i�Ԣm@R��fe@Q�qbۄ@P�)\1˕@P�`ĵ��@P����z;@P���o!�@Q	V�@P�M����@P�Y�^�D@P�y/�PO@Q���Ԅ@R~xA7Y@R�����@R$��@'@R<Z+���@R������@S�
o�@Ud�%�s}@VZ/�J*	@V�չ��<@WTyF�E�@T�(���@P�����@F8U$K�@;�D �W�@3�Ln8@*�f0�;<@(�o�B�Y@,H:���@1�$�^�7@0z(�G�O@/���ޛ@1|{'+��@4��x`�$@;��P9�X@H�%2^m�@K���.M@Jx�lg��@J+i;���@Mt��a@Q�t�'@Q:@	��@Q�:�d@Qv��x�@O��a���@O�����@P���q�@R��B��@S"+�:=@S��α��@U'c�$��@U�`�6W�@V�k|^�E@W��0|�@W�����@X*pw��;@Xk�Ui@T�M)�qk@O�η�,�@P�a��B@Q�v�-u@R���f�e@R����g@'�Z�|�@!$E���@ 1�Dw@#C�p0�~@)K����@)��PN�@,aM2��@0O7�ҝz@,5�?t�@7]���[5@O�Ǥ+�@V���*�@X,/
��@XR$7��@XD-�K��@X�D��@W���]�@W�F��?@Wz���I�@W�� ��g@W7�}��@V�P���@V��wH�@VN�:�@Uڵ �
�@U��Q�0@T�0��P�@S�0u�$%@R���@QR��1&D@P��hw��@P��2�@O|��Pγ@O�D���=@O����E@M�H���@M)"B��@O��?(X@P���W��@Q�����@R~�&L\@Rm��f�6@SEAR�@S�ɅbiD@T���D+\@V	5M�ӻ@V�Rw2_�@V�7�uk@WT~:Q�@T��)J@O��� �@B�����@8��Xb��@0���U�@*:E����@'�w_VG@)�l���@/Zʸ��}@1E�1�K@0=�0`C�@1��t�e_@5��<�'@=��o�@I���P�@J��v�7Y@K �+(-H@J9�
�@M��ml�@QJ�z]"@Q�_3��@Q�����@Rџ�mQ@P;�tq
@O�D́�@O�-�ү@Q�.���@R��Y��@R�J^�.�@T�h��+@U�;6/�@Vˇ㋰�@W�E�N}@W�����@X41�|k@Wׂ|(�Y@T�EI�y_@O�+���@P�#?@Q��O@R��;�Ma@R����g@'�Z�|�@ �)���S@�~]���@!��<ie@'��n�@0��q諩@0�h�fL�@3G|T���@0 ac�@6���?��@ON]�0@V�+�@X�c��}@XJ�"e*{@X;{T˔�@XeH���@W�9�!E�@W�&���}@Wc�c��@Wm�/U�@W;d���e@W����M@W.�L�-@V�,�v%@U�\~hY@U���L@T�X�Se@S�:1e@R-r_5+@P��\�+@P.��7�@N)�O�d�@LYy.K@K���0�X@J�i���@I!4&[v�@K���D@O�%�@@P o=Z�@PG�.%fc@QM�^�U�@RQ��Q@S��-=�@T�?���0@U��Z8�@Vv���S@V��>��c@V�����@T!�׽�@S[��`�@J�gp�]@A?�g��9@5�����@+��9{��@%�0t��@%mA��A�@(�nЪ��@-X����@/�\�(m@0��6�w@2��s��@6���Y\@@�T�a�@H��.�?@I�g���9@J���@J
��ؕ�@M��[@P�h:��@Q�����(@Q���@R��J�@Q�
DZ�@Py��-�@M�<�S�@Q2�e�*�@R�YfS�@R�
Gϑ@S�9�-��@UF/�;\�@V�六� @Wo�,̌Y@W��@%j<@X//W���@W=�Еx@Ti6�U��@P+��5V@P�V)8s@Qt���@R��E$yR@R����g@'�Z�|�@�X��d�@�BH)��@�	�?4F@%վ���F@6WF��q@3 {�&�@7�ђ�@2%���z�@8���ڟ@PQ����3@U�l�3o3@W�/���@XH4$�%@X4~g��+@XK��@W�w� ��@W�6&�A�@W[2��T@W�=�j�@W	�l�@W�kz��@W�˖�_@V�o��"�@VM��^@U����v�@T�%�n;�@S
Ed/m@Q��ś��@O���V�@M$xd�W�@J#$j�	�@D��q��@D����Q@G��<�@J��&K�@Bu��s�h@A��)@H��I#�<@M�~�o�@P)��1�@Q�DS(@S��F9�@V7�;��@V�}�։h@V�+�d@V�Α�#+@V �h�l@R����jE@P��'�s@I�dˇvC@?�4��I�@5%��[@'ܴ�x/@#N��=g�@#\=�W��@'ntjG|k@-X\��&@/U/��@@0`�$�@2�d7$K�@:���5�@D��g��@G��� ;@IR���-@I^C҅	m@K��(l�@M�3���@P�T�.�@Qم߶��@R
��my�@Q�t���@P�-��m=@N��ݶq�@O�����@QbBA�1@R�,1m@S�!� E@S"�A�e@S��̚�@VO^ y)W@Wk���@W�Ua�w@X ��3:k@UL���@S.��E��@Po^�m�@P<^�A�@Qq��x�@R�e���@R����g@'�Z�|�@ �l]T&@���@P����@$^�v��@3j��/�@7Ie@��@;;����@3��0�e�@8g+�r@M�<�{��@UđKIT@W�P���@X<�r�M@X.�L�t@X�R�lE@W��p��@W�$V�@Wm�3F;@V�04�@V��`0@W���@V�V���@V�v�"�@V��ĩ%@U�ͥx{S@T>�D~�@R7)�ՎC@Py�浢@L�%�9U�@GTɇ��@D`��6��@B{
_� �@Bt)8�>G@By���@2��N�%F@9*;
 �@?o7 �s@B��yEwh@I~}�TH�@Oځ N��@RX�<X�G@UuaM�E@VX�o.�}@V,��c�@V�C�_�@U�p-��@UE�����@R�/�Z0�@NH�G�@Gg�kX�p@@:��A�@8l�v�@(�����@!�����@".�b���@%�U�b)@+έ8��@.�k�3K@1*E�h�@3�is��@>X��mV]@F�_�A	@Ga9�W��@J�7"L@J]�z���@N�\�6��@I�J��8@P{(��@RF%���*@Q�!��@Qg�(zK�@P0Ϊ�w@P �J��'@P4 � M@P��@Ra 	��@Sf�8X^@S�2��@S�?I<@U�[ls@Wi��,�@W��x�G�@W��� W�@R��h	7�@S�ؓ�@P�Qړ��@O���Q=@Qm�8�@R�� \��@R����g@'�Z�|�@!ȌHZ�@�?�f�@ ��Z�@#�V�wܤ@7���@:.'ׯF�@=�'�S:@3�Ѽ�%�@8!N9^�@L�GO6v�@V-G�rn�@W��R��@X16w,�@X&v)��d@W�����@W�[��@W�^ �@Wu~Z�&�@W�[��@WJ��`��@V��kI�@V�9�T$�@V�Ϟ k@V}��_@U�h,��@S�+	��Y@QXݷ>��@MVQ�� @FT�RK�E@C9��_t�@:K�����@'����k@*�	Y��@2{�j�]�@9Y�`��@<}����@A�S�u@D����(@IVƤQ�|@KODk͑@O��ȧԠ@RoG��@T��$�@U6l��=@US���b@T�5�h|\@Tr�2���@Q�;�jV@M?~
��@F����@>^{��@4*�� ��@*h�'��@ �Ao$��@!���JD@&[NX�x@)RJ��a@-4S{oX@1cE٪@5����m@DTr=�8�@Gaޜb1�@F�1��b�@I���%	/@Mt�@��5@I��>�3@Nk����@PL�Ǐ�@Q��/@Q��r�ˠ@Q Q1�=@PY0a`&�@M77^(��@P"9�ߩ�@P�+�LS�@Q��h���@R��6dE@R�Z����@R��m_�@T��U�ы@WE�0��@W���
K�@V�z�	ݛ@Q���lp@S���@P�AdK�@P^�}V@Qi����@R���uy@R����g@'�Z�|�@ �ڲu�@��p*�@ A����@#��j��@;R�rS @=y�C�^@A
d*�8r@3��Bq@9X��G�@PZ���@Vq�
;�@X��a�i@X-�Zxk@X$)�Eo�@W��
eQ@W�čr�@W�cV��@Wk���@W!]����@W'�]@V���|gs@V��o�;i@Vzr ;�@V&xp�@UȦ��\�@S5��	fx@PO��j�@IRՓ�Y�@B;�g��@5�V�@,8&lC@+�<3w@1���]�@:��0"�5@>k���PT@@k���?�@BzC%W��@F,N���@Ht���\C@K:q@@P3Mۦ�@Rƞ�>M@T9�rw�@T��Z~;�@T����/@T¨M�k�@T�8��@RԯG:<@NKGY@F�F*A8@=_��|@1���#k@(m��m�@ RZZ��K@#�ƥ6�8@&��3��@'�cI�
T@+V�-��7@0��'R%d@9���C�@F���c@Gq��ϵ0@H���m@H1i3�]�@I��Րr�@K98̃#-@QQ�p �@O����N�@PZ�1\@QcÝ�	�@Q2��<�H@P��G�@K �j @L�"��ث@O����e�@OF����@Q�e\�@Q�2gP@R��\�`�@S�fz��@W	�Ewp@Wx#��Ts@U��P^�@Q�o ʙp@R�n���@P�����@P�2Ů�@Qg-}�@R��ڜk�@R����g@'�Z�|�@ �CQٌ@�C�(��@ � ���U@#����"@<uR^�8@@�m�}��@B�A��p�@3���5�g@:)��n�@R+�!��@V�P;(@XI.��X@X4��g'@X"w�V9�@X�mH=g@W��SȪt@W����@W_�17�@W${j{I@V�B���@V�:����@V�n7@ɔ@V/�L7�@U�^��@U�n��@SE�ىT�@M��
��@El��OK@9�!1��T@2g��S�@0��ă@0����@5K�\dP�@;�Z\A�Y@>�psǤh@@�����@B�py���@F(J
h�@Id��Ƙ�@L�9$S�s@PS����@R��}>�@S�
��x@T���a�@T���v��@T�OCbh�@Tv;6��@R,

w�@Nˏ�A2x@FU� I @;a� @/�!x1�T@%x���c@ N�>���@/�}��@":�����@'/f�7@,�R�>��@1	~�U�.@9�LR��@C˯-W��@Gx�J< �@H������@H˱`_T@L���QE�@PQ�^P�@P��%_�C@N0CܗHm@P����$@Q�ӊ3�I@Q%��D�@P|����@K��R]�@L9ꟁLS@MK��S`@L٘Ľi�@P}*�|_@Q.�KD4@Q�az[cK@S����P@V�����@V�=|���@T쾍a�u@R&��u_@S�����@P�����@O�Ɲ6=@QiHOI�I@R�l��@R����g@'�Z�|�@ ����GU@6`q3CB@!d�ف�Y@$u*��t@:��5�Z�@B@�.�5@D�� H^�@4��" �W@:��9���@Q.e���@V�iG3@X1`A:o�@X@����@X!G� �5@X@;�C�@W��O�@@W��Av��@WWhc<�5@W
w���@V��So�@V���~A@V`���@V0�x��@U��+��@U">{0�3@Sj?8@P@O=��?�i@E�e����@=K��!@5���)�@5�47���@6.�Vj�@:E� e�O@<3[�>�@<�M�B�@?��:W�@Añs4F@C���`@G/N�M`)@K��1M,�@P�@RP/o��@S�7`}�@Tu���x�@TxD;� �@TTO��YT@SvT�@Q�f{��m@M��;��@DK�[׌@7雤�6�@-�C�ws@#+�@f�@ 3W%��@D^�S��@ �d��L@&
ǋӔ3@*�Z��c�@0E1�o)�@5c����@=���z@�@F��Oo�c@HzND1�@J�4�G��@M��S��@P3*�&d@O���C��@Pg<{�\@P 9��;@Q̣�G	A@Q���@Q<E�Չ�@P���~.@Mf���i�@NT�xr �@O�鑳`@Ny*R�@P��BP�@Q*�c��@S%��Ȑ�@V��l3�@W |�û@T|�Ջ�@R�hBCш@Re"59�O@P|T�xpg@Oۉ)�U#@Q_�_G�@R�?%�Z@R����g@'�Z�|�@��G�T4@�����@!ڝ��m(@$ſ�h@@ g���@D�3�d�%@F+-���@5O�Y"}�@;Q��4�(@R` A�,@V��jG��@X:��@XBCp�@X�M>0@W���xp@W�8��`@W��j�e@WN���@V�@bB�@V�v��+@V�Ifoq@VO�'�T�@V$���@Ujp�L@T|¯���@R�=�6��@P��GrW@G|0D��@@�jЧ�@;�T��E@;��6/�P@<���@<��(�It@;Ն���@;��Qw�@>����@A�*����@C����; @HJ���]�@I�j��~c@O���	@Q�4�xw[@S���?=�@T|=� d�@T�$M��@Sը�4��@R���Y@QT@�"h@K��۰�P@B>��n��@4��U�֯@)��Dm�E@ p��IL@2Ņ�ZX@&ƍ��@ ��r�rI@$�*%�@'�+�,�@.��e��@3^��tL�@@y���e@E���V�@G�F@HWϬ�@J,�M���@Psmt��_@M,կO��@P���%'@R$wR��@Q�E�z�]@Qw��u.?@Q|z��:�@P�
{�]@N�S���@O]��99�@Q;mD�/@P6`��@PM�`�@Qb���@R�X�N�?@V�cV���@WriJV!�@T��Ƴ�@R<��ʐ@R:K��V~@P���(�@Oæ>�=�@Q^ёSVI@R��	�?@R����g@'�Z�|�@��eW�@Y��ˁ�@"�
�Qo�@%�Yt�q�@BHgܴ �@F����<@GT���@5�\��1@<�B�q�@Sd�}C2@V�m�Cc�@X@�J��]@XF��C��@X�&�P8@W����@W�U:��@W���t��@WU�M�r�@W !95x@Vت�u@V�!�m�@V,��WcE@U�SR@Ur�л��@S�Inו@RW&����@P�iBF�@J�����@C3���q�@@��̠e	@?eyUx@@P����@?�?0��@=2���fD@: P��@@��d�#�@C�Qh�*�@F����@I�wW#��@I�#�w�@KA����@P�)��>�@R�7�y�@S�&(�@T8n���/@S߽�V�@R��/)l@P�o\�-x@Kyծ3$A@A���v�0@2�|��P@&̘���@�*�t�@�(�ڌ�@�&;��/@ ��T@"ɥ�w�/@'"�,�p=@+Y�)��@2Ll�� @Bf����I@E�r�@F���	g�@Gw�n�T�@J)V� �<@N�� SO�@M8m�k@Q��u��_@Q�)t�@P�6��]u@Q4�G�X�@Q��WS @Q$�+ֿ�@Q1�}��8@O�r����@Q#���6-@Qrt��%�@Q�Jk�@Q����;@S@�O�u�@V���6*�@W�݃���@U����@Q�v���3@R/�,3W�@P���*��@O�q����@QX�w�@R��i ��@R����g@'�Z�|�@ؐ!�ty@�+B�*�@#-B���@(w5��@D�.�o��@HC!�O��@G�<P�@3q�o8�@:���f�@S4��+&	@W[�,���@XD� 2��@XK�Lo`@Xnw��@W�o���@W�Y��ܝ@W� ��%@W�T��X�@WJJ�;@V�x�3m@V��
��@Vf����4@VA�e@U;�<�t@@S���f�#@R8��+b�@P�Uɹ,	@N�$����@F�+�U@B��Q%E�@A}i:s�@Ac���\i@A��ؕ�@A��"@?h��E�Q@A�G���Z@D������@G��չL@I��G_$@I��ӔY8@K5R����@PX��a@R@#�n@R�����e@S�e��H�@SI�;��@RH�B@P�)�y6�@KT�o<�@B���j��@3�����@%�R�K:{@G����@�=�&}@6���� @�]Z�4@!��&Ż@$RO�Y]@)��>k
�@2n��E[�@D!���5@E��oO�@D�m�&@Hްl��@L��f�-�@M���k@L��.��@Mfߧ{a�@O%��c@P޽�f�@Q*����@Q���b�@QsR�S3�@Q'o�CR{@Ox�JV+@P����J�@Qʍ��b�@Q�|%�g@R@g��m�@S	�3�@V�k��*@WƼ$�c=@V�0Ê�`@R���T@R�Pr[�@P�!�|@O�t=���@QT� 1��@R�w'$��@R����g@'�Z�|�@7�{��Q@�@���@#��I�)@+$����R@G��&^(@I���lE@G�$I<��@2mЂ� _@9e8����@Qd�n��2@W��lp�@XU�2�[@X:���e@W�����@W׎2s�@W�úe��@W��w2�@W� 6͊�@W|���<�@WZ���7@W0����@V�S�@U����@UA+ Z�@Th�W%�@R�ΐ;P@P�Y3j�k@O�\|F�K@Lt��4u�@E��qՔ@BҐ�ɫ�@C !�!�@D��av�@D�$��i@C'��KS!@B�޶�K@H_Bs�@I���SSh@G!��|�U@Js>�!:X@J��[M@P�ʯ�^@Sf�<m�@T�co�@T*_K @RPRC�Z�@Q�o�lx�@Q��s@L �3G�@CWW(=@4��+W"@&�vR7�%@bXɟ�@�\�Z�@cm����@SO��0@�˽}0�@$B��v��@+03���@5��U�25@DSt��@E?a9i*�@F�;�o@KR��j��@N�|���D@N*�z�@Kw�Av�U@KV�Nc)@N���+�S@PX>����@P��ZM�0@Q��ֽD�@R��b
@Q�HpI�@P�9k�
@@P�-�'@�@Q�� v��@Q�°� @Sq�4�@S���M@V��u��@W�X�?@W=O��@R�1}���@R��+j��@P�3�U@Om�@QG3U�?�@R��)7@R����g@'�Z�|�@����"@wX�_��@$;Pp��@0V�\bԔ@Ktݷd3�@LXB݊��@HvҺ6m@2FVD[��@8���t�@O��u6V@WV��a�`@XVƆ�vw@X.W4Ã�@W�ɶ���@W��J4@W���fH3@W��n��h@Wu� �&[@WH�w�@W�ȼ�@W� �/�@V��u5��@U�t���+@U���a@TL�� @R�BB�O@P���5@N�[c9,�@MZ_�)Ó@J+~	�@G��`d@F��	�3@HW�`�28@F�䪤�@E ]���@D̸t*��@H�9�7�@I����%�@J���}�3@L�P�f�@I���Q@M�C� ��@Q���S@Q����̉@S@��F��@P��j)�@P�q���@P�J�Y�@M�z�@C�a<x�@4�M77:J@'Ɛa�@�:��;�@�{L�w@�K���@
9K�@!�xN��@%RZ\�@*�~�Q+@89��E��@C��~�@E�u��[@G ���@L�A�
�-@N�J�4$@Nu����u@L��Q!`�@J���=6�@N��Q�r+@O�8����@Q�=7χ@Q�g��j$@R�e�J�N@R�ܞ%U@P���@Q_��@Q�T���@Qm;�%�@R���22@TU�"�e@W�0�#�@W��m@V�>�$�@R�p��1�@R�q$��@P�q�խ@OL�(�3u@QCw�
�@R�4�f��@R����g@'�Z�|�@�~y��@�A��r@& �̨�]@3���~@L;+�p@N���Yd@HДȔ�@3]��n.@6�ی��@Gn�S�~@VB�70�@X1����@X "|��@W�G[@W�5���@W�?�P@W~zN��5@WK�f�
�@W">���C@V�{�㎍@V��k}�$@Vq� Yvl@Uy��,��@T�ڌ��}@T!�)��@R�c8:@@P�}3�>�@O�x�@L��1�@J��b�Ja@I��s?@E��9ظ�@H�$gԅm@H>���}@I"��� ;@L5�#@K$���@I;,���@L���@`@P�x�f]@L���@O,���-@L*�ph1U@L��f<��@La�,�M@M���W@O��@2�`@P���z^�@NMCw�@E���$8@4�_�1�@'�V&Qr�@�M����@�D��@�f>IC�@m�ExZ�@�ԧ̗�@0���:d@4�m'e	@3��f��@DpP���y@E3�S@F�u��@L����1@M��0��@Ol�ðب@Mǡ�n�@L���w�7@NXԷ�}�@P_F5��@P�%G$�@R"��B��@R�r��2�@R��4>��@Rx|�5�A@R �4@QkFS
�@Q�Fڌ@R�*��r�@U��oU@W:H���@W��v�@V�^@1�T@Rܒߋ;	@RS�0�K@P����@OWfpe@QH8cPY@R�D����@R����g@'�Z�|�@��1��@��Ɛ�@'�2<ʗ�@6��E��h@Oѡ����@P.S���@I֐�)�@4\F�b)@54~ ���@I��Z�j~@V�$B-@X1�j��@X�m]�@W��x�X@W�u>��'@W�Xx� @WY�>Z��@WF���@W'����@V�顟��@V~�1M�$@V/��@�@UFqŉ�@T���LS�@Tr�
�V�@SY��6��@QSfW�
!@O��os@M,�C8@J���G�@G�AQ�@E�Y'�V�@E�B��_�@EhYs�dk@E���*�@LC����@L�2�7|k@Nb��t6p@Q���vӳ@S��x�@RO����@Qn�� �@QL��:5@L~��0x@J{�@�@F��1�	@H�cA/�@PoP�<�@M;8��W@C"��)}8@8.'?ת @(��b)�@\Nq�	�@��L���@�֙{H@'r4�Ȫ @;`ھ���@<;�k�L�@.�AӦ�@1���;�@@����;@E��(D�@H���+�@N"|L�]�@O}m�Z �@Ow�3��@N�Ja�%@KFB�=�8@O�˿��@PR�5Iz�@P���o�0@Q�
���@RC�/�ځ@RQ��b#@RsS���@Q�o�:@Q+�Q��@P�w��g@Rw �_e@U��Q �{@WKH�?�@W��p��@V��V�� @R�g���}@R��>�@P�A��Ÿ@Nܧ��@Q:��@R�Ѐ5&�@R����g@'�Z�|�@�F�1e�@ ���@,!��Vc@:ƤI��@O�{�7�#@P�udr @K\{���@76�Nvɜ@4����@J��c{�@V��o�@XT�k��@X0�4��}@W�E{,/@W�^��A�@Ws��j�@WI�(�x�@W6����@W
j�qt@VŒ�*D[@Vb.��h@U�3����@UYl��@T�4~�%@T{��ߩ�@S`�4i@Q[{��@O���ᘘ@L�ՠ��@K���T@H��*��@F����7@E��	p6@E3��>�0@E6]�Kcp@F��W��Q@Om�iu�@NB��l��@O����L@Q� ��|@S^j+��@T:��{[X@R��D0�@QG�;���@N%���qM@LW�L�@ṈV�Q@N+t��7@GДE  y@C̤REU@<�$��h@3�a�7�@&~�8%@6�S^j��@B$����@B���Dݟ@7�t��9@&�N���@+*72s�@1;4�M�_@7��q5I-@?�'�@Fg�G�v�@J��sǜ�@Q���S@O��:�@O��I_x@LU��:�q@O��r��}@P8�3��@P���D@Q	�Hs@R ���=@Qh���@R:��]@R�ć�@Q���Ǫ�@P�1*�)@R��C���@U�>�d#@W/;�!�g@W�~Z<Tu@V�&���@S'�@�ڨ@R>��Ǣ@Py��a-@N�&����@QA�I��@R��E�@R����g@'�Z�|�@bXxf@#ԯA��d@1x�5��@?��+ZP�@P��j��@Qi^��@LN[��@@:�)ᡖ@2��kw˻@E�[/ng�@U���2�@X\,{Nj3@X3��l�k@W�C��\�@W����@Wfū+h�@W"�n�r`@V�-!J��@V��X[@V�C�0��@Vk����@U�Dn���@Um���4�@T�0B��@Ty`钴(@SV!��@Qr�����@O�P�F#�@NT�@Ca@Kڠ��t#@Ic��0@F�u��a@E{[9;�H@DA�I��@C������@EE�
Δ�@K���"�k@M��W��@N;<q�@O�n�h�@P�C��t@P����,}@Q"_�	1W@S��uJ�@S3�q&@QH�#Y��@P�<p�}X@N�RT�z@F�j�Ga@@NP!;5�@9L�5O[�@3oцvB�@F2�
�@G�Z֗�@@�I0*2'@)M�4��@(Jg)�G�@-`��!P@-�x�'�@1mw�en@6���%/�@=��XČ�@C�=���@I��6�84@Q�B �$@P�\���0@Q
���@OMb�f�D@O�"I� �@P}O��@P�2���@P����@Q�@�˪�@Q����/@R���e@SG���_@R��l���@QT�	Q@Sd�!b�s@U�m�z��@W:U�nu@W���@V�����@Sz�|@R7� ԑc@P]��'@N�3�I	@QL.�0��@R��ʔ��@R����g@'�Z�|�@.6�+�@%sK;(@4Ϟ��8�@BOl����@P"k�c�U@Q�.ȟ<�@L�ź��`@;�gO��@12'�*4@@7�o��@S�@_�"k@X>�m�r�@X@����@W��7CM�@W���6�D@WVVj*�s@V�k��۩@Vñ���@V�qX[�@Vs�4��@VW���'�@V1��o�u@U��j:@U��ֻ@TՎ`HG�@S(o7z�@Q����`�@PS�ZG(�@N���{�@L�2a��U@Jy=����@E�踩�A@AG+�Hc@>�R"q@@[���@C`�mN�@G�H��۵@K-�aV��@M���ҡ`@Mk�(�kx@M�DȞq�@M�����@K�_,�1@Kݛ��I@R䚤�@QXz�@L8U`VlE@I�p_u @F���
�|@<�g@1�C��@A!���l�@Gߠ ��]@=X����]@,�e8���@(.��b}�@,;�s=RM@0i8*>(I@2}Kv�9�@2�V�@5��)E��@=ϩ��=(@D�S�&�J@L�f�� @Q(��T��@Q�Q��E1@Q��q�H�@Oi�7*�@O1av���@OӮB�u@P85)^�}@Q"����@Q��1a]@RU�����@Sz.�J�@S9R|�m@R��t|�@RZDS�Ƭ@S�o���@U��yIQ]@Wc�N6�@W�t6���@V�5�l��@S�!:�@Rk�!�{@P*�U�@N��1iqC@QI6.%|�@R��up3@R����g@'�Z�|�@T���@(֠'[M@7�h�45H@DV�'� @Q� ��&@QhP9���@L\�ؒ�T@<�]���@/�����@;2آ�@OȔ���@W�@��*�@X?4<#�@W�O��Y�@W��.�P@Wf�I�M�@V�M�F @V��/c�@V��R�@@V�{��q@V�8 �@VU\�O�@UuRDA([@U#��#�$@T���z�x@S�6��s@Q�y��@PE4=��9@N�HMҫ(@M |�u @J��x61�@C�c#S"�@=�8$,�@;���n�@:j�}5�@A}Z�K}@B� �?��@H]�5˟@JH�v'3�@J�3SP@K�/��#�@K'V��@G�PVm�;@G���D�S@H#�� e@N��8�@Jd'�a��@F�2�_r�@C3� -@@=|��G�-@D#���N�@7 �.5U@2��^3@'�{�"��@#T�@=$�@&ⶭv"{@/���zM@4�p��@4ۯ����@5+��n@; >Ԓ0@A����i]@H4-�ّS@O��7ʈE@P�\�,@RY��#�@P��~C;@O�΍Iv@O�^��4@Oo>����@Oǭ�g�5@P˵BP�y@QW%c䏕@R{¾\H�@R���9Z�@R�!s���@Snp2��@Q�����@R�e4�r@U�;1���@W��BD�D@W� ̩�l@WD5�-T�@S�?z,��@Sɦ��@P�
��@N��>"�@Q<)�^�@R���F��@R����g@'�Z�|�@.��j&*@*xѼ�`�@;���U�@FIL�@Q�:�	�@P�'�+�@KiBˀRB@=�����@,�4���@7��)�1 @Iz���_@WF#NM �@XF��{�@W� h=?'@W�%�hߌ@Wx�M��P@W��?0@V�J]8��@V��=#Q@V�l���@Vx5��O@VD�"�մ@U��QS�@U>A}��t@U$I�[@S�}؎s@Q��ﮠ�@Ph�!b@N�d�<�@M�"�@K+94׽@F'|��o@D�(8�v@A������@@���u�@C�~��I�@A޵9��@E�5�O�/@J��-7|8@I:X�g�;@K��8���@Ku)�k�m@G6s�b��@E��,�T@ES$:na�@H'OiGh@K31I�Qe@E��`Ue@B�*@v@9a��>�@D� 5R�N@1���_�@��hx=@������@"�A���@(���|�@1[ء�!@6�ENէ+@7��**
�@8�鍹�U@><�Q9�q@D�B�Y�@J(N��?�@K��j#�S@P���R��@Q����~>@O��b�@Nנ�^@N8�>��C@M�`4�@@N�E�N�@QoO@Q7��NM@R�)��@Rㇵ���@R� �풶@Sn$���@R
#�L�@S!�v�>7@U�hQ�n @Wn�L۔�@W�}?	T�@W]s4R�@S�9Q�@Sh@��W�@P��c�@N����`@Q/"��gg@R����@R����g@'�Z�|�@�}J9�@,M����H@=��H��\@H���(��@Rq}�>^@P�i0 w@I�-|q@=�^�WOb@-g�F�g@6O�C�@G�.Ƽ@V�E��'�@XEo@��@@X��d;�@W�/�xE@W���s��@W7F/���@V��%�@V�)�k�@V�ȇW�@VZ�=H@U�q��@Tܭ@��@UB�rY�@U3��@�z@S���V@Q�if�>@Pr1"��S@N��[��@M��X��@K}h�%@K8�<>�@L�lAc@N�4�@N����3@O�k�@H��sNA�@F}�ߩ� @F��Գ@J]B�m�@L��J
�(@L#�A t@G�\X,��@D�(_"@C�� %�@E+Gդf@F�n��M�@D���K@?�f�A@4�M��@A���@6��6�E;@x8K��@6ZYL#�@#�ܢ`�:@*���6^W@2��oć@7w,Ø�%@>���(�@?��u�@A���"�@F�%N`�@I1k A�@N��c%@Ob
�@P������@K�Cd�I@LA�!Ť@NA{N4m@M�M�\>�@M��'�1@P4mԈ�s@Pۿ��@Q��#���@R�-�C�@R��N��@S�y��@R;燄_�@R�g�.�@U`l�8@W
��@W�7bЭh@W"��1WL@S�t����@R�t�Pi�@P<�[��@N�V�]O@Q*�֕G@R�% l�@R����g@'�Z�|�@ft:^�]@-�ڋ&�@?ص�]
�@J�:�@Rt3�� �@O���T��@GS��"��@;���j2@.���rq_@3��@B�:��w@T��t�@XTe�l�@X���'@Wп-]+@W�.6�W�@WF~�9Qw@W&����@WF�*�}@V��) @Vg�aڄ@U�@FN}@U��?\Vy@UH��R�@UJE*U�@S���y�!@Q�)7���@P��3���@Oi'%��@N9oʺ��@L/7�/��@J��PV�@KHG�@Kǈ�7@LkC�>j�@N̿���@Q�����B@O�x��W3@L����nk@J�6��@L��@L~�5�t$@H�>]�K+@EZ���d@C��j�@E[K��}@I�����@HlN='��@C5;�@5�0y�= @7���Q�@A�K�_�|@��9��@��sd�@"�듢iT@+�'O�@2-�؁r@AR�<v�(@KOY�@D'z�	�@D����@E��,>}�@I�˻�O@P&����1@Lĥ���@ONk����@J�ˤ�,W@I	�w�@NN���X@L�z�Pz�@M���%�e@OF�a���@P0�5��@Q˪7"v�@R�,�T��@S��{�C@S��..�e@R�k�ac@R����XL@T�G緌r@VAJ��M@W;����@V⍘m!@S��l�t@RK��a��@Pn.Q�è@N������@Q�Q���@Rw?��@�@R����g@'�Z�|�@ I���wA@0DIN3��@AM�T�;[@L���׆@R}\���@NE�@D
���J@6@jȂ��@041Uٽd@1���@?�eadC@Q'MG�g@XE^��@4@XF��@W�C�W�@W��s��@WA/��ݭ@W��0@WHYO�`@V�H&�@V~r�>��@U�wE,�%@U�a��@U�J���@U Zd�H@S�r�@Q�gm�@PÈ�wF�@O�:��X@M�TdwET@Lͻoi��@Lnۄ���@K��`�h;@J=$5Um�@Jt����@J�K���@K��8�@L�aQX�@Le/(e@K>��K�@L��!�M@Lĺ8n-@I�=�}��@FCfK�O�@DCy��@F��λ)t@I���
��@I�����@HW����@D=�SZɠ@A<�`(pA@DH���fk@4�U��@՝-˔@!s#-{�L@(���N�@<�u�{-@G�_��re@A�y�wI;@@Cr<�@@�_�� @@��H�5@J�%�)�@MB[�yu@K��4]@K����@Nn�͓��@H�P4��@N�7��'@L�x�L�0@M�VC{�c@O����@@P��}�Q�@Rk� "�@S-�<&@S(��oIe@S�ֹE��@R�%�۝A@R���0�@T{	*1�@TMvb���@VJУ�#@Vv�,�\D@S�ݰ��o@Q��O��@P}}-W@N�{���@Q�B��@Rt#��#-@R����g@'�Z�|�@ �X���@0���B*@B���I}�@N�[�
H<@R'o@�@@K���Q�@?b�>�xc@/��m@�G@.�o��S�@/M8V�o@;���l�E@NJ!ެE@X0���u@X*�{}z�@W̉�[��@WqT�M�@WD���`@V�&�t�@V���w�@V�����w@V�S+��@U�',Lm{@V[�[�@U��@k�[@U)�qa [@S�/]��@Q�����@P�I���@O���)@N�Ο�/@M`$a
�h@MJW��@K��z�iP@I��Ŵ%�@Ijr���@I�8I�k�@J͉����@KU���@K��V �@K�dLĦ�@Ll��a�@L?8���@I�ʗ7+�@GR�cK�@Ep,�t8@G��ȏ(@@JP�&��@IP5!�@HQK�nt�@F�fV���@B����@A��%�@BM�Q���@��3'�@]m`�@%��ΐ��@8�D��R�@FM1��F<@6�z��q@; V��u�@=P�4��`@<�	��ݕ@Ge�@Iz�eU�@I9#����@I��f��@M���i,�@N����@N:���E@MDUg�G(@M�i1N�g@O��.�m@P���[0�@R/��~uW@S4I%v�@Sp0�L�?@S�NJۛ@R�J)z%@Rc����]@S�����@S|�`�ܔ@Tz��.�@U��6,��@S���~�@Q�e�#t;@P�q����@NÅ?���@QV�Y�@RjeC�@R����g@'�Z�|�@ ���Q=@1��M<+�@C�V�#@O곂?�@RO��nJG@H��c�~@7����@(I@b��@*��k8@,��g���@;�&��e@P{v��m@X�"�k@X0z�v��@W���A� @Wh���P@WH�J[9c@W(�?��@V��eS@V�}n��@W�1��@V��Dy�@@Vt,����@V2$�.:�@U
>��I@S��X<�@Rp���1@P���i@P	�o��@O��$c��@M�w��m@M����[u@Kq@��P`@JP���E@H�JX�b)@IӖ9NAs@J�2ĺ?K@K@ڽ��@K~|�јx@K��*��;@L+|忝�@K+Q�G�%@I�C�^3@HN�0�|m@F�ņ�@H�߄�-�@J��L���@J̵�u{@H�0�x�@F����0@D��x��a@B)1��@AkDG`��@3������@�N+s@"AR⺑�@.�_�A��@BЀQ�@5��bϋ@;�Z��@;i�DX�@;�%*�� @B,�� @K>�l@I]�����@KA�\s�{@L)%r�`�@L��!�q�@Mi`�=�@MZ��t@N���N-�@P��xS'�@Qn�h�?@R$� �@R�3}.0@S�)q@SU�SKݬ@RUKR��A@R�g܏/@S�ٯ�/@R�׷�<�@R�r`�m�@U
����@S�C�ѵ@Q�q��4�@P�ˎZ.@N�]���@Q�%�YI@R\5�Ù@R����g@'�Z�|�@ �l��@2i�,]�@E f��G�@P�C���@Q�il'��@E%F�j��@1ы��_�@(Ϡ%?K@(-Һm��@+��/r�@=���Mp@Sv�=@W���t5x@XA�)��@W���N;@W{�P���@W.���@Wso�e@V�]�HOE@V�����=@V���E�@V��ϱ7@V�ڝ``5@VX���"k@U��Ԉ�@S��Dg�@R=0�Rc@QG�=H�T@PQ�_@O� L�7@N\�a7�@M�C�@KJ�3C@J��R�@I�T^�>�@I�|�.��@J��AA2�@K��]e��@K����P@L�Z��N�@L(ʃ�{S@K�.�Ԗ@Juorm|�@I"�e��@G��ӵD�@I���zc@KݎH��a@K?���[k@I-�Sސ@F�^�`�@C�Չ@A���#�@@>�H���@?�~Q�R�@2�B�<t@�*]{@=��~�t@9/oj)@3@&n�In@8���d@6����&�@?�j@D�(�Gu@I���ku@G�j�랑@I0���g�@Lo7,�@Lye��G@L�5[���@M'�G
�@O0ǊJ @R�)�]�5@R��҈`�@S:$�.��@S��TW�d@S�4�]��@S��@!�@R�Զ��@RkW��}@Rk�F%@Q���F3@RVp|=5@Tc`��s@SPe8ϸ�@Q�ݪ�]@P�E[dyL@N�%bg�@Q��+��@RPaa��@R����g@'�Z�|�@ �m��3F@2�s��\w@F%,X��@QC\fb�(@Q��#�@BX���@-Α���@0ͧ����@.0q��@@-�/j?Vh@B��.�X@TYv�G@W��1�C�@XC�xT@W��:0O@Wx�c��'@W(�w*�@W�� @V�����@V��m/��@V�G��+@WS� h�@W�F2F@VO5@U�d�@S� ���C@R[s�m@QX�Tp��@P:���}�@OJ`4}@M�.
.�@L��=֗�@K_V�c��@J�j'�L�@JO�d@J-�O��=@J��g�@K{%=Bɽ@L�2D �@L�A"���@L���/-@K�ꪽ�@J��Z0@I���_@H��(��@J?S#h��@Lk�Y�@L$��N�#@I�=y�@GEۃ�YQ@C�.
B�K@@�iO�>y@>��Z�w@@f��C�@BE�3T�n@?PE�m@C`���@2R���@0�X �E�@4�(� �@<0����s@@�;�иy@F͎�p�@G��EW��@F�;�ؐP@I��~�@N��u��{@NlW�jEa@K���)��@K���
�@L������@O���
�@R��d�G@S�,�@S2o�Z^�@S�h�.8�@Sna#���@R� ���@Rv^ܖ�@Q�z*��@Q{�4�@Qu<�� b@T
��$@S"S!M0 @Q; +�}�@P*h�V�@N�(��3m@Q~P�|�@RJ��ڪ@R����g@'�Z�|�@!2
,�@3{gɑ	P@G/C8� Y@Q�/���@Q����+�@?�صo�@-`�¾k@5�P\R6@2�d�H�@0��#h4X@Ek#��Ow@T`w�Z�@W��ެM@XJ>�L��@W�e$b��@W��KT��@W,�A��X@V�m'�T @V����qL@V���@Vm��9@Vۜ��}@V�����Y@V"j1��@T줽�=@Sf:G�M_@Rk��L@Qd���r�@Pr�c��@OB@}�Y]@M�x':�X@M!݉f�$@KO�j��@J�;��@JS�	ԯ@J���fl�@KļV�я@Lmg@���@L�����O@M@K3@Mg<ۏ�@LaRJ;�I@K �?d@J�'R|@I^�:SV�@J�@/h@L��y�u@L��x/�@J���a��@H,`oH��@DB�'~��@@J!\,m_@==���c@>�U�T�@A�g�"^@BeΌ�@C̵Z�.�@->l��@2�[��@3H��k�}@7ByVw�@@W�d��@F��YW�@E���!�@FJ��v.�@F�:~p�@In$ڊ��@K�Z`>N�@Kt�洄o@Jf
w�R�@K���6��@MF�^���@PZU�t�@R�ܾ"V�@Ro�G�o@R�t���@Q����W@R��q���@Re���;h@R N<<R�@P�,���@P�}���@Ss�%�ȭ@S� �@Q1�Ѫ�@O��D�H@N�d�
��@P���Ī-@RG��e%�@R����g@'�Z�|�@!h&��@4�V�:+@G����%@R7�e�PM@Q����`�@<��G���@/�(��@5ޓg��@4���e��@2`��3ov@FC���@T�A�v�@W�KƄ%�@XL��@W�
+�A�@W��^�j�@WB�E��@V�<\�Fp@V�X�ZC@V�S��´@V*+x�E�@Vim	�7u@V���:@U�ZQU�@T̚��Օ@SxJ@�-9@Rz��u)@Q��@���@P��!(��@O:�5��@M�bΏf�@M6ޱ�@K��t��@J�&�8d@Jp����@K$�}��H@L{.�m@M����O@M�-G�@M����4S@M��h؛�@L�h�]�5@Ka��3�@JF�a�h@Jo�=IUe@K:����@M)Ad���@M�-ZW_A@K��'�AQ@I^Hc�|�@E��ӄ��@@��*3�Q@<5�cKVX@=�5��q@@��3��@B~��c_�@D���@/ 1�.%@-�w'jե@4\�>H��@9���[�`@D��g�8�@G,k�/��@FAܘ�B�@G&@ۚ��@G�A)]@Gˬ���@J��J%�@J�(�_��@I���? @J��<vt#@L���D��@P.W[�?w@R�\=9'@Q`nH_@Rl��ܖ@Q�KJ' �@Q�ܸ�i@R��~;ݏ@Q��>s@Q�	[��@P�D�ڻ�@SCuO@R�H1��@P�ϓ�!0@O���1��@N��;�"�@Q�.�@RQ&X��@R����g@'�Z�|�@" ��Г@4\�����@H:❢�@R��i��@Q}��<!F@;��s��@0�,�"Ir@8f��@5�ϱ���@5UBVG�@HW^�(r]@T��!�@W�� ʢ$@XZw�J x@X�3���@W��$dc�@W5ea.6@W �9­�@Vү�m�C@Vs>V �h@V47.(��@U����Ȼ@VwL�Ps@U������@T��r[@S��#4�@R�3 X�Y@Q�h��@P����A@O���He0@NJ��Q�@M~�	H�@K��hq��@J�f�:I�@Ji��m*u@K�I�^ё@L�Bs\�7@MEa�<n�@M�jv��@M�b���l@N�j0#@M;f}Ȭ�@K�q�5-@J��/Λ@K�y�n�@L2�~)@M4�[�5�@N[�I��@M%�
��@K| &RS@G�x]%s@B���V��@=8�v�@;�o~ʴ@?t`Ց	@B��i�ќ@E�Hʃ��@0�bі�Z@2�"���@5�	R��@;�Ǟ��@F��z�]I@I	�A툗@H%�X',�@J����@GAG4���@G-�=���@I[U\�zX@JilX�@Jp�e^'�@Lי�5@L~�nM�@O��!C@Qn�eSi@P[�H$�|@Q������@QYCP�*{@P����@R�����@Q��L��@Q{Z�]@P��Nǒ�@RiO쎬�@R�T2�#@P��K�@N��:M6;@N��N+�@P�z�`2�@RQ/���@R����g@'�Z�|�@!��6�N%@4��o��@H�Zq�@R��>�Z@Qc�q�ѷ@<�b<P[�@1|X���@:���y-@GCg�N�@@`�U�'@J�|ڈ>�@UN�S�
@WU�O@X\#R�Qt@X�qV�A@W�_J���@W8z��J@Wd�m-@VȢ<�X�@V��`y@V^d_�b�@U�X���@Va�X��@U����" @T�<��Du@S���S8@S'�I�@Q����)@P�y�F+@OѓELk@N1�X���@L�Ýu�@K7��p-E@J���L@K$�~���@L�)���@L��[Ϗ�@M�_����@N�z��e@N��	Q��@N�>ߟ�0@M�j��o8@L�;C  �@K��-*�3@K�(a���@L\pG��@Mr��1��@N�Km���@Na!��� @MW���f@J]ƌ- @ER��ү@@�G�u@=}�-sc�@?O?�8�@@R��Se�@6�"��K@$��u?mp@0 R�3q2@7�V�`�k@<��i'�@F�K �Y@I�Q��g�@KP4�z�`@M�M�{�@I �- @H��2P@H��D��@J>]�6g$@K?C%%@L��m_E@L���W��@Ow��+W@QB�@X\'@P/�K�o"@Q�}M2�@Q�*��Ĭ@P�՘��@Q��}u�!@Re��o@R5r�41�@P�v��[@Q����P�@R�:�)@P(��1@NW3��O�@Nk}w�@P�K[%wK@R5��v1!@R����g@'�Z�|�@!�U��@5!�����@H��"s�8@S����@Q��_1@=˻��@1K���@9���^2@H1��R�\@NF��=�@P��"V��@U_���\)@WK ���/@XV'9?8@XgR�h1@W��4��@WK�@��@W;��u@V����#�@U�BQh��@U -y�*�@V:��=�@V�n����@U�����@T���-ʛ@S�tR1I�@S �䫅�@Rlt�k�@Q�sئ�@O��DP��@M�@���-@L���p5@KRX�֠�@Jyv�7@K�`'�4@L��i�	@M
BWO�-@M�C)C�7@N��sn�Q@N��P�3C@N����vS@M�r'�+c@L������@L��d�pK@L-@�wC�@L���=�(@M�c~�$�@Oy�+.5@O�r��?L@O��AxdI@Mp?u�؍@I���u@D1�{lT@@�A?;�@<xc��ڳ@({���!e@"����@ I䮘�@*��T:�x@5��tϠ@=n�9厧@DK�S��8@Mʈ��˳@Oo&l��@OY��k�@N4|�٣@Id��!8@H�>���@I����J�@K_K��@L��PO�@L�pK�Yp@OU�y�@Q�Y&�q@Q��#F�@P���Ң�@P�PP��@Q���	�@R'99��@R���*�@R� ss�@Q2�-2�@R%�o�g�@R%��@��@O�fjW�@N��kLu@No�2f��@P��,��@RC!9J�@R����g@'�Z�|�@"�HV�@5`v�w��@HD$&��@R�Pn�e3@Q�ZE��@>�E����@06%�KR'@8O����@Aqٛ�@PU��~}W@SW�G��@U7<��5@Wd��g��@X[�=��@X;D.$�@W���E�<@W0�+��@V���]CA@Vnk��x@U�"T$� @T�Џ�@VV��nď@V�CjQ@U��u#�@T�>�W(�@S�����_@S>�����@R9�"du@Q*�4�4�@Or��FӍ@M�����+@L�l���@K���'��@J�h�Yd@K�Y���@L�\�hT�@MS!�ږ�@N>���@N�~�dp�@N�ÿH�@N¹��q�@L黸}�@My�F��@MHԲ�W@@M7R?�SC@L���U@M�)���c@Op;�.�@P�o�1@P�s��@O���X��@L����@H60(��@Ad�%��@6�&@A�h@*�5�/P�@"z�����@!�)��X@(i�,� �@6"��@:y͈�ԡ@A�*C��@P6�:��@QW��6s@PUD���@PO\�@IC��C5@H�ǫ�J@J�o�>��@K���~�@Lu��, @LWע¯@O<�	K@QyB���e@Q��L�YU@P	�6w<�@Pe}� �@Q ��(]@Q��wt6$@R"��@R�1��o�@Qj��Iha@Q���]^x@QT�)s��@O�lS��@M�m4��@Nj�ս}@P�>��X�@R(g-�@R����g@'�Z�|�@"��_�@5K!3B@H�����@R���R�@RO�%9,@@E<_`_@0Q�wI@5����@>A��j#�@K���ru�@TL�ynP�@UR�ɚ?�@Ws�.΂�@XN� ��@X.ux@W��/
ս@W����@VҜI8��@V;(B0w|@U�F4=�m@U�C��d�@V�d
`c@V�m63O�@U�H�λ!@T���.l@T=u@Socly�@RI�87��@P�fn��@OS����h@M�̈́��{@L�tX0s�@K�w����@K��7��@L�A�6��@L�h�>x@M��qb>�@Nz0*��@N����@Oc]f\��@OW�\o7�@N��-�G@N��/��@NJu�!�@M��nS~�@N�jxX�@N�%���@P'k4hG@Q�-�q�@Q����u'@P�1��@KL/.!@@]}UGث@0�{�@%	ў�Y�@ Cų@ Rp�aM@$�,�T�}@+��ha@5�}Q�O�@=���r$C@I�U뾣@Qk�� 0@PJ�a�v@P�r%��@P�b�{D@I�x��8@G�+��^=@JZ:9��@L�r5�@L�E���@L+�F�@OCu��)w@R)����@Q�VI,f@P���a=@PbmضF�@Q7X~���@Q���@R2#+�@R���u@Qwl���1@Q
ɱՉ@P�5�B�C@O�G��<@M�o>X05@N>�Uf��@P�B~��@R0��]��@R����g@'�Z�|�@"�Î(u@5S��f@G��X��I@R���.�`@Rp{�w��@AJ���
@0&D*G��@1S��4�@9^9���@IO�<�6@T�?GOkO@UA��=�r@WCJ�3�E@XU)�[@X���@W����;@W"
��@V�?2��t@V4�c@U��βa@V��&N�P@W0K@�@V�"rM��@U���H�@T��qӅ�@T6l@SPڟ�O@RF��:A�@Q����C@O÷�9�@MЧb�(�@L��w���@K�/;X�@K�&`�5#@L���ϒp@M� �@M^�w.[�@N�w��3@OS�� ��@O��%��@O���@�w@O)S�@N�툘�@N�s[�@O�C���@O��d�Fl@PEw�� @P�i����@QH�b+@Q�LA�%@J�L��@@�4@5MU� @0cF�Q0@%���R�@#qB:.�@$7���-�@'!jh(�@0��N/@6���@Cd
"g�@O	�HI7@Q���q�@M�J���=@NL����y@P����AA@Jv�ҀR�@G,��<@Ivp�%@M3�!ܕ@K��=��@L
Д1u	@O�7�+J�@R3�?��@R̔BZ�@P�˫IG�@P�S�J�@Q�80@Q�!j��@R_�aU»@Ra�H��@Q���� �@P����s@P@e��@O��*ݼ�@M�._w�@N5��e�@P̈́�\ީ@R*�Ge�@R����g@'�Z�|�@"�����@4�F�@9@G��&��l@R��F΋@R�\q'�@C;I �@1��Ii�4@/�1����@5�R-��@A�bBd�@S�XO��@UuKP�1@W������@Xap�E5@X Mވ�@W������@W ��!@V�"x�!@V&JgJ�M@V�8?&Z�@V�[���@V�����@VY�d��@U�wӔ�@UR��Y@T*9!+'@SN����@RT��`�@Q3F'�4I@P��/@NBp��@M��j��@K��0�C�@L��%d@L���/A@L� �Y{@M�600�@O��K�x@O� (�}�@PK��+�@P`y��@O��[�5@N�`�\4 @N�u�=H�@O�F��{�@PRr�)E@P�k��@Q+���(9@N��WX�(@M��4A�@F�{H��d@@+�f"�}@8XZ6��@4�Do��@-����C@)�Rs��S@(�"(=@*�`8՛?@4`�͈NC@<�|��@I������@M�.A���@N��� @G��{�c�@J�\�9@P������@KWδq@G�6��׷@Ib@D.<K@LC�
!j�@J����/�@L�eQ�@P*�j��@RY��T@Q�c#8�@QK	�u�Y@P�W�I �@P��"�@Qr����@R7��
>�@Ri;鱧@Q��
��@P�mt�/�@O�"�i@OLVk�K@M�ce�(@N2���4@P�=A���@R)Gb�@R����g@'�Z�|�@"�V�1�Q@4�|�$j@Gnn.}�@Q�j�&�@R������@Ev�(@5�
��e�@0���/�v@3=n�4@=��q� 2@O��K�+�@Un����h@Wq��q��@X^��q&�@X�"�,@W�L�uK@W)�D�u�@Vv�S%�@VPi�S�@W<�m�u@V����l�@V��G��#@V>,v��3@V���@U7�4� �@T?(�l�@Su��f�@RZ9��ï@QE��U�@Pt%5f�@NOي�@(@M+�{a�@K��v*�k@L�<{�%�@L�s3X�5@M]ڮ.L�@N�.�{�@O���R��@P&ӯ^O�@PV,Lc�<@PF���I@P?2�c@O�����@O���?7�@P^�լ�@P誼�H�@P�iyӔ�@P�$x�@PC���i�@K
ӭV�@Jl����m@E�d Rl@C;Q,�S@<E�Fj[@2�	Ђ�,@0��1;@,�>o�]@0�9�ڇ@5�w��)@DX_�\�I@Dh4�B@JH�s��s@Kk��7@Eg&��Om@IVs���@Pk#H~h�@M�ZBC�@JA3ހ;@J"A��@Ks��H@K�[VH{@M����@P}���B\@R��C>�@QaG/<��@Q&�@@Q��p�@P�7�NP�@Q�J���@RU�O���@RT����x@Qݝ%��@P��W��S@O4+a!��@N�W۶?�@M����c@N(>H�}@P�Sv��@R ��+�@R����g@'�Z�|�@"��z�@4�ڛ�|@G1��0R@Qv�58�@SO�7b�@H%�?8U@;8�r8�@2?�F5T�@22�97@;��*��@LF\�s@U{v&�a@Whq����@X^K�y�=@X#{-:�m@W�����-@W���)�	@V�3R�MH@V����@W�&V{@V�B#Bn@@V�:�Q��@Vd�4�	@VN��ռ@UEH�U@Td�w^�@S����@Rh��U@Q;�?�Hi@P&-��S�@N�4�m�-@Ml� �@L ��`@MO�l�&�@Mp��(��@M��Tn@N�H3P5@O��r���@PLշ1E�@Pw%��&@PvHer�-@P�����@PA�)�@P��+ �@P���d�@QG�����@QT�;� @P�{Uӹ�@N�I.U[�@M�����@L���O@L?�Y9�@K�8B^A-@@��	��@7%��j|�@3,㒵��@1w ���@5P�;B�@;݌��[m@Gi�N�@D����~K@I�na�
@I�a���@D�&�H@G
q�"�@O��Dt�P@N)M���i@J���b�@Kz��iG]@L�8*��@M�j|�]@N��"Ǘ�@Q���¼@RZZ-,*,@R(!Ŧ@Q��X���@R�5�|@P����c@Q���wj�@Q�J���@R�~Q �1@Q�l����@P��'�@N� ��j-@M�$��@M���$�-@N�.���@P�q�&�@R��'��@R����g@'�Z�|�@"����G@4o.�Pi@F�G Gv@P���� @S�L>r<@Kg�h��:@A���z�@5����8�@1�d��E0@:��А��@F�	�{�@U)R49[@WW�����@XM�Fw�{@X%��q�@W͌��@W�@�"@W]��@WQ�Qjw�@WF�(�A5@V����@V���֨@Vy�D��/@U����o�@UOlg\@T�`[ZZC@S�D���@R�=y�E@QZOu��@P� ���@Oz��ð@Md`*���@L�����@M`���@Myɪ�Q-@Nt	%�H@O]����p@P(��S��@P�=bz�_@P��<BH@P��*�t�@P�dT[@P�r�:�H@P�*4�@P��w�S@Q�n�OV@Q�D���A@Q��~1�@P�o��
�@N��̗��@K�dw1�@J����Bm@L�~y�,@H�9}�k�@; ;��T@4�OK	@4I>霁�@:g��<@EBY;�l@B1	�)�@E�R�5�@J'԰N�@J���l�@D@fR���@E`鷘��@M��(��@O��@K�O��S�@J��Q�@O&v�4W@P^$��@P]*̺�@Q�Z}��@R3��x�G@RZ�˥@R?���8;@RE�Ze�@Qi����3@QM�D5V�@Q�JM�Dq@R�x��@Q����2�@PY��h@N���؛@M�cR�X�@M�����@N!��"�@P�rF��@R�uZ}@R����g@'�Z�|�@"�h���@4�!��@FP�e�h@Pn�"ܫm@T7�d��@NI�MA�@D�&?��@:x�[��d@1vy4��@9���@C{�t'*g@T���)8�@W@��#GX@X=C;SL@Xi�R� @W�l}ze�@W�
���@W��%��@W~X*~�@WGDZdH�@W�[��@V��0_�@VVRo�Kl@U�S�i��@U'.'R�@T��U�:�@S��o�@R�aҐh�@Q��a��@P���y$@OD��W��@Mv0��|�@M:$UV�k@My�yٓ-@M��/>�@NG��Ĳ@O���aŅ@P�I�P@P�5�>1@P�V@Q9:.��@QO���Y@Q1���@Q���B@Q�@_ePz@R��XB1@R`�Y	@R"�ͯS�@QF נc@O8O1�*@K�J:
a�@IA׭�@J/�G�e@M�3�)�=@F�c���}@9��_k	0@7�O�`!M@@��S ��@F}�s0��@D���S�@GP%o�@K���o �@L;�9���@GZ��p\@Dz���hH@Je�_��@M�Ʈ��@IC��@Lr.�K[X@P��<`�W@Q5Q�ei@Q��;�'@RY�]}@S- #8�K@R����@Sh���_@R9u/$ϧ@Q\I,`�@Qj\U��@Q��`P�@R�flq9�@R#��@Pk���@Ncܑ_V�@Mn�ܴ��@M�tW��@N!G%���@P��`���@R�>?��@R����g@'�Z�|�@"sHz��@3�3��b_@Ey �OA�@O�͟cD�@S�8��7@P���C#@HwJ�:�2@@R�S%��@2t;���@7
�ٸ	@@Yz��@S�"�-�@W2�|:8M@X6�:�`@XR/�~�@W����V�@W�����#@WO-�},�@W>�:B�@W(�ʟ�@Wn(
5�@V��U�@V=�5���@Uǒ���@U?"�F�@T��>3_@Sߥ-�@R�����@Q����@P���&��@O\@�JpT@M��,[T@M�q:`H�@M���AT@M�	���@N���5�%@P�C���@P�G����@QI��r�@Q)�(�n<@Q�$�鴁@Qv��t=�@Qs��l?u@Qj����@Q��:��@R���:wi@R�go��@Rp]���@Q����@P�*�Q�@L�֧��@H��m�@H����"/@K�w���@N����ظ@D���D,@B�7Uc/@Gf�e'0@JV�f�uu@GGZ�l7k@I0r�Z�@L�~&��@L��?B�@H��Db��@EuFS�r[@E�4�|�@H�,@@H��=�g@L��U-!@QM���,C@R_��N�@R՞���=@SU���@T���@R�_T*r�@T��L�@R������@R	O^VT@P����@Q�`���`@R�&PM��@RlQE@Pdj�9@N=���@MmiUj�g@M�u��*=@N�_�@P��g�H@R*S�@R����g@'�Z�|�@"�W�@34ѷ�@D�[�f@N�F"���@S�N��@Qx<MYX@KN�c�Q@C���@3��}��@50�9�6@?�ɑR�@SU�;�;�@W9�-_�@X\���$�@X;�<��)@W���@WX����@W_���@W	�.���@W�����@V�
�Bl�@V�8�3�@VM�M^�@UӀ���@Ud���`@T��磃�@S�Q��@R�����@Q�K��or@Q��݅@O��+���@Nn��X��@N��8@M�(�O�@N%:�EDd@N�*Z\]@P=����@P����@QA���@Qn�!<!@Q�>����@Q���?�@Q�*)��z@Q�3��;�@R;ɋ��#@S!��-�@S=��L�@R֔�`�@Q�;U�@P_�8�h@L�*�gE@It�;��@H��&V�@@J��F*[c@M���t�@J|7T<�@I���Y�;@L)�i�@N��̩L@J�M=��@Ih3a�3@N���^�@M��w�@G�?j2]X@D������@B��ԭ8�@G��,#r�@H��?�@O�
y��@Pr$&@R*���&i@Rt���\;@R���ר@T?�(�Ǟ@S�����@T �jp��@S �P~��@RW��X{@Q=x�]o@QǮ«@Rq�c"�@R@m�o\@PX�.sZ�@NQr����@N���2L@Nj����@N��6�@P�����@Ri��C�@R����g@'�Z�|�@#Kq\�eA@2�Trf�@C�*D�87@Ml]>�@Sb�5�@R1���(R@M�!H�`�@FD7�*��@5�[�@@3�E@0�@?��F>S@RO�.ڮ@V�b���@XMmY��@X#�L\8@W����qY@W*�\�o+@V���i�@V�i�(/�@V���-@V� ���(@Vu���.�@V?~L�i@U�!{� (@U|��+��@Tά#��@T$�Ɖ�@S,Ehr@Q���Ǯ�@Q�¬�@P(O�;e@N�����@NPP�2�H@M�iIT@NO�2�@O�,Z"@PJ��?K@P�|�B�@Q�7�8��@Q�%��^@Q��7U��@Rx��M@Q��F�W@R�4}��@R�hz˦�@S{��ǋ@T �h8?�@S���~@RQ��u�@P�\"��@Mh����@J =���m@IL����@J$�p9p@JT3�ʉ8@I��Qe	/@L�̷��@M�ӀǠE@P���NV9@O�m���@N��~��@N�8z�!�@LU�� �@DG7�o��@C%��@B%<{N�@F=�=$�{@Ju���:�@K���A@Mb٦��t@Q6e�'@Qu�H��@SeOn�k�@T ��x�@T�u���@T+�Al�p@SkM�@��@Q���4�@QU�gL��@Q�'��	@R#N�/:@R8%L47�@P�Z� �s@N;�!�Q@N�@m!İ@Nm�t�Kk@N��?H�@P��S��@Q��)��@R����g@'�Z�|�@#ݖ��W@2��8*�@B�S��c6@L`-� T�@Sf�!5�6@R�V�\�@P$���t�@H���B[�@9R��$��@3_5i��@?�硟ɘ@Rp�id��@VTW�T��@XM3�@X�SZ@W��x��_@W8�R�@V�F��(�@V�����@V��=�k�@Vdy�@V6\�`�@Vd�x�@Vq��ku@U�����Y@T� :w�@T'G����@SIi��z@R:^d!�@Qviy1+@P~����@OO��(��@NChOEf�@N&תd�@N½��@O7���[@P����@P��� �@Qt���-@Q���`"@RLt	~':@R]<���I@RR��8��@R�8�'@Sg�cmj@Tdn Af@T��q-U�@T <8�ĕ@R��9ڷ�@Q�^J2.3@O�E�&bg@KV���l@HF��9p@G\�l)��@DE��[@C��V�0�@Hx9�,A�@O��<3@T�U��^K@T$I�p.p@Q�V\@O�ϵ�,G@I{��g�@A���Fl�@DÒ��bX@D
�E-��@F�� ��@I����@H�ҝ���@K�13�l�@Q"3���@S��Wꢙ@SFd=0�@T*�w�
�@T��S��@T>�b�]�@S�3�h+@Q�u-&[@Q�xMl�@Q!>+r�4@Q�.=�,�@R6�_�@QWQS��@NL\7�@N�	�G��@N6C���@N�۩�@P�)��,4@R���ޓ@R����g@'�Z�|�@#���v}@2�fl��@A��i�@q@K6a!��@R��u@R�N)�r@P�O���@I"��2:u@9��j�4�@3��u�@?>ց��K@Q� ��H3@V�rq@@X ��%`k@X��@W�}���@WS�귧@V�����@VSMD��@V`ў���@V02#Mˣ@U�.���@V>uW��]@V6߉:�@U��1���@T���p�@TP�� �)@S�q�b�+@R�g\�k5@Qç<�@P������@Ol���Y@N2���;@M��|Z�@M�!W��l@O��Hk�@O����H@P�,��#@Q[B���@Q�(� �@Rb���@R�.���O@R����^P@S,d�ʿ)@TM�e�@T��ō-�@T�g���@TpW��@S�d��@Rih��<�@Q<�&�S@L�uu�}0@G�:��p@F\䂹�@C#7���6@D{�I��@H����@O�Y�˭�@S�$�w@T�$�@Qwt�+2�@P�b��E�@I/���~P@I��`�[G@G��R��@E����B@C+�ԲIh@I���t@L����W@PC�k��@R��}�M�@T'���@S?ߍ{/@Tj�+�@T��8��m@T��g��@S�C棏@R)
����@Qg�MC��@Q$[q��[@Q����@RL�#,ʹ@P�]�G��@N�R��H�@P\q�E@N�Fe�I@N	9ˤ0[@P�Ϲ%>�@RC�,@R����g@'�Z�|�@#67RL@1{���~@@�_�X��@I�<�-�@R����T@Rh���ˮ@PA���QT@H�t�M��@9B/>ն@38�S�T�@@KC�w��@Q'�Z��\@U|7w��@W��~�@X��I�@W�kGfD=@WM�|��@V��e�C@Vz�qF�`@VJb*�c@V	XVa�@U��"	}@V}wJ��@V(	�3�@Ujϫf�@U�%O@Tf��

3@S��:r��@R���ݔ�@Q�`N�`�@P����@O��N�ߠ@NK�)��@M�r�i@{@N48��@NX�m�4]@O��?�2@PQ9��:�@Q+Ug�0@QښX1��@RQ}�a��@R�WXM@SP�k�Y�@T =o�\@T4EX�fc@S���I@U,W���@S��6!�.@Q�T��6�@P�A&��u@N ����/@L���+@K^�|�M@Hvvs�@Ey�I���@F�Um@J�!���M@Q��^y@T�ͽz��@Q2��!�@Q�\B�o@P��G\�@K�x5�P�@MZ�uJ_@HYZ��@D�Ѝ0�@C��5�$@H���j�@P��#��@QXѶ�Н@S!� �G@TNxiz��@S���/@S襉��@T�ڟ� @T#���ą@S�l��7�@R%�@�E�@Q%�jˆ�@Q
Qp̞�@Q:�,T`D@RF�\��@P��� Y@O`���]�@P�����@Mt�ɝu�@N
�نM�@P��h��f@Q�L���@R����g@'�Z�|�@#lOs��@0���]@?g�IE��@H�^��@Rο7��@Q�냴TO@O�@�hP@G���i��@7�1dÉ�@2�����@@�$uV7�@P�����@U$	Oc��@W���Q2@X��h��@W��e�]@W8r�#�@V���d7@V�O�z��@V?Ǵ��]@V��L��@VdSo�p@V��m%Bw@V�~H�@Uh�i�P@T��>��b@T{h
i:H@S�v`ϫ{@R���l3�@Q�����@QoCE@O֟U�@N��GU�@N>#Z��@Nu�L�@N[��1��@O��C��@P9�&�}@P횭Vhd@Q������@R`I"��I@SK<�{�@S�q̩.x@S��:�@T�4u)~�@U� %�my@Sx����@R<vy�U�@Q��:\�I@P�5売@Pa��@Q/MRp@PM���@K �/l]@H9S���@G���;a�@KyUӘ�@M��h@PAQB�;�@P��P�b@Q��zh�@P���8K@KG���5�@M?GG�@DͲ��)@C�Sɋ�@E�X6��`@Id:&z�1@Pw���ܻ@Pe(Q34�@R��&N�@R��k�X@S��]�L�@S�-��36@Tsv�@��@Sԝ�R]�@Ss��	U�@R
{{�i�@Q��{��@P��Zy2�@Q%�_q@R;���]@P�82�O@P4��Վ@PL�z��X@MŇ��@N��4D@P�W9���@Q�
�&�@R����g@'�Z�|�@#x��Mv@0+v���@<�[,3@F�տ�@Q~n*���@Q�\� �@O}CӖ�@F7��.�@6����|�@2��
T�N@>Q-��@M�}t��@U]�m�s}@Xj>��@X	�\G��@W����Qw@W�g���@V|,@���@V�O繛@V9.�a�@U��� �o@V-��иE@V���sS@U���֖�@UW.\���@T�@T�Ol�Ζ@S�_}��@R�{j6I@Q��7�0@Q���L@P
J#�(@O5a����@Nm���΍@M�XY�7@N�z�Y@N��� �C@O���l�@P��ND�@Q[x�=sA@R��=�9@S�WY�E@SP
1dQ@U���*js@V��n�ؘ@TI�o��@T�����t@Q��&�@P�%�{�
@Q���~�@RH�~_c�@S2��~�@P�g�Xto@O�V���@@M�| (��@L'u�@I%f��@G��d�I@K�2-�Gq@R��v:Q@Q�����@O��JK:�@L޴��e�@K�tԚ^$@D�{���@C:��@F��s*D`@L��aA2e@Mh���@P+^%e2�@R�^�sm�@Q��)�a�@SI�Z�G@S�T"�g�@Tu'6Qi�@S��� �@S{F,Y�@Q�_��E�@Q���%%�@PL�ո@Q0�Vc�@Q��Z�n�@Q'
ȡ�@P��@g@O�a���@L�hgN� @M�@�n�5@Pt5��t�@Q�A#zS@R����g@'�Z�|�@#Sh&0�@/�-���@:�˭ �|@E�Ӭ��G@P��jw @P��Z*
@@N�m���@D�R��҆@6��}&��@3"�!GC�@?+����@L�a"@Uҥ~o�@X2$Z���@Xt����@W�^�s�-@W6*w��@V��5!��@Vz�ڧ�#@V,/�fV�@V"�(,@V37Ήj�@Vb cU��@Uɉx�m@Uk��l@T�uQz�@ThJ�8�@S���^G�@R��:��f@Q��$��@P�����)@P�\�%@N�w}S�@M��~��1@MI�TCU@M(X���@M��Y�/K@N����T@PFӿ�/@QM\m#@R�b	{@SJ���[�@U��m@U�["�I�@S��_���@R�#���@Q��5��@PP��6�l@Ox���@Q���޸@Tg�X_s�@T���u@R���.˔@QK0,%�@P�y��G�@R~��ی@K��[AL@KZ�l+�-@Q�1�Ϻ�@S��?�@SS�S�Od@Pػfyn�@JV܈��W@GRz�o7@F�sQ�*@Dz��� �@G3��Ne!@J;�zU�X@KY�߇��@P��q�	�@P�k�h@Re-V)/@S���T~@T|]�J�%@Tmw�W@S`�N���@Rj�nT	@Q~�A�Q-@Q~�,��@POr�rP�@Q�:�@Q�Y>��t@Qp�)�@Q$�p�@N���>Bw@L{`�t�)@M���Q��@Pn˥�/@R����@R����g@'�Z�|�@"���1��@.F%]�ye@8��$7~X@C�5]�_@O?�e�e6@P�B��B�@L��d=�@Cy�����@5ø�@2�*y��N@AVY��@O79�2��@V�X8�i@X1!�>�@XwKV��@W��\%�t@Wf����@V���mp4@VT�qE@V�eO�K@V#��"H�@V��넹�@VE�~ܮ�@U�g�d��@U��T�pK@UX�.�E@Tv#W���@S�F%Йc@R��Ϧ��@QҺ��	@P��D�B�@O���8�@M����@L�娡�@Kč�-��@L%^@L����@N"C��@O�ԍ�bh@Q"8�0]�@RZ{��WH@S[��l @TBb< ��@SCC-)�@Q�����@P&#u`�{@P!����@O�7�Q\�@N�;���@S��H�(@Tb �͛@SE�V@�@Rm'���w@R�c����@Tf�woVe@Uˉ��͟@R4A���@R��h�}@T�vw��@TW�`��@S6�%���@Ps�Mg!@K�?�1^�@H�O�&@F�dx Y	@FZ��1@GBCƶc�@H�����@Kq��p��@M����g@P�wQ��K@S�ݍ�@Td�l�_�@T� �L�b@Tc�Er�@SE�go@R��1tT)@Q-߂�(@Q�@圾�@PJ�����@P̓���0@Q�7D^�@P�l��7@P�i5��k@M0����c@L{R	�/3@M��L @�@Pg2���@Q�3ճ�_@R����g@'�Z�|�@"�W��h�@,Ϸ�[@7O�s]@AUa�b�&@M+B*G�@Oi<U��@K:N��P@C#�f�	@4��R���@2�Oix�!@@�2 j-�@R��`�@V�<#��@X/"�!r�@X�%^��@W��K��=@WWBR�%�@V��O��@@VN>�|	�@V&�%�@V.BY��@V��~��@V)F�S@U���ڔ�@U�����@U蓼K�@T|
�UVq@S2"2N�i@R)Be��@P�`uM@�@Of�g���@M��0(=i@K���y�@JB&�\U@J"���DD@J�xD8_�@K���3��@L�$ju+@N�^i���@P�2���*@R�Y��y�@R�u��@RV;.��@Q����#@P�'�e�@P��\��m@P]��@N|O���[@NX�uȋ@LĆ�C�@P�� ��@P��^.5@O؆�R_@P�t�T@RX<q�l�@U��f��S@U�1I9�@U8(>��@U/�3u�@T��%G�@R�mc��@PJ=�3Z3@KƱ�<�@H�!���@F�񚍩X@F��V��@FL�\vr�@HT��ł@O�u��@Q�v�љ>@P�	���@Qʓ0@T"�v%��@T���P�@T�fA���@S+����@R�:؀W@Qi��@Q"C�Xa@P�э�ʅ@P������@Qq��LQ]@O�#�7�@Ot��)@L��;��@L�����(@M�PX(I�@PU�Ԭ�5@Q�KRJ-@R����g@'�Z�|�@"7�zB��@+�I77��@4�kF_6@>ˡ4��@M���ϐ@M�8�Q/@Je^��ch@C
9��@3���p��@3�=��S�@A55aw-@S��ic,@W	��v�@X9�q��@Xj��>�@W�W��@@W5>��\;@V�����@VL&xAk�@VJ_��A@V[=��	@VZ�R�-'@U�)W��D@U�S�i+T@UT6[+@T������@T5����W@R�ș�}j@Q�;��!@O�<t�t�@L��JW}p@Jb�o�w�@Hxlx��@F����� @GI�t"i@HB�eN�@J��d�@K���U3I@M�fǶ��@Ps�h�L@RI{{M��@Q)L���P@R)U��<�@R�#3]��@T��o�9@R��R��@Q3]c�a�@P�:���'@P��\T�@O��X\9@Lt����@K:Y���@K���&-+@P^�*�5@Q�4��7�@U��=Wf�@V-��QO@Us�f0�@T�^��@S���]c�@Q�H�j?�@O���=x@K>�Q��@GY�+��@F���rU�@G��[V��@F�n���4@He�@�S@M:���(�@R�ס.S@Q�i���@Qh0�	D�@R෺�g@Tf��B�@T�pm��{@R��.	#�@R.�+A�I@P��/h�?@P�����@P?m����@Q;����@Q4A�V�@O�f�K@N$�5T��@LW}!�
k@L�����@M��`dj8@PP��@Q��e���@R����g@'�Z�|�@"UOȫ��@)��SiM+@2ŘI��i@;��r�$�@L+�0�@@Ld��l��@JAT����@CpL���@2��^��Z@5Z9s�/�@B�$gp�@P7�/Z�@W<����@XO�lQ�@X�7H��@W��#U�@WIK	(_u@V�5�t��@V7U�`R@VC�~�Ws@V�hn�@V��N`�@V}'s�<@UҴ��n@U4���X@T�T��S*@S�~:F�@Qƞ�(l�@O�"�8ST@L�@�5/�@I�����@E��WF�@C��V0@B�&���@C�C�@E�[�[�@G����1@I߮���@LQ!Z��{@Ov���@R-<^詘@P�_ZuI�@R�f�^�E@Uf�B;�H@U�����@T�����g@Q��g ��@Q�0&/�@Py�\�l@N�t�=C@M/|��MU@Kv:���@K��>��@NL��U�@P��u^�@U\����'@V"��b�@U+pV�pg@T<�ኳ�@S#v}��@Q-�hHh�@O@�4��(@KaE���[@H�A�~�0@G�B��k�@I�j5�Z�@HBR��&/@H��c8�{@KRT3�ek@Q7���@QP��]�@R����
@S�f��x@TS����@Tv�-[�-@RX�O���@Qh�W���@Pq4�HKz@P�菨ұ@P^��I[+@Qs%e ��@QH���c�@P���@M�����P@LH�����@L��M@M����K@P^��@R���Rq@R����g@'�Z�|�@"T�ӊ�f@(�=	=�@1L�x#@8��4*�@IP���h@K}R���@J
*_
��@CC��uO@2�\�@6:�Db	�@E`�/m%@Q?�t�@W:�- �e@XOE���@X����@W����m@W���@W@�b?M@V\�X�@Vk�A�d�@V��i�!�@V��-�r[@Vqca�(@U�Q�-~�@U9��:k@TlN�}!�@S3�J�}@PZ�\dD@@K�Z��@F�M��H5@B-�3~Q7@;���u8�@9gT��q�@;�wI�0{@@��"�#@CrJ7�j@E��ӛ�L@HT�tS@K(���I�@M��U�M@O���T@PnX��,/@R0a(�I3@U�=��HU@U}jhO<@U�yFM@S T��@Qr�0�@P?�i��@N�U��˸@La#Q+@K0��[ޓ@Js��P�@L�
?�'@P�l+-#-@T@�-�@U�V��}|@T��e4@T/�5�I1@R� PW��@Qh�K��@P%��|��@Mp*SY�@K�����@H�	&��@J���#@IH��h@I�p5o��@J���C�@M�L!]=`@Q�d�@R�G��!@So/�" f@S�ڌ&.@T�A7�c@R��l��d@Q�h�|D�@Q3��j4@Po���<�@PYie���@Ql���@P�Q��$@O�(ݜ��@MUdQ��#@LJ4��@L��ۆ��@M�y��6I@PgP�8�@Q��mz��@R����g@'�Z�|�@"1T�ڌ�@'�u�@0~�e�@5����@F��7��@JA<	&wx@I��XX��@CV=�r@1�T�V2@6���%�@E����q@Tb����@W,�Dv��@XOo4؃�@X09f��@W��.S3@Wtp֜��@Wu��jK@V� ���@V���ɀ�@V���X.A@Vy!y�-@V"��O�@U� ��@U/�o@V�@T8e|U��@R_ �oC@LF�|�@E��r��@B ��G�@;~�b]P@8��V��@@:�E��K@<Z�'{@<����W�@At�Bz=@D!�p�7�@F��m�;@J�=қh@L�]���@N�^R�@P�H'2V�@R�d-q`Y@Tҹ�2m�@U��`�@s@UB����I@T�gz�g�@P;x�m�@N�GaI-@Nx��1�@L)�%�'@JܔAh��@Ip�n�@J���ǩ@PQ ��@R�^��@T��\��;@T��b�e@S�ͼ)a�@RSh�_ U@P�'����@OY�S��@No����@M޷��m@J5�RLNX@K[�Ow4p@J�k��@J���?��@J����]@K�R�lS�@Ph���K@R�Ncۮ?@S\;q�*�@S�I��$9@T����@S!��5�'@R�Ҳe��@Q����@P4�H��`@O�(��p@QQ�R��
@P�ڞFv�@N*�B���@ML��� @Lh���P@L�-���m@M�=kf�0@Pc  �w@RTĕH�@R����g@'�Z�|�@"P���k@%�g��/�@.��O��@3���w@D� M���@H�����@I�Ɠ�@C�f�V7�@1�]}�@6���%S@E��8��@U�ӵ|�@W�١��3@XI�%9��@X _�K@W�s�ǧ@W3w�-��@WT$�)�@V��ܫ�@V���4�@V��^ӳ@V_�L�8d@V!P�@U��Э��@T�u0d��@S�]��@R?����@L�����@EYt��#@@Ձo�6�@<���.��@;HGW�=�@=�P�Y�@>6��C�@:�����@@����@B��}�E@E��L@C@I�Y�&�@J��k�K�@M�2fb��@P�(�e8_@R�:� e@S���N�@T]��=k@THo���,@S�f��\@Qį���@O������@K�NJٸ@J�u�0�@@I(359x�@G����@G֩`:b�@N$o��@R�(v�pq@ST����@SΦ��v�@Sz�ja\�@Q�?�e�@Pa�Z�@N|w���@L�պ5Ex@K�)��@J0���@JXT�ϐ@K��,4@KJ���c@J�ٺ#S@L����t@Q������@Rjsky�]@Rڞ=y||@T`ϳ�@T`	�%!@S0�vs܅@Q�'>A�@P�1ġ��@P7�^��@N��'�@P�??\��@PM��ٌ@N4����@MWT3�5@L��V�;@L�`�-�@M��e�M@Pm�ƻ4�@R� w�@R����g@'�Z�|�@"&}l֚N@%V �N@,6�#1pC@13�o�ש@C�e�|�b@F�R�Dzd@IOCڎ�@C�*W�@1��50<�@6��9 0g@F�gJ��@U�J��@X�`g�_@X9���wX@W�`~]O@W��Fj��@W*t.�@W3��\M@V��+��@V�c�w{@V�v��L=@VvlB��k@V�G)O @Uz�eA�@TƎAb�@S��F#��@R�(3�d@L�c(�;@FL
�@A�y4ys�@@�n��@?�%��>�@?��{-��@=�3ЇK@<%{ܸ��@<�CKY�E@B��0�)@E�>�@HJ�Ph]@J��9S@Ma��V�@QLE{�v�@S`m �T�@T! �eK�@S�|+<M�@R����@R�|i�@Q,�)�>�@Q�a	P�@Ny���L�@G�/E.�@G����ݍ@HX5��s@E��ߔ�@L���a'@Q@����e@R�.���@S�#Ixͯ@R�k�Mf@Qu����@Po�T�#c@N�ֳ.�@NO��	@J�@W$@Idd��@H�X�I@II�Ԧ%@LN�;&_@O�MP���@M[��j�@RQ��Oe@R�s�A��@R���S%@S�툌��@Tv6�8�@RMR[�+@Q�~�@Q*�0΍@PSzgM�@N���`�@P��\�*@OˎN�@N=�s���@Mx����@L�����@L��qLŽ@M�m^��`@Pt�D�@R0&�_@R����g@'�Z�|�@""��5��@$����5N@*S�CY�@.��#�U@@�Z1s@D��
^@H�S(Y|�@C���Jt�@2V�BΙ}@69mG*-�@C�\A�"�@T��N@X-��3i�@X.�b`�x@W�ْOn]@W~Fv�ES@W��L,�@W��@V�QroL@V�����@V�|.&tM@V�1��E�@U� ��@UTlf_w@T��8�>1@S�VM��@Q�z+.s�@N+�B�UH@F���n�@B��Ҿ�A@@��C܉@@QV�m�@= ���@<	���@>���8�s@>><!y�s@?�fn5@D8����@HB�f[U@H�a��$@M.t��#)@Q����@T'{_'@Tʚ���@Rٝh��@Q�0�_�A@Q�z!9@Q��µ:q@P��ގ��@NS.RXd@L)!��!@M��<^,@N���yUC@L�=,���@L�O��)@Q��Ô�e@T����@Tw��6@S,c�n0X@R�ei:�@O�ތ�rs@MC�"���@M�:�@�@K����!�@J���� @J?.��@H���O@J eN-E @P7��d�@Ro-_(87@SM^�P@Rk>
f@R�;�<T�@S�h�a@T�![� @Q���z�q@N�9K���@M9l��@PZ rB�@N�\'�M@P���0@O�1��@NeU�VeI@M�0V�@L���@L��/�T@MݡD$��@P�l���@Q��wnb;@R����g@'�Z�|�@"/�J�	@#ѳ�G@)9s"���@*�V?܋L@;�d�`MJ@C�$2g8�@H$=�hS�@CbE.�fc@3b�e2��@5A��1V@B
�Zvs@T���@X-�$�@X0�eS{@W�jM�t@Wm��Ma1@W�c���@V��'�@@V�l�v�@V��[]�@V�h�x��@V���m@V '}3Y@U|�s	�@T��$�@S�Jo�l�@RmRu�!�@O$7���@IY\�X:M@E\
���@A�:[S@@���f@;LUJ�q	@9�T$Ƨ8@;逷HL�@@�I�w@@j�EF�D@A��06��@GF�n�@J�t��k@K���3uw@Q�����A@S��(HK@SMfA�dT@R��[jw@Qc:�}�!@Ql���Cc@Rg_H�zN@Q��*�l5@P�μY��@M�s�Z�A@Ly%K@Jj-'�t�@J$�
�re@KJQL�Ƙ@O��\�^o@SԿ�)�@T�p-�*�@S��멢)@R	�@Oģ�%@O��~K@MԣH�a�@L���T@L!�����@LeT�k�@K�Y�w@L�ͭ%QK@L�E\)e@P���k�n@R���Z��@Q�O���t@R��Ye�P@Sݼ�i0@T�(���@Q����(@Lȝ��߳@M��yQ�K@O��¥�@N�*�ހ�@QU%|V�5@P{8)��@Np�4�H@M��"�E@M��.P@L���(��@N$"c��@P|�Y�߯@Q�1���@R����g@'�Z�|�@#�&wH@#Q3`�@'�WE�'�@(��h)m@=�K��.�@A�UUC@FYW���@BƁ���@4���x�d@4y���@B?A�u@Rʎ��ui@X"�f�c%@X5�0�@W�s����@W^��s�@V�vV�@V����u@V�
<q4@V��eT��@V�a8�@V~��6�@V�C��@U��#F@T���@T�.��@R���1�'@PM$�!@�@I�V<���@E:��oc@@��	�X�@>�j*/ќ@:��'E�@8!��)ȝ@;@ A@@�ɖ��@B�w�#��@B����@FL��x|@L��w=�@N�z:w� @R�}��\@R�
�N9�@R�&��P�@Ro���� @Qc���k�@Q�zN�;@R��&'@SnI�]�@Qp#J:�@PQ����@L'@�~U@I]�@H�Q�]�=@J���)��@Nk�O$@R's����@T^�8��@TO�2�T�@Rt��P��@P����](@M�X%h�P@LS��@K��؉ge@M,��r�Q@O�4�Ct@O,�Lf�@M�G��S @L	����@OV��Ƒ@P�1PX@Q�i�>B�@Q�&��c�@S�ϸQ@T�c�@Q"߫��#@O��wM@N��Xp�@M{�>o�@N��T,o}@Qc���M@P^�0���@NO-\��@M���
�@M�m�S�@M��A'@@N'� C3P@P�((�@Q���m�@R����g@'�Z�|�@"�/�w�F@#'L|S@&��%�M�@'~u��@4�_��c@>vd2H�R@C1�5$v@A�s1���@4<Z+苦@3<��"*@C�?
|d@T��&s%k@X|�yX�@X:|���X@W����k@W7���@V������@V�5��:�@V������@V�t��@V�˿{��@VW�T�X�@V�{��a@U�*�I¨@T��A��@T�Wd-@R�����@P�އe@JͦQ�/)@C�����@@]t�z��@>���r�@9�L�&�@8,��Q@;�I�V�m@>ǂ���@A�� #@BC"�0O�@Gz~�zi@L�H7�6\@P���S@Rk3��@S���7@R�����@R%��LP8@R&�oO@Q�I	n�p@RFgJa.H@R(�	*H@Q>G��
�@Ow�*Ƌ@K�a�qܡ@I4g�1�g@H��X1-S@J����}@M�J�	@[@QF��.r@SG��ٯ�@Tn���p	@S�z�-��@Q��O���@Nyแ/�@KF��:�@L�r``k%@N>~�X��@Q�O-���@QP�P�4@P%�R�@P�&Wo�$@Mى��nY@O�T^���@P���(�@R#s�̐@S|oT �@S߉O�h�@P�Ovh�@O�ȅ�X@M�M��|�@M�C/;@N�����@QԳ[��@P=�ͥ@N/����@Mb��3�0@M*��;��@M8R��8�@NO-Z�@P{�l�@Q�:@�@R����g@'�Z�|�@#ʱލ��@#��g+��@%}�-7j@$�]rɖt@0ԛ�5��@9�fo��@?�hͪ�@> U��l�@1��ӯ�@2�	,��*@B���Z�@R�&���[@W�,�� h@X:���@W�MŸ�@W�ݯ@V�<#���@V���b�@V�\�4�@V�w����@V�h��@V3C?�@U�5p�s@Us+�(O$@T�m�q��@S�^��qI@R�aT�:=@P�|��!@K�q�@B��k��@?Y�wm�m@=so�CO�@9��d!(@8��AY@:9t!{ѐ@>A=enm@B����@D��|��@G"�*DE@Np#φj(@QR�<��u@R�)���1@T)��Qz@S��y� @R���TL@Rp�j��@Q�ԇ5��@Q�5�sg@Q�j�!�'@Q+i6g	@O$Ո�@K��N�u@IN�t��@H��bCQ@Jo��	�@M:u��@P�Sp_�@R�Z��78@S������@T&�c2.@Qx�M���@P'$@Oo�{�@P��I�}@O])I�tl@PD����f@Q|�G��@Q�އ�k@Q;#~=_�@P.��IK@P����@P����i@R�;�Q/�@S?޶)�M@Se,{9@P�xqH��@OH�q=@N|rOW��@L���Ԝ]@N�f��p@Pz�K��x@O����@N>�3�0�@MH�m�7%@ME?A�\@M>��/�#@N\\~�E�@Pt@eQ
�@Q�r�D�@R����g@'�Z�|�@#�V+[��@$ED���@%G��'��@#�?H��@/�`���@5n|�K@;�Fp�2@:S5B��H@0h���S@1����'H@A�h@�@P���)@W���TՔ@X0^���@W���M�@W��^�@V��`b9@V�/M0@V��$���@V��� p+@V�����H@V%�<q%�@U�Mt�� @ULޜ0�H@T�E��@S��P8�@RUx�`@P����@I�����@@�%�tp%@<���y��@;m�� �@:,�He��@8�a���H@: `1P1@>��.��@B�}�S%@GT�)&�@HQ^���@OҬ:���@Rt���ׁ@SW�̫R�@TJ���d�@Sx��ׁ#@S4�5�@R����*�@R ���u@R�>z�@Q̿֍��@P�OY��@N�ޗ$j�@L1S�S@I�n��A@H�;�*0@Iƌ���@L�K<�Rc@O�3���@Q��V��@S"�lb#�@S��G\�(@Q�t%��@PW���?�@Q��o@P��dH��@P(we=Q@O�v'g@P��he�@P;G�5u@O}�]%�o@R�pGƠ	@R�FG�PI@Rʻk-q�@R�r�p�P@S�Y��]@RhU���C@Q�GB��@O>��%@N�$g���@Mk�M@O���ɱ@O8В#|�@OK}����@N}7�� @MY��*��@MO��љX@MJ��RI4@NO̙��d@Pf61�@Q�r���T@R����g@'�Z�|�@#Ƿz�"@#�x(�F@$�̫ܶ3@#N�����@*��\��@1LiN��@7���Ȏ@6���=�"@*��1��@0B }0wT@?P�ޮeK@Qq����@Wv���@X%m��@W��̘qh@W2+w\@V�)d2�@V��I�M�@Vk̎���@VH
�m4G@V]/IU(	@V73	s�@U��nJ�@U5/o͠(@T��h�C@Syi�ѸM@Q��3�8/@L��|�#@E��Ta
�@>@54p�@:D�){@7Z$<=@7ӶR�@7DM��h!@9��K�@?{?�'@C�>�ѹ@I��|��'@K�`.
|�@P�6�+Dm@R$�qE4�@T��G@T���CTX@T��6�@S�9��_w@R�^��t@Rb�E���@RbVpxKt@Q�>��s�@Q%��@N�>�e@L(���D�@J%���@H��2�I�@II{Q-�@L&�w"+@O8I}w�@Qbs2hh�@R�k�{{4@S9+���+@Rc � 0@P'����6@Qwr�w(5@Q*�^'�q@PT9L�Ǭ@Od?\m@Q�4�<,@P�{�:Z@M��r�@S �d^O@S���GHD@SW��Ď�@S@vZ�m@S�F�4��@Rt�g�@P�Ӑ=�u@M���� S@M���m{@N���T�@M���=Q�@N���@O�����@N㾐$7X@Mb�PYo�@MV�=�k�@MV3d@N�e�vP@P^�����@R����@R����g@'�Z�|�@$�;����@$`$$��@$TRZ9i@"�����$@&���Iz
@.zJ�(-�@4�c�sh@0Kx�@%�%��@-���|��@<�����@O�����5@We��@X��w@W���O��@WW�@V�AO"�@Vh����+@VX	n�|@V&�-%m@VU.s)�|@V�2,��@U��q-�<@U�p^k@T���c�@SAR��]`@P��-<��@J�X��m@D�E���@;t��&@8����@3���~*@2c�u�}y@70L���{@;8[`�4�@@���JI�@D�Ɗb�y@J��l���@Pk5N �@Q�
qZ��@R����IK@Tq�����@T�V?���@Tfɬg3@TK�P~�p@S*W���@R������@Rȅ��C@Rd7О��@QC��,�@O�zE�[U@L,�<S@IϽ2���@H=a#K@H�c;mN�@KFe[oc3@N���uS�@Q/�d�g@RH��U@S2�,@R�B
��@P��Bq�@Ql�"&��@Qj(���@Q�Q+]�@P98�_��@P�ty��@R�a(O�@R
mf?�m@Qj�VH;�@RKn��w�@QޝwVU�@R�*0n�@S�(��5@Q�RN��H@P{�=��@MB���o�@M-�����@N�|04D@M���G@N�����@P!m�r�4@O��Z��@@M�Kn@MWܴ�@ML8n��@M�Q]�Q@PG���z@R�_*B�@R����g@'�Z�|�@$���:��@$v�ad~@$��`p@!���g�5@"_�� n�@)��	&Ԭ@0�+F��@+clCG��@#��0�@,�"�s@;FQ�icu@P[A����@W��6a�I@X��a��@W��&#C�@Wu�Zu@V���E@Vl�2#3X@V0�IJ�@V����@V`)L�Iu@V8��S@U����v9@U
b�C}@TK�z���@R�ns#�;@OH<�I.�@HZ��� �@A˱���g@<^ϓ<�@=K2�qQ�@5���@1�:!- �@7\�;7@<�օ��@A�4yǼ�@E97M�@K�2≔@Pyi��@R{kd͐�@SN��y��@TL��8@U��щl@TѵN6W�@T3/T�@SD��Mw[@S: �@S4���i�@R�jF6��@QQJ�Е@O�D�n! @L^���-@I��2LN�@H0���&�@H��y[�@JŅ�P��@Ni��ݥ@P��8mȕ@Rr?(�@R�$혞�@SLl����@Q�,�p�@P}���Ri@Q�B^�L@Rg����@Q�8)4+@Q�m��?@Q����4@S��R-:�@S6{M���@SS�*�©@O������@P��#*�@Q��`BM�@P������@P0L�ce@M��篰@L�w�F�@L�j�`�8@MB���^�@O@���l@Pr[L�U@Q<,�#M<@M� 1�@MX�gQ[�@MB�ل-�@Mӊ�@P2`~��1@R#aڒ�S@R����g@'�Z�|�@%��)O�@%�֣@#f���@!��%q�o@#8$�b�{@$���ro�@*����E@&<���@"�AK7�9@,�u�f��@:�27��@Q�� p+5@WΘX�y@X���@W�'�%@W65ĵ�@V����S@V.6�t�@V ��
�@VIx���@Vp����@V<}�Z�@U�h(@T��i#j�@S�B�b~%@Q�>�8(@MEfX��@F���/�@?�&3QK�@;V�PY@7����,@6�u��q@5{L���'@8}�~�l@=��%�@A�&#���@C�q��d�@H��d͢m@O5�Y��i@R/���@T;���@@U��N�@V"'B�3�@T��r���@T&Ʈ>�@S{ͥ�@S�b��q�@S��c�@S y7[p�@Q�S�J�@OVV�[]�@L3��@i�@I�'�bC�@G��Q���@H
��x�@J	߂��X@M�,J�@P�1����@Q�Ɏ3�#@R�\b�d@S�a4	�Y@S��ZD@P$`ߜ@Rm2�S@S+Ѧ#W@R���D@RJy����@Q�2��V@R|��$a@S۔�.P@Q���_�'@P&�#*�M@N�
Lw./@P?o6u�,@O��p�ڃ@ORX�1@M��E�@Lx�B��@K ��� @M���N�@Po��-U@P�о�@Q��7& y@M�K����@MAP�pt8@MX���@M�����@P(F�\AU@Ri&�@R����g@'�Z�|�@%V@��jD@& n�b��@#\��@"S��b@$��DN@!�L�'@%P@~�:�@"M�?6z@"$'iǿ�@0h���V}@;�����@Rx���U�@W����]@X�\�(@W��XvkC@W8>ܿ
k@Vqq^���@U��f�@V`�ʿ�@V��wp��@Vl�e@V&(��,�@U[cE0��@Tt��`@S��F��@P΋BX7�@I�"K�k@E�;��@?JJ�k@8�'���U@7C�F8M@7(S]�l�@6��Po6�@:O�G�@>�<�t>�@Cx�
.S+@G����@M���E�@Q?���:�@Q��7�8H@U����@U�BJ$��@U�c6@T�ZR�@T��(X@S�g��ʨ@Tf�`�@S��rSp�@S5I]���@Q�e30e@Okw&�-O@K��s�F-@I�by�@GyK*��@G�[����@J�:��}@M�x�cD<@Pt-`�6@Q��VO@R��j�Y@S�1� @T"���Q�@SUQC!�@S~Y�}Ĥ@R���a&�@R�g���,@Sx�D�M�@R�YN껥@R�t�3kE@R�!}�c�@Ra����@O�]��3�@Oc5|j�-@O�"�1@O�BK,�@N�!�_ՠ@MDx쭩0@K��7w@KL�N�m@M">'�0@P�QL���@Q2�l@Q;�R�@M��C�2�@M#ܑ�@�@MA ��o�@M���*�@P���a�@R#DRJf@R����g@'�Z�|�@%�O����@&�ܤ�)
@#��5RD?@"�{��:*@$����k@ �4.�զ@"�n�A��@ �̳�~@#
İ�;�@3=����@A�G�35@R��.�@Xbs�e@X;8k��@W�M�U@WϢݷ�@VZR*���@Vk{j��@Vr!j;�@V�b^��K@V=��p�@U��I��@T�E�T@Sx����@Q�!n�@P.g�R,@G���/r�@FZ�Yk�@@`�,U�t@<1�� sx@9˥f��@:%l���+@<�*3���@?�!��@Bu��o=@G{�n�B@L}�9�4[@QL�(�I4@R��=�@R�/D��@T��f[��@Uj=C�'@UO2��[@T� ��Hw@S���Mc@T�h>�X@TRy����@T����@SC�;Y@Q���U�@O`��'Lx@KK��>�@I'V���@GI��Bo_@G(��t�@IԐp���@L��ӣ@Pzڍ�@Q�T�y@R�A�:@S|���kA@T�y�Y5�@To����@S�� dl@S�5zΕ@Q�nZ�@R��R/@R4�=��I@Q�0GE@R����@R�Z��]�@RI����-@Qy���x�@O�Bg�S@P�IPM@N� G66�@Mq�=�x�@K�+�߮k@JEâ�@LK�1,�@P�D��@P���88@P��.\�[@Mvu p4�@M7�<�,@M$��?(@M�����d@PH4�8@R���̟@R����g@'�Z�|�@&�^ɦ�b@'Q���.�@$ZW2|��@#�7�+�@%<��/�@��b`�@ �i(��E@��3�q@% ����@6F�=�n@Hyk�@Sќ*�<@XU0�@X���@W������@W����@VU�6|ck@V&�Ȑ�@Vu!���@V��Qn�@V*��:	@U�
��@Ty�5IM@Q����܅@O��B�@N�.����@G�'��H@D�@�a��@A��:+\@Ag���	@?��E4�@@`���i@@������@C=0?��@H� ���e@P�&�@P��T/�8@Q���%L�@S/��@Sұ��4@T�	-Zv7@UeKU�`u@T��U�@TH�@M�@S�q"W @T&�$�@T~���ɴ@T?�E��@SQ���@Q� 4�Տ@O����@K��Ri��@H�|/Z�@G_)v���@F���oc@H���Ѓ�@L
��^�@PC���oT@Q��~"�@R���C@S���]�@T����@Ub��O]@T�̧0� @T�i�x�@Q�s�0j@Rي�u@S�v��@S����[u@SJ]��=�@S���Ǫ@S��k�@�@R~q�g��@Pu/(O@Op�*K@M���13@Ly;CV��@J%�#��k@J���m@L��yJ=@Pʳ%L�@PH�cU��@P$%�ҝy@Mx���#(@L����@L��3�@M��@q��@PތJ=W@R%���@R����g@'�Z�|�@'c?�kIl@(=��>�@%y�j#X@%�3s�ز@&�X[V��@ ��st@{�4@�8�
t@&�A�ȜD@9���h@P��ڥ�@T��:c;@W�%_��s@X/� �H@W�_�:�E@V�� b�?@V\1�E�@V��Z��@Wo�A�@V�H�S�@U�?���@U��ٳ'@@S��U,�@O{�e��@NG�s��u@L֞���@H���2�@F���� @Eo1:�E@C�prq�@A��K<�@B_T��
6@C��˿&@HV�I�@J���@O&���@P���r|~@RF	���\@S eO16�@S���%�@UJq�6�@Ushw�W@T�ӲG��@T3	�PN@S�%�l@T*�ԺPk@TxE�o�@T]�AYN�@Sgk��@Q�u�s/@O�Irh�@K��~�1I@H�_O�@G'�H��@G(.����@Hk{:g5@Kp=V��@O���lYi@Q��/s�T@R���	K@@S�H�T@T�|kM�@U$
��)o@T����^9@U��Z[S@SM�T� @S>e��j3@Tte��Ƶ@U-���;�@T��'��@T�&a�J�@T�|��@S.�	u�@PI���\�@O ����@N�$AS¯@L�7I�qS@J�i�@�`@K�����h@L��!w�@P�?.9�t@PC �+@PF��
�@M�qYW�K@L��X�@L�*�c=@M�ORa�@P ��I@Q�fo9H@R����g@'�Z�|�@'��P�#@(��U�H @&�D��ز@)l�@�@+�6)ϬZ@Kq���@��m���@KO�p�G@)kxGT�@;/w7�@P������@TZ���*w@W�O
��@X-�b��h@W�}�h;3@W`�.�@WB�V&�]@Wc����@V�~��@V/�J?h�@U��l&�@Up����Q@Tq�6�l@R p��Q�@Q���Z7�@Oy�g�n�@I䂨�٘@JK�MBD�@GI��wd@C��V�@Cvj�E@EW����x@G�X�> �@JC ׍s@L�A�*�@N��Eo7�@P�Y�h��@Rl+|Uo�@Sn��@S{��@U��3��@T��c�\@Tˈ��w]@T' v�V�@S�L�0@T�Hp5@Tu+I lA@TfM���@Slp{b�@Q�!�%1�@O���g��@K�e��@H����8�@F�x��,C@Ff0��ʅ@G�����@J��Z��_@N��P�y�@Qr]��i@R�"~�a�@S�.�Pj�@T˱��@Uo�1�}�@UN� �{@UD��v�@S��Ց @TZV��@T�빲O@U��ؕ@U�&e��e@U�:�a+@U�g�fQ%@T9�x5�@QO���<@P`*#�s�@N�����I@LFh���@K�XT��@L�R���@N��(z��@Pc���'@P7��ي�@PhL��-@M�����@L����5@Lx��6��@M�q2��@P	����@Q��
Y��@R����g@'�Z�|�@(_�P�J@)_�_�z@(�(�>x�@,L���!H@3H5~�@��,��@n�yH,@C&��@+�u-I�@=���D @R� _w��@Tyl!��@W�C��a@X#&Ҙ� @W�m����@Wj�t��@W\�Psc@V��?�@V��Eu��@Vj"��u@U�D@�3�@U7��`�E@TL`p��@S<���@R^��J@Q��O7�D@O˶��',@Le�Mq�H@J�7�~�5@I�Ƙ	��@I<ܳh?@K��lB��@Ib�Z�@K]XU�r�@N'p,H=@P�)/�@Qk�fi�@R�Hlb�@R�p@��@S����L@U�a���@U��Z��@T�̪�H@T��w�@S�����@T9���U@T�@0T��@Tp�P�(@Sa��@R]�!�@O�Da��0@K�����]@H�*���@F��p�wE@FuU-|Pk@G�b5bL�@J>9zO�@N�N�|D�@QBX�ƃ�@R��c��@T̀�=�@U 2�`@U��@��y@U]�f/G_@U2%��@T�����q@T�s�q @U��;�@V2�� @VH�h!�@VA�$x@U�"uͪ4@T��_�it@Rd*&�t@Py�L��u@Nן�I�@M��Ym��@L�4Zİ5@K�����@OW<����@Oʲj��@P�$|e@O?�.FP@M�(w�}@L�U ��o@LD����h@M����2X@P���f@Q��p��@R����g@'�Z�|�@(��(ٲ@)����L@*?E�x:@0:ޓ��f@4]]�@�w%60H@Ж@��p@ F@裝"@.gCӤ�@?Et��1�@R,�o-�@T��xf� @W�+@X#��*��@W�*(WN�@W���%@W8-Vn�)@V�4,zo�@V�fT�"�@VXDX�/@Uû6n�@U񱄡�@T.�2�@S�� ��@Rs`�@QI&L���@Pu];L��@OWJ�y�@M]O��q@L���~@LP]x���@Lp��PJs@Md�"�@N��̏�@OH�O߅�@P�=�1�4@Qݗ)��@R�0m�&8@R�"��}@T�A9/@T��/�1@TlO���S@TI��Q�@S��/���@Sjf.�|@Sƨ��}7@T������@Tk]"<�@S�9F��@Q��e�,@O�t0@J�ۤ��@H]�rݩ\@F҇L��	@FSB��@G.FG���@Ju��U�@N|xK��@P��EQ8@R�Ϛ)��@T����@U���d@U�˳��5@U��c?�@U���8@U���^�@U���o+�@V)�1�@V��]6Z�@V[l0��@@V�X�@U]���@Tޛ���i@Su�sчX@O��>��@OC�l�,`@N�Y�@@Mh	��$@K����X�@P		5&!@O�����@@O��{�@N�<�(8�@M�;u���@L� ����@L-!��L]@M��C\g�@P��h�w@Qө���@R����g@'�Z�|�@)�/`Ȑ@*k��e�@.w$����@2#�̜@8=��B@$�Ȳ��l@!�Ԥ3��@"��\d�@/�Vcz�@@������@S����@Uj��U#@WmG���#@X.���@X�ٵ}�@W��#���@WP~���@Wk�@ �@V��R��@Vb7����@U�9Bh@U�ߗ�@T)�ڹ��@S2�2�[@Rw��K@Q���O�]@P�
2�e�@P[-�^&�@N����2@ML ��@L��LM�)@MQ�ngf@M�@��l�@N��L@P��˲@Q;F��˿@R���W�@R�y�Å<@S�tܔ�@TC�ݽ�S@S�m�,]@S��{(@S�v��;�@S)=t�@R��'ĩ@Swm\Ә�@TM:��c@T@D�Ej@SSb�h��@QM�,9�A@NzQ]z��@J��B��@H�|1@F���ǋ@F)}�L4�@GDn��D@I�IU��@M���^l@P���U�S@R�����@T�ak@U�ۓ`}@U�ȹ�@U���m�a@U�)Pb�/@V. �!�@V!�3ՙL@V]sQ�3�@V��ʆ9�@U��υq@T��H�qD@S���s�@RH�ќ]@Sޟ�E@PP���dO@Nܞ*�@M=-�'��@L���U@K�J��5@PP�gy��@O�B�2��@O�_�ˁ�@N�up}	@M�PZ��@Lߚ�X@L��Ɏ�@M�d_�o@P��0��@Q����z@R����g@'�Z�|�@)�?�Ƥ�@+&9ͅ\�@1���@�@5ʕ��At@:���Y�:@(��?�@'��$��@$�ߖe��@/>�`�@@C\~ªG�@Ts-���p@U��b���@WK$��3@X{U��@X秀�@W��}�M@W9x��8@V����@V��w�59@VXט�A�@U����w@U7��Yɛ@T� �}�@S�}YOH�@R�a���<@Q��'��@Qe
=�1@P�0/���@O}T�'S@N3|U�]�@M�c�[�M@N5�0J��@NVS�A�C@N�8��0�@P2�O��@Q�z�!��@RI�7'�@S�g2U@S|�yFz@S�K'л@S��Y�
�@S���Q@S�O�s@Ra�F�n�@R"���@S4�-�tu@T$y��=@T0i@�> @S(ȴ}@Q_ 0I@M�ҥ���@J1R�:s@G���j�@F�MuIu@FR�]��@G_)=ާ@Ii+�O�@L����@P>N��r_@R���I��@TAA:�$p@Ufկ�@U��i��%@U�g裁�@V�oʰ�@V4`���@V>Wŏd�@V���I<=@VϏpO�S@U_�Ȋ�[@R�O�5�@RB0�ډv@R���D�@Q� ]���@QA�c��{@P��ulg@M�n��`�@M>���p�@L�RE̱@PW��h�@O�Nu��@O�͒e9k@N�!�1�@M�7�~Z�@L��"��@K���?��@Mp�K2�@P w��@Q�T�G;Q@R����g@'�Z�|�@)w��$U�@+�8)�@2A}�@="�K��@D�M�ߔ�@0�5n�1@0�Pk�i@)U��,�@1pA$@H���1��@TƄ����@U��)ְ@W/�0��@X[�`@W��ql}@W��'E@Vف6*�@V�
��!m@V�2':C�@V9�H��@U���H�(@U*����@T��|�@S��@t@R�A�q@R��jR!@Qz�Z-��@P֎����@P',k[�@O ��]c@N�ɞ̙#@No���A�@NchV�@O�8f���@P�-�U�0@Q���s�@RVE�ؗ�@R�S8���@R��3�@R�S�+f�@SDO%~��@S@$[P�@R�tj{~Q@Q�y���@Q��c��m@R���@S�v}zȽ@TX�	6�@R�>���@P��+�7@Mƒ �/@I�(����@G>r�"=�@F���7b�@FJ��f��@G�O*�@H�R�{�m@K���!@P	�,�@@RT4��@T��.�|@U@�Nt�@Uݬ���@V
IZYE@VP�Ñ��@Vb���p�@V�|Qdx�@V���?��@V�?��@U����@SS�4:�c@Q���t�@ST�`��@R"��JX@Q�jn�?�@PĦ�>E@M����7@M`y62�@M"I�٤@NT�1u�@O���}@O�+&}�@O�c�U@M�X�$@L�:k`@K�,l]�@M�mj��@P+~I�[@Q��g��$@R����g@'�Z�|�@)�N�m�@,����@52d�-H@HW~8���@S��k���@9��i��@@>s���@1]�[��@7h/��i�@QH�Ğ� @U�q��A@VLA��ȟ@W=)$���@X�hC@W��~A�\@Wt���m8@V�bN��@V�4�m�}@V���k�@V'��@U�Sc��@U���L@T�G���@S�:�=�@R�@��;�@R
86D�m@Q��"��e@Q)���@P>h�P�i@O��1Iv@O!f\>@O$�����@N�Q��:o@O��C�@P�B�s@Qd���@R)E?|x<@R���g��@R�~�<@S=�#3,�@SmZ�;o@R���KS@Q���A�[@QU� `��@P�Ц��@RXx�L�^@Sɲ�/��@S�h�.ش@R��)BVM@PΉ>+?@L�����@I|�r���@G_��a�@F��
u @FaR8�W�@Gz��@�g@I;k�W� @K��xX�(@O��s�](@RR���a�@T`#�?@US�	�@V1���aY@Vj�"ə�@Vp#+Z�k@Vk��F{@V�V��6#@V�B�#�I@V����@V5C�J��@T�_H�k=@S�RlZ��@R����@Q�M�G�@Q.2�@POqh�r�@N땎�$�@MT��ʱ�@M����@M#q?��@Oa��F��@O�����@O���@M���5ޘ@LL��hie@K�M[ݑ@MdU�)��@P/Ku�`�@Q�;�3%�@R����g@'�Z�|�@*�br��@.�f��Nx@7���-9#@O�٣���@U0\�WH2@Ia�Ϣ
@R6� �p$@>m?�N
@9��#�T@Ră�D
�@U��8��@V�j���,@W��vo�@X(�ݚ�4@X(�%�tm@W�P�@WV��i@Wgu�k�@V�z<��\@V%`{��U@U�0Crd@U8��>B�@TH���\1@S�ʞ�,@R�+&n�h@R5�qҚg@Q��� �S@P�9��>�@PkW�ҟ=@Oʮ�A1�@O����@O���V�@OT�%���@Nt"k�O�@O���F�E@Q\���o,@Q��D�v @R��XN��@R��O@R��	COh@RȐ��y@R-L=�87@Q���E�@P���,��@PD�.#�"@R �/~��@S�(.Ml�@S�y�Rr@RzLf�i�@P��X�@L�����@I����C@H�	j��@GSM��S@GJ/���!@G���Ǖ�@I���f��@LM�UD|@P?�sv�@R35$/+�@T*� .ҽ@Ua�"�c�@V+k�(@V~�
��3@V����@VI�
���@V��C��@V�4�I@V��ޢ�s@V��A���@U�agr�[@Ue毒X@T��q��@T&x�Y�@Q��m���@P���g@NS�n��@L�� c�@M;Cg��g@MC��Z��@OTT�`q@O�3� 6�@O#|�I@M�T;wFU@LE�?|r�@Kw��P@MVt��@P6,���@Q�$3u@R����g@'�Z�|�@*i�ToW�@1d1kh�k@7�4�{�$@R#�YH� @Ut`Lr�@Q�UK	#@R�Į�@K�`~ e�@:��)��+@S��T��@VP����@WK���@ @W۽ ��m@X.�U@X�O˗@W���@WӜ&9�)@Wh�Hq5�@V�z���@V;�<�v�@U��L�@Tf0��^�@SW�e��O@SQ�^���@S��Cs�@R4��q$�@Q[�cv @P��(+��@Popy�@P"��7�?@P����\@P8Ye��u@P��5��@P [�-eI@P����S�@QVQ�}�;@P��%��@Q���ƻw@Ra�n�@RH�٧��@RH���t�@Q㰦J��@Q[�r�23@PH�w�2r@O��^�@Q����0�@S�zX?�@S�St�k5@Ry �.l�@P�W��@M)s�f��@J;w�J�@H^F�JS�@G��+ ƽ@Gqog��`@G�0PY@Je���@L��m�@P-���@R3bu��A@T@!�<�@UwAr��-@V
��@V��xg@V�N��8@VZL��T�@V�r�R'@V����5@V�9�y@V�zD���@Vz+ެ�@V*��	@U���8�@UoD�q�@R{Q5IN�@P�>	`!@N#_'
!0@L���S:�@LIiv�@L� �';x@O6� a?@O��g=@N��ȼ@M���ۑ�@L2��gN�@Kj#�QG@M9��@PC���I�@Q¬�s�@R����g@'�Z�|�@*k8��@22G�4n�@;e�Cĉ@T/��V]f@U�����~@R�H�~�@S"*��7@REp݊�0@?�/\z�@U}V��(@V��G��@W��?��@X��P"X@X=���@X-���@Wؘ�Yl�@W��JO�@W.|^^��@V�0]�?@U���V�;@U% q�@Q�Ϡ���@QU_��Q@R�:�jw@R��5n�@Q�c�m��@Qd�:�@P5:��t@PT��U@Ph��:�@P&��[@Pfb�F,�@P�����@Q���@P��}��@P�(]�@Q��6�F@Rd�z��y@Rr�a:]@RK婵-@R)�̬�@Q�<OTF@Q92�$�@O��vV{k@N�C�7��@Q?o|J��@S{�_fWI@S��p�@Rb�iuWO@P�Z2�@MbnU�Q�@J-��v��@H��)�S@HLM�Dc@GΓ�G�@H:�"�~{@Ju�� �@M�d0%@P$RyN�5@Rar���@T��3�A@Ul�k�]�@V'zg�cg@V���8o@W��/�G@V�:{IW�@V\����@V�@��z@V�A���]@V��ؙ}@V�i:-.e@Vn�ǈy\@V]��,Kx@U쒞�@R��n64$@P7��3@M��:�r3@Lpsꅆ�@K�(�9�}@L�4�m(@OU��_�@O����i�@Nġ���@M�"-X�@L
�։P�@KV�ٕ^�@M(�ٟ�@P:��.@Q��P](�@R����g@'�Z�|�@+�F^8�<@2��T�@CJ�=E�@T���,�@V:��/@U���e�@S�D*Ԛ@S^/֚2@N`9�nY�@V2�2F@V�}/�ė@W¤LU��@XQ`�Q@XJ�����@X��c��@W�����@W<�D�}@W@�Zh@VVo +��@V �кb�@T��f��@Q��
0@P����@Q�z�Ci=@R%5M�T�@Q}��W?@P���3�K@Oȝ�u@P_a(��K@P?'���@P6�@��y@PW� �ҭ@P�VD%@P��?��@P�� �@Q�z���@Q�n���@R%gGe��@R�(>�@R����@Q���\�@QE,��<�@P�0J�@N�����|@M�y�+�;@P��sJ+@S*�(��@S��y\{;@R�feO@P��@-s�@M��G�&�@J+	&���@H�t���@H�l�	�@H�l�-�@@I�"��@J�(1YB�@MK�����@P:�f@R;���H@T��B�@Uz;�+#@V9X���@V�;:�{�@V��rJz�@V����@VN�'OU/@V{�V���@V�+���@Vڛ|k@V�Q�VD@V�ߥ/��@V�쬣,�@VF���@S�Fw�@P�
\@M����{@L�?M톳@L���U@L�^�Rp@Oh^n�a@O��T���@Nα̩�@M�@���M@L�Md@K0�<�d/@M�R6�@@P8�i>�w@Q����j�@R����g@'�Z�|�@+f��;q�@3�N���T@F���d@T�t��V�@V6J���M@U.����:@S�#�ꈭ@T(d�N�@UQ;�.u	@Vl}�o�r@V���bW@W�O����@Xj��Et�@XQ��	I@X	����@W���?4y@W�f���@V����@Vpb8C��@V��E�@T�����`@R�K��@OJ^��@PR�J�st@PtO�F�'@Q���x�@P :8���@N�)�-�@PZ�&�.@P*5XX�Y@P_��n�@P��A�p�@P��]@P��:@P��lRJ�@Q'�Fuq@Q�#n��@Q��[D+@Q�����<@Q�`�g@QJ�r)�@P�_�9�8@P.�*k��@Mкfm@L~�wE6�@Pk��%��@R࿦�@S�{$d�@R�ʮo2�@P�Sm�[@M��B�@JANI ��@I zJsd@H�Y^t@�@I	nrq@I�]2� @J��@M8���d�@P���_!@R�z.�I@S�Q!~O�@UQ	�*�@VXޙ��@VrȢzH�@V��|o�@VרM�@V��'���@V�`���h@V�8���@V�'��uL@V�j� ��@V�/�w5�@V�.�֙@V��R���@T���@O+�����@N��;@M���#@N��"B�@N/7I�@Od�[�l@O�T��.@N��j1��@M��Y@L+C�LB`@KV���i@M���&w@P-x��@Q��0%h|@R����g@'�Z�|�@-k�'�@2����F@IXq�)#�@U	*���@Vee����@U"�d��@S�����@T���lgD@Uݦ�/G�@V�]n;�x@W�����@W��b�]@Xk�r��@XN��gz@W��@=w�@W�����\@W=�Cwp@V��kD�t@V1T�ǀe@U����A@T���;@Sl<��\@P�ù��m@L뢃�'@L�K�@N�7-�h@P�\�@OV!��
�@P�XX}\@P}�Qm�@P�Q��@Q~x���@Q-{/��{@Q��6ݱ@P�oFN�/@Q#l2��W@Q� �K@Q���,9�@Qa&!+Ƿ@Q@iũ�@P�Y���@P����P�@O���~�@Lx��7�@L6�@�܇@Pv(I2�@R�ZR�E@Sq�z���@R�1!i0@Q�o�~�@M��u�Q@J��8'@I0�?���@I��=cY@Ix}6Kb�@IA���T[@K/pI@M� 0��@P*D}���@R֣���@S��((aW@U4S��kt@U���vi@V]���e@V�{>�=�@V�Yt��@V~��4��@Vx3t�U@Vk?�?3@V���i%�@V����C@V�����@@W	��@V�l��e@U�{S�>�@Q�7�q@O F��@M��Z~K�@N�\���@N}]��G@O:��kn�@Oz�tq
�@N���8@M��&�@L�6��@K�~��@M���@P#c[��@Q�]o=I,@R����g@'�Z�|�@-6I�`RO@3Vq]�}@K�\	ogU@U��@V��9��@T�!����@S��w�f@Tz��^��@Vn�C!�@V��K͎@WB%P(Y�@Xzn=�@X��`V�@X<|����@W�<�%�7@WWB�|(@V�n�+@Vq�.1�@U��R���@U0�G��@T����R�@S��f8�@QK���T@OȹVaj[@Poѷ@Ocł�� @NE(�N��@Pf���}�@Pz��J!�@P��X�TP@P����;O@QN���5@Ql�@Q(����@Q�)dq@P���j�@Q]X��[@Qr��č@Q:�Qz+@Qv!��@P��*�+@PV?H���@N��$i8@LKQ��ε@K����n�@P:I/���@R��_4�D@S�OMa�@Rr+uh`@Q	��A@N����@J�G@�<@IS����@I:=��~`@I�A��j�@I�0IQ�@K !&i�@M�r�K(�@PV�צ��@Rv#��@S�0� ��@U ��?�@U�2�rG@VT�T��@V��$�s@W$u�/@V����8@V�~QL�U@VC�?~@V�ʀ�I@V�vڽ�@Vޣ?�
 @W�sb@W��\��@V�zC(@RL��̖@N�]���@M=�=�-�@M���T�@NJ��
~h@N߶��PM@O��.5@N�����@M����Ɛ@K�o�ݙ�@J�Ry%��@M���)X@P-Q�q�@Q�ɣ@R����g@'�Z�|�@.�iz�5@4¾��s�@N��W��@U3����V@Vg��d�@U;��%C@S_}���@T{
C[)�@U���& z@V����@WNuaG�@X=2l�7@X�%��0@X��G @W�s�u�@W,^<*��@V���U@V�����C@Vb1q_��@U7��`�@U�Ƈ"�@TUq9�5@Ry3�p�@Qq$��@OǑr�g@NwY7I@P{�XC@P�Q�t�&@P�}	��@P���Ҹ<@Q[��T|�@Q�_���@QQ����@Q���K�@Q^��T�@P�Ș��'@PYF��P�@QK���(E@P�%t8�$@P��3{}d@P�GE�[@P'F�1$@N��=�@K)��"�@J��L@O��>c��@R�&'��@Sv�k�g@ReHr�@QG���@N�`ev;{@Ki>�-"�@I�l�@IO�+⤟@I�?�x@I��(u@KW�;K�@N$#[��k@Po��9�@R)+��c@S�.�Hl@T�xA�}k@U�nYh�@V?f�~�@V����Y�@V�l���@V�&�<�m@VqD�d�@VE\(��@V�t��5@V������@V����|0@W�Ј��@WFaO�@V�_��Ճ@SD̔�@O҄k��@N��~S+E@LHA�E@N�O�(!�@N�̛b��@O����@N�ߡ�o�@M@/x�W @K�sIt{@J��Ln�D@Mo���@P$Ӈ�@Q�LI*ݢ@R����g@'�Z�|�@/^h�K��@5E�H�@P��,��i@U3[�d�@V����î@T���Ӹ@S����@Tm�pg�@U�<��@VѦD��@V�a~�U�@Xb_KK{T@X��9�Q�@XG��b�@W��^��@W4z2��@W-��{AD@W P��@V��ߚkq@U~�3�]4@U&�!�wg@T�����A@S�}��X@Re��T@QM�F�+�@P��|jy�@P�F�@P�_C��l@Pҍ�>�H@Q7��N�`@Q˲lG�e@Q�f�7.�@Q�<�.�@QYV����@QR�bKA�@QGK�b I@Q)�4H@P�P
�T@P�����g@Ps{0��@PN��g@O�4}x;�@Mb�E�@JB3�8�@I{�2%��@O*��2\�@R����@S�2��@@R���.�O@P�b��4�@N�T�o�@K�O��8�@I�(y&��@Itz��@@Iw�H���@I�fa@K�|b7b�@N�9>zګ@P���.K@R@�h���@T�7k@U9P�=a�@U��|&�@V;�	��0@V�B H7K@V��1[�@V��O��@Vo�@VB�H�\@V�4%�@V��j�@V�6S�@W	܎�	�@WDRiԪ@V�$�@SI�7@O�T����@N��W���@L��H�F@N�f�g]@Pњ��@O���5��@NW�c�Ys@L�i��t�@K� �R9�@J�ɾ$�@Mx@A/-@P Z�V1@Q���v�@R����g@'�Z�|�@0�1m�@8�#�1G@Q���p�@UA��Q�@V?زZ�	@T���$d�@S��Ƞ�@T���N�@U߾��xv@V���!$@V�qc���@XI'�Z@Xw>�`E�@X
B��7�@Ww�(�,@W*g�^�p@W*�7��e@WKq��׻@V�}ʻ�@U��h��@Uy�~hC@U1��f�@S��i��0@Sw#u��X@RP��H��@Qu�%��@QF����@P�&�
��@P��R[�`@Q#W�D@Q��uB�@Q���b�L@Q���E~�@Qu��A�p@Q8�d���@P�����@P�T��-@P�"š�@PU��Y@P,�?j�@O�_���@N��7$��@LZ��#n�@Id�@H�j�yg@N�j��@R>�t�]@SW ��Q@Rn��"*@P��w,�@N�oT� �@K�
Y�@J]j��?P@I����@I�`;u|@I�Ih3��@L��
�@N���8@P�L��:@RWraR�@T)�?*@U �]p��@U����,�@Ve�ð@V�6#�3�@V�jE�@V�4� 7E@VW6[QmU@V2nw
o@VJ�:-�P@V�UN�@V�ax�|�@V��uY�@W$r�9K@V�c�g@S&IZ.�@P�J�O�i@P���h{�@P�2(ο@N��*�h�@Pw���{@O��A8��@N7�e �@L�y�vo@K�;�:�@J��'I�@L�)�@P.��_�i@Q�y[X�@R����g@'�Z�|�@0��3B�:@:f�A	@Q�	�H�[@UP=׆��@U�Ij2��@T�^�މ@S���v�@T�N#4�@U�,��@V���P[,@W$CW�@X/�D�(4@Xhj&�@X
�@���@W�E<�@W<���i�@V��Ӛ@V�l ��@V��n}�@VmLNP��@VIP�,@U�<#T��@T�w�@S�[�s�@R�f${�,@R7O��@Q��Gp)j@QO&�ÂO@Q�s[b�@Q~�AB-d@Q�����-@Q�[!��@Q���:�@Q��I�	@Q8wr6�d@P���V@P��۶��@PVeܩ�@P�-�ZP@P��|oY@O��C倓@M�"�gE@Kp�K$�@H5�b��@@G��A�e%@N �9��@Q�~H��f@SΪ��4@R:��u��@P�%�N @N�NMG�@K��]g@Jh�J�}E@J#���V�@J����@J^����@L�G;�9W@N�~7/�#@P����@R-2¡!@S��n�P=@U�W@U����7|@VX����@V���@V�S*^rC@V��<F�@VB���X�@V ���F�@V�2�1@V�G�Lx@V�K��5�@V������@V�%v f�@U.�D��>@S.X�+q@Qn�bT�_@R���%@P��)�^@O#��x@P.(i��@OxMk�j�@M�M��P@L��o��@K�I߳]P@J�e�{c@L�i*��@P.2F/5-@Q�xm���@R����g@'�Z�|�@1!�}C?@9��J�g@Q���^��@T�	'���@VP��v��@T�@���@Tf����@TЇYd�(@U�����V@V�2$9�_@W n��@X�M�Jl@Xb���"�@X�-�x1@W�@�Oy@W7���m@VՍ���%@V��'b��@Vʳ�u?4@V�����3@VU�ֺ)-@UO]�
�@T�7(p�9@S��}~�@R�I�P5@R@��"�`@Q�\驑�@Q��{R.a@Q�W�;�@Q�ק�_2@Q����@Q��ՑO�@Q��X��@Q��m#��@Q 㬒�@P���nq@PZu���B@O��lP@O�1�X4@O�Ѹ ��@Ox�N#@M~*D� �@J�	m�x@G��/:�@F��m�.�@Mp�Gf��@Q��_�@S D+g.@RV�а;@P�!�ޝ@OM���@L��̒�#@JçG�5@J��c �=@Jl��=��@JӢ����@L�*� �K@N�o�*t�@P���E@R�i!=@S¯���@U���;q@U���|˙@V;���X@V���f�@V��%�@V����@VIh�\��@Vu?�x@V�a]q�@Vfj~��P@V�q�3D�@V���7�@V`��qڐ@T㝭��4@S)㞧�@RG��U@R�G�'�@O��O��;@O/�+@Pp矝]@O1����@M�[���(@L��p�C�@KM�s�@J����@L�ݟv�@P �\�@Q��亻�@R����g@'�Z�|�@1���s7�@:�Z��@P�H��G�@T��LPp@V�"Ŧ�@T��b�`@T��z��@T�`ŎL�@U��5��@V�a�%��@V��y��@W�����@X_A9�ш@X�Q���@W����q{@W'����@V��.���@V��
�|]@V��)A �@V~%�E�@V/�ݬ�X@U/�)r^�@T���[�w@S��-&{�@S�Ed�@Rg���8�@Q�s�s21@Q�(�+�@Q��|nv�@Q�:���@Q��:|�T@Q�I�:S�@Q�Q:��d@Q^-�Y��@Q���@P��Q��@Pb�Q���@P
}c�"�@ON�k��@O���@ND��{�(@L�fäq�@I����s@G>�_]�C@Fa�~�@L���� �@Q����B�@S�_�H�@Rjh�>'�@P�Ԧ��P@O'՚e}@M换8�@K�Npr� @KB�N�@J�]Y>��@Kڒ�<@M�T-�t@N�E�@P��8�{e@R@ziN��@S�
�65@T�����@U�����@Vm}Gp@VZ�}oE@V]�M @V|����@VZ���l�@V"t��5@V7 ��@VE�	
�@VhSn�!@Vz��O��@U���ϛ@Taѿ�Q@SX@o��@R�چb��@QEm�)��@Op���c@O]���:#@P�7
�@N��d�I@Mw�e��S@Lm��}��@K*�Q���@J���@LtsEv�E@Pf0��4@Q��o���@R����g@'�Z�|�@2�I52�@@;���\��@P\�k]o@UP�X��6@V�dՋ#�@UÀO�)@Tw�iX*�@T�=f�]@U�����6@VČ�v	�@W_t'�	0@W�'>�\@Xc��/a`@XI~-9p@W�ˁy*@W%�M�@V�B�(�@V_��ϰ@Vte���@V��S�,@U����'�@UF�Z̄@T�,��3@T�;;@SN���o@R�,���@RaO�S�@Q��S��[@R3�i	��@R���'�@R�D#@Q�_��2w@Q���OR�@Qg�Q�P@Qp��h}@P���q@PP~�$A@O�Ӌ�@N���8A�@N�\AoZ�@M�!�,M@L�o��@I�/���@F �R�a@E��z{A@L8�`��@QG�	�A@S�^X�@RU��U�@P���)r�@O(�e�@M&�l*.�@K� A�1@Kc(��[�@J�6�W�@J�~��@L׬k���@N�K��l @P�D��@RZ����@S҂��q�@TλA���@U�v"�@U�����@V7�b�*y@V.���M@V`WΥ�@VWG��a?@V3�O�o�@V�ox	�@V(i���@VI��2<�@V7O�!o�@U'g����@S�$�`@R��0���@R/X�R�@QOv�Ԣ@O��f�o?@O�AP�e@P�oM�y@N����	@MS]�֘E@L7U��&]@K'.�X�@Jԃ1-n�@LA��/�@O�j�<�@Q��]m&0@R����g@'�Z�|�@2�0���@<67XC@P, (�0�@U����Dg@Vwi0��@T�)��"@T������@T��
=�g@U��0�uE@Vځ�9�~@W�`��{�@X���@XO@E@W��Vh@W�_��@WQ�F�@V�#Eͽ(@V;���@V,�|J��@V=�!�0@U��H�[�@Ud]%� �@T�-K�@T,Y��@SyU��qh@R�%�]+�@RXA�b�@RO�4Cu@RH�<'@R>���y@R57�6�)@R&�B�"@QȄ����@Q�Р�C�@Q'�3�@P���q��@Pf��R�C@O}z���@NPK�e|@N��A|�@L�!+�}@J���Y@HG� ��@E�^��;�@D�~��~�@K��vh�U@Q<��"��@S�o\�@RD�L�(�@P���L�@OO�b���@Mpn��0@L `V��@Kt@Ub�G@K4a��@Ky��@L���P�@Or���@QH��l@RU낟C=@S�L��,K@Tݻd���@U�����@U���i�@V14#�@VF@��3�@Va�'L�@V@*��]�@V3�DQ��@V���-@U��~�2�@Vgv�3@U�Y���8@T��$ I@S��@RS���@PȀ�a]@P��V�@N�Iі @P�`R�{@P�HO�@N��B��@M'�]��i@K�w���@K5�@J���a�@L3nͳ�@O�S��@Q�2��@�@R����g@'�Z�|�@3�j�HP�@=TBh@O���Nd@U�&�`k@V����@T�|Q�V@T�C�p��@U��D�@U�Yi	�R@W �O�@W�厰�(@X��
�4@XL����@W�]�i�@W�`�2�t@W#���y@V�S�7k+@V�	2eW�@Vy���u�@Vi���@U�x��@U@Ϭk�g@T�n؛~�@T.�����@S�`cљ@SA+���@R�{�kw@R��ļ@RO�6j,M@Rb�(��@Rha���@R)��@��@Q�K�4�Y@Q�4�Q�o@Q#r�I@P�S�s�@P# D=\@N�zO(��@MՄ$��@M_�&?@LZ��jw@J#��Xw@G�(,���@E2��@C��Fe��@K-=�!;@Q0��H@R�_?� @R.%%�L@P�ǰf��@O�\�A��@M���1�@K��t�V�@K�d��i�@K�`����@KHb$ʓX@L"�qq��@N��мV4@P̭��\�@RD��r@S�ʟj�@T�G郱@U�UHv@V-�f���@VQ���L�@VV7= @VHJ����@V(%�P9�@VT.$8xM@V"�v}�@U�5�Z@Uwt5#п@U/^�f+�@TF��Qzo@S
8G"M�@Q?MBv�@N�Q4}5e@P&���k@Nh��G��@PT�_}C@O��AQ�E@NZ�0�/�@M��gp@K�p�1M@K��\��@J�����l@LO1ܝ�q@O���5��@Q~d��@@R����g@'�Z�|�@3��GZw@>tұ���@L���߳X@T�>�X��@TG����@T&h\�V0@T�)�>@U>��U�b@U�	�%�@W) �K@@W�\AX@X)D�k�@XH>�P�@Xկ��@W�>����@W3�?|�@V�9�p'[@V��"J�@Vpr�5�@V6<<2�%@U��2�@U8�T�@T���3@T)n�Xr�@S�p ���@S@�$m�@R�U]va@R� �p[@R`��m:�@R��dF @R~}^��L@RO߯@-@R����@Qt���Q@Q�LC��@P�el�@O��B�@N^�>��@M���&$7@M����@K����w�@IP�b�P@F�����@D��/g@C�NZ	�@J���1`@QЬ�q@R�jm�-@R�� �@P��KPr�@O��Rh(@M�	k�\S@K��n� @K�޷���@K� Co@K9��0c$@L6����@Nq�ɛ��@P��t[#�@RW_1�)@S���@T��2bu@U��ǈ!{@VSL��g@Vhb���@VA��Q�@VH�����@V>����@VJLaS�X@V#]�&%�@U�9kK�x@T�z*At@T�ô�%g@S�udѽ@Q�N):6�@P�h͗
�@M���Y[@O�B�U@M��9�i�@P��Odv�@O�^�1��@N.�!��h@L�2�+P+@K���9�e@KrFI�]@J�3�SE@LH����%@O�8 س�@Q�����@R����g@'�Z�|�@5'
�K@>�����v@I즮-��@T����8@P��>Q@@T).Q��O@T�v��9*@U\Q�, @U��K�b@WM��Hr@W��E�c@XE�ٺ�@XVN�,@X
-D^�<@W�"��g@W3:*h?@V��i;l@V�w�G£@Vc�2�ƀ@U�c��@U��QqE@UH�Fhz�@T��H@T>_���V@S��o�t@S��C%xc@S*Oves@R�Vx�N�@R�ٲ8@R�[օ�3@Rx�M�]@R|����@R.��DWL@QmWӢ;@Q&��ۑ@P����a@PM��&k@NV��@ME��L>;@L�����@Kc�,EKa@H�">*�@F�8�K�@D,OH�z�@B�B5߆�@J���7��@P�浊� @R�E]��G@RgAK�q@P��mHs�@O��MI�|@N8��.g�@LJ��-@K��V��@K�6Y�@J��G�g�@L'��A�@N�� K�@Pw	Q�MQ@Q���.8�@SM�&�C@T�cT�U�@U����ZS@V)�v��@V[���'@V&f/��p@VN�ӀX@VSp�9��@VZc^N�@V ÂIR�@U��%C@T\#S��U@TN,A�s@R�P:o�@Q�H��h@PpE��x@O.N8��@M�_��@Mk�X(�+@Pێ�L��@O��v� @M�)���h@L����k@Kd���H@K	P�!.�@J��A)�@LU�u�@O�	��x9@Q�����`@R����g@'�Z�|�@4������@@mH'�l�@K�H��4@US���@T����@Ua����@Tŏ���>@U~�����@V�_�ך@WXq(���@W����@XV6�h��@Xd�P�dK@X��){�@W�9���@W=�
`��@V���@V�F,�$�@V�ҬJ��@V\�ګ��@V�H�?�@UT��K�x@T��l�@T= ��$U@T�D��!@S�%��u@SU���Q@R�k�3�@RÞ�Ȝ#@R����@R��77�@R��9���@R!�C���@Q��|?�@Q#�P��@P��8��@O����#@M��2L�u@L�P��E�@L��}w@Kk)!�J�@H�%�^��@F\P��%@C���~g@Bx˾��x@J���
}@P���gX�@R�$�!�@R&Y���@P�����@O���ˠ'@N[��<_�@K�]x��@K�/�GE@L��N�@I\|�O�@L$BT�w@NdR�3�@P5�\tD�@Q��@`�@Sm�~�W@TA����@UW�<��@U�����@V@�+�b�@V/��@~�@V?�6/(@VV�Rd�@VKfMi<@Vaa��@U� ,U�}@Tgto��@SҶ�4��@Q�@ � @Q�k���]@P��O�_@O�or��@M�̡���@M#�.��@Q[S����@O���q�@M�����@L^�C��p@K8�.���@J�n�n��@J֦8�8@L\�J�?�@O������@Q�*]�t�@R����g@'�Z�|�@6R����@B�lޣ�)@H2W��B@T�mV��@V�/^rdz@Q�I��@T�G�7��@U�
�q��@V8��W@Wo0٦�@W�.Ҡ)�@Xe��o@Xme#��(@X#A���@W���/�@W(RD�[�@V�[I�J@V���t=@V���x�_@V��J�@V����X@U<��� @T�4o@)@T~���9@T6��l @S�ۯ�_�@SV��:g\@Ss�D�@R�T�@R�_N(f@Rſ�I�@R����<�@RF(U��!@Q��c��@P�@n�s�@Pb��Ͷ@N񠝠6I@Me�ΏVH@L웽�2�@Lu��x@K�+_;�@H2Q�*m@F }��"@D�>E�@B��;�ƕ@J,2�f�@Q��(�@R�|���@Rhޞw�@Q
��Dj@P&��!@N� gz�-@Lj{�LX�@J���g�@I5��V6 @IͿB�f@L�C x�@M���W�@P(����@Q��U�0�@R����s�@T�#��6@UY<ID�@UӜs�x@V-��i5@V%�$;��@V k��[@V&_M5�@V7?Ox8@V)8���@U�W��uW@T�`���@SM�F}s@Ri
:��,@P��Q�@PD+��?@L����N�@L��㸬G@NB$��@Q�Q2`�@O1i�~�@Mc�k�9Y@L"^k���@K+L	��@J�M#��@K�:쿽@Lww2�|@O������@Q��W���@R����g@'�Z�|�@7!�o�@BK���*�@DXr ��@S�����@Vd���M*@K�g 2x@T��f�>@U���I4@Vfy�v@Wv��>�@W��Ȗ��@XZ��|,�@Xv�և�@X-���Bu@W�PG8�@W;��O�@W���Q@V�ɯ>ͫ@V|z7s�@V�1��@U��3�	@UM�3�Ѱ@T��Pty@T���Q"d@Tr����@TW�n�A@S{�����@SFJ�˅@R�DB�m@R�?6�f@R�H��?@R���o@R%�b�
@Q��~�@P�D^�@@P#zp%�@N��.um@MM�x�i@L��2C@LA��ݥ�@J���}�@G���h �@Fn�	H��@DYjTr~�@B������@JoNҾ['@Q;ı-��@S���j@R�m��@Q_ٯ�@P0����@Odk�XP@M���e"�@JE�����@J�H�^ �@Kw�t<@L���׫#@Np�'@O�<�@QS�/e��@R�x�l@S�����@T�\ܺ�@U���0�@U�WE*W�@U���V��@V /Vg�@@V�/�Ͻ@V%����@V/�?F�@U��0�0@U`�[{(@S_�jF�@S-�(��@Q�^��@Pq�6[�@N�V�e��@K�� �Ge@O-1��	l@Q��w�y�@Op.�ӓ@M\��)#@K�vt���@K;����@J��+��@K""�4Qh@L�7�@O�B���@Q�
�ܵ�@R����g@'�Z�|�@7B`%R@BA��}@Cȹ�y�@M�E��@TY��5��@H��H^��@T��wfH�@U�i�s@V�}���@W�N�(�@W�q~NT@Xau�9�@Xr!�.�@X97?n��@W�F���E@WL�EV1@W�t�u@V����[@VÄ��4@V�K��@U�Ns���@UY���!@T�эo�@T����J@TN��-
�@T
�.|u�@S�R����@SZ�~u�@SG�ȏ@R���6u�@R}4��T@Rp*���@Q�;V
K�@Q2-+�@P�:��C�@OT*���@M��~i� @L��O-�P@K�WL��@K�n���@I��Ę @G�N�.@F�b2p�+@EH^�'�@B߷���i@Jrfj,�P@Q�ý��@SGZ���Q@R���@Q������@P����c@P!]���@Nc���+l@M�ZD��@MFB��@L{���@M=��b�)@N�m-\>3@O����@Q$Ҝy@R���o��@S�fdE�@T���Y3y@UV��X_Q@U��$��@U믪�Mu@U��	{�@V �����@U�F[4+@V3�����@U�@	�%@Uu�k&�@S�#���@R�$;�ո@Q�����p@P���o�@O,�/"�@Lf�SIZ'@M��T+��@Q�g�*|�@NW�-ID @M	j=3C@K��!.�@K)(�%$@Jxh,�wD@KP�`�s�@L���y��@O�
I��@Q�۵�q�@R����g@'�Z�|�@7�=㵀o@A�2[&e�@D/X&2g�@F��8B��@S�ͳo�@J�AD��@U1���a@Uщ�̯�@V��o��e@W��3@X/��@X\��m�@Xm�-��@X=��{5@WԖ��|@WQ�.�t�@W�Zw�@@V���hx@W?ʝ�_@V�MM�@U��,tx8@UX�P���@T�$��T@T����ܯ@Tg>�3G@T�m1ס@S��d��{@SN����i@R��Hɴ@R�?`�@RT74��@R7��n�a@Qj��h�@P�3/Rز@O�m�mH@M��)�M@L�TÐ�]@L!t�L�@J�5u�Z@JA]���@Iɗ�_�@G?ؤR2�@F�(CV@E�ъ�e�@C,�=���@Jr�&�gm@Q��Fg�@S�w�@*\@S/��[@Q��i
	�@P��:̞�@P4+[5G@O�+c�@N��Q%�@M� U@V�@M}Cs�gI@M��3��%@O��Y�9@P+�J��`@Q���s�@Rc�e��@S�5?�$@T��m�h@UCŁ��@U��2�@UַH��@U��3�y@V:GM\@V�4�&I@V
� �Q@U�KT�G@U���+? @T3���@R�L� @Pf�}@O�|X2h@N8���@L�Vd.C1@MHʋ�H@Q9�8lY@NԩP�@L�="f�@K��݊r�@K#����@Ji��Bp@Kx�p���@L�N�V�x@O��낵�@Q����e@R����g@'�Z�|�@7g3�{X>@A�����z@D`�A���@E�+Ŕ�@O)�ˆ�x@K�G.QEn@Tj��W"@U�%�f�@W�Xo*�@W��G�Q[@X0'*�j�@Xdi�@Xq�SY�@XO���&(@X x�3#@W�U�@W;F�9*q@W(��%�@W"|�!}@V�1��(K@U��M�& @U`�yk�@T�Sm�L�@Tɳ$/�q@Td���,s@T��`+H@S��i��7@SD����@R�DMN �@R����K�@Ras�'�C@Q�*$��@Q
�9�@PH-�
,|@N��rK�@L\�P�@L�c��c@J�O���w@I�Cmf�@IN��1�0@G�2���@F�0#��@F�w��@ES҂a��@Br����e@Ja�����@Q��AR�@S���Hb�@Sa�S�@Q�i�1*@Q�"��@P���I�z@P��d	�@O���W@N!L[%@N�[;��@N��:�f@O`Pॆ�@PI��4k@QГ#��@RO�ٴZW@S���^�@T��7�y�@U\n���0@U��V�m @U�~yo}�@U��ب-@U�|z��@U�6"3@V�>U�h@V � Im�@U�V���@T�F��<�@Sol�n�u@Q��{��%@P��ˋg�@N�SB"fK@Mye7���@Me�Q[@Pڸg��x@N/a�6~�@L�Us�*�@K���J`@K:����@J�+�@K�_(�M@L�W����@O��)���@Q�80�@R����g@'�Z�|�@6�&�9̒@B�:]@Dw�z-�@DG�!�0@IkR�\�@IH�ɀo�@R�X慞�@U�Q�4@W��U�@W�*f�\�@Xߊ��@XnR�n��@Xx�J�J�@Xb��G�@X%�轃T@W�ͮ�B#@WWj��)5@W]�na`@W�����@V��]ˮ=@V'ֺ��@U�S��s@U*[d߄e@T�x����@Tt{�j�@S����@S��W[@S?}u�Q�@RͬHɉ@R��񔫵@RJd���@Q�AV�Ӕ@Q����@Oy�m`�@M��$Ѝ�@L1�Z؛@KUWj�@I��6�MH@H�l��s@H��5���@G\��G"�@FAҧ��@F��G�? @EG����9@A�V����@JO��6z�@Q��z��@S�)��m@Si}�$A�@R2^�@QL6���@PБ�	~�@P�GzN�@Pk,���@N�;�e@N�R�@O#���S�@Pm�-M�@P��5H�@Q9�B�}@RRx���@S��T�2U@T�g��M�@UJ��i�@U�2\��@U��(�q�@U�o�@U�L�j|�@U�R�Hl@V	�(�A_@V>X�Q@U��iQ@�@U�ouF7@S���9��@Q�bG��@P,�^�l�@P>F�	��@LP���m@L-RqE6�@P'J15�@NH+�b˙@Lw��+W�@KÑ4�E�@Kp�:��@J����@K�&Y.�@L�� @�@O�����@Q�ٲu��@R����g@'�Z�|�@6%�e��@B,��p@D�����@DJ�ڙ*@Bv��M��@H�N^�@Q<�4@;@Uˠ����@W%�_g�r@W�;ݿ]�@X1i<�#@X|~��e@X'�u�s@XbL��@X7j΀8 @W���m@W`y:E@W��Z��{@W�Ǌ%x@V��B���@VI� \<	@U�A�K@U`�ߚ�@U���W)@T��g�xM@T'J�7�@Tl���@Stދj��@R��Ä�@R�N44G�@R9�a7��@Q�XX��@P�8N���@N��AW@MP���b�@K^���&d@J��]f$@I0,����@G�$.�@G�_e��@F�Q���@E����j�@F�! ���@E�̮w��@A�-�e>�@J7k��^I@Q��b�k�@S�l�c֣@Sv���e@R=�ȸ�A@Q��[�9@Q)ܽ�K@Q:���@P}�ac�@Pk�9@O���/%@O�����@P~F	eU@P�g���@QL�Й�@R>���Ÿ@Sa���E@T�ٶ~8s@UYz��@U�f��5@U�<��n\@U֊w��q@U��I�L�@U���ymI@U��QD%<@U�>z�J�@U�8��x�@U0�k�b@T3Ő�@RE4�+3�@O�|N�@P.�?��@L��֌U@JE��K@N����@N��$�@L|�Y���@K�����@K�g��P@J���8{@K��a\��@L�����]@O���U{g@Q�s�b'@R����g@'�Z�|�@5֬R���@A��.�@D�Wl��$@Diϑ��@Bo�o���@E���+=@N!��=��@U���e�@W+S� u@Wꆏ�$�@X:�/p�h@X�p����@X�.�\�3@XcK�=@X>&�x�g@W�q����@W���!'K@W���;a�@W�N�|@V�;����@VNF�b�@U��Y��@Uv(�D��@U(7l��@T�����@T�JƱE@T-z��R3@Sƺ�cT@S=��݅W@R�y����@RP	��z@QvQ��e�@PQz#i=�@N�qLE�@MR$`#@K����x@I�<(�1�@H�x��8@GJ���@F��=���@FfO�ګ@E�WM��@Fر�,�(@E�]���I@B6��5 �@Jm�V��@Q�ִ'�{@S�i;�d9@S�L�a��@R� ȗ�@Q�Hðޣ@Q��;\�
@Q�F�#��@P��Vڕ]@P�����G@Pn��%@P|���@P�3��MO@QL�s@Q�����@R��{�F�@S�U�6O@T���&W@U@���
k@U���Y�@U����@Uׁ�9+P@U��>
��@U���@U����ő@U�[W`@U�C@��@U-c3VD�@T^�\�n�@R*��K�@P��AQ@Pl��r��@L,KΌf@Ix��U@O��a=M@M�tq���@L��o�S@L��.�%@L&1����@J��a	�@K�v|d8@M����$@O�b]d�@Q�fܓ'@R����g@'�Z�|�@5t-��M@A�ω��K@D�S�L�@DI_�
�@G+�p��@EHH<Z@LO�}��\@U¯��@�@W -6�6@W�G��@XK�Yg@X�*%��@X|�>Dk�@Xd�x8+�@X:Q
��@W�{����@W�;�@W}¯�A�@W�v��1@V��U�@VU�w�M�@U�p�<�q@U���0��@UF�!�O@T�PF�^�@T��_�qA@T?P��@S����@SA��M�@R�Dh5=�@R4�9^2@Q4�(�M@P^4.��@NV�� ��@L�5+ؿ�@J�E�
3@I�O_�5@H(�~���@Fř�^�<@EmX�ݸ@E=V��|@FP"w���@F���QEs@E�g{��@A� �7e@Jb�(Zn�@Q���,=@T��;p@TBm/��@Rٰf���@R"�Q��@Q�&��X�@Q����љ@Q�����;@QH��GLo@P���0�@P��DC!�@Q)d��=�@Q��Θ�]@R1�#��E@R�x.Ly�@S��N>[@Tt��	V-@U��lX@U���ʥ�@U�2gX@Uٌ���@U��-M@U��eC�@U��s�@U�V4��@U�2��t�@U�f"2T@TT�&���@Q�0M@P��E50@O��@M��ɝ�/@I����c@Nk�����@M�����@L�I	�Y(@Lw���A@LR�O.�L@K�p�k@K�rj��3@M-����@O�t���@Q��z�@R����g@'�Z�|�@4��EvY�@B.�h`�@D��*�iJ@C��(fr@C��H�@@D���jj@Ia΋�(�@U��^�Lb@W!!��@X	XQ~Ċ@Xlf,@7@X�1/�6�@X�I�@Xc���r�@X1uq��@W� �;d@XQ��@Wgk@l�/@W �nK%@V�
�{8@V@oЋ?�@U�+	>u@U`~;��@UQE-O�H@T�y�7XA@T��Ax��@Th�:8�@S݈�-ύ@S@�:�H@R�f�c�@Q��V���@Q&�N5C@O���k@N��O�c@K�A�X@Ju@۽��@I]�[Å�@G�r���@Fx��n�@DeKE�K@E٣��i�@Fr��F�(@G&���@E���0�@A�ur��e@I��0�-@@Q���ӗH@S�X�2	S@T#�"O��@R\�F@R7�Q��`@R7��)�@RX���SW@R9y�o�@Q�LS�~/@Q�]a�a�@Q�%�Re(@Q�[��Z@R{��S@Rh,�f�@S����@S�,�;i@Tfe��.�@U2<�@UvGG)�-@U���j�O@U���L*@U���@P�@U�: p@U�z���-@U����"s@UD���$@T��/���@Tt��,@QL���p@PL;�)<@O�k�byi@M��O*�@K.J�1X@NU�NP,K@M�Q�rи@M7ǹvjs@L���tZI@LqV�8T�@K<:��� @L���Ƙ@MY�����@O����}@Q���^@R����g@'�Z�|�@5$����
@Bk1�w@Dçx���@C>����@B���@CF�qh@Fv�`�@U�>M�^3@W�c*�@X��@X�z��Y�@X��"�@X|ܳ%��@X^��j��@X$�h�h�@W�Ή��@W�d�� x@WJ4^�1�@WV�J�@V���Sh@VG,���@U�JoӃ@U�n���@Ui;j���@U5~o�"�@TӐ��@T���u+�@S�	9�Ȼ@SHa� �@R�x\@Q�K|>�@Pλ���@O��l}�E@M��J��@KO�TW�@J9����@I2H��@G:X>�@E��ߍ�@Eա�۝P@E���P��@FZ�-�L@G���I[@E���|��@Av�A!@Jߌ�D�@Q�3<�@S�	�$q @T&���x@Su��@Rr�r=��@R�v9S��@Rބ����@R�I,�!�@R�R�U��@R; ĞC@R���@R�y��@R(�� �@Rt�[�@S�V�>\@S����E@TI����@T�y�<k�@Un��J��@U�P�`Y@U�� s�$@U����a	@U���`@Uu{�@�@UMO}�L)@T���R@Tw�ڄ�@Sl���1�@QN���/@P����@PF�!(3O@MH���0@L�0.;��@M�V�Ek}@Mц��@M~h��^O@M�)J6�@Ly*𛞅@KY�M�l�@L&����@Ms���ŵ@O��2 �@Q����@R����g@'�Z�|�@5*S�ҽ�@B��ݹ��@D���{�@B��,J�@A{g_�9�@CB"�T<@D
w@��@T �5��@V�[k��@X'X���@X��'F<o@X�q��H�@XvW-Q/@XYuO�5@X'�kO@W�L�n@W��'��}@W�U�A@W)%O�a�@V�z+���@V>Y�C@U�Ԣ��i@U}K�̫I@Uw��M@UB�����@T�����@Ty���4O@S�g$��@SO(y$	@Ryq�B	@Q����@P��r���@O1VG�X@MJ1���@J⟛�Q@I����<#@H�:�if�@F���y�c@E�<���_@EY�;��@EՋF2t4@FV���'�@G�p��z�@F��Ӊ@A�%��@IԆ��i+@Q��-��a@SޝV�e@T!xc���@Sk?&@R�k�i�@R�e��@S7���l�@Sxb_$"4@SO�Z���@Râ���/@Ro���@R]�[�@RJy����@R�1�&�8@R�ʌ�]�@S{����y@T ����@T��D�@UM��q��@U��Ȍ�l@U�J��@U`3��-{@UG>���@U1�Ju@U��x�@T�6��k�@T%9P"��@Sf��׎7@R]IE��:@P���ȱ@P�ȼ���@N�=�fU`@N��Z��@L�mѝt@M���L@Mz`� @�@MQ��-�@L�C$�"�@K�+��''@LZ��i@Me,߰�@Oә�r�+@Q��VQ�@R����g@'�Z�|�@5��l@B�W�6>�@D�؟�q@BL�M�@>I��<z@A�Pc[��@CΞP]�j@TS�V�@V�/����@X%��|�@X��DY@X��Vֈ@Xwɉ�@XQ��G�@X�s:��@W�DhŨa@WbQj�s�@W�E�WG@WE�ʬ_O@V�e� ,�@V5ښ�
�@U���?�@U�gi��@UEa��@UB��%@T�](B7�@T���&�@S�Zi�a[@SE��U@Ru�h�T@Qzf�ꕻ@P_n��u�@N�,�V�@L�8u`w@JƗ��;@IKgȸ4�@Gƈr ��@FU�)!'�@E��!(�@E+���@E�D���x@FH��΢�@G����@F#l&Go�@A��ك@I�I� �@Q�h��w@S�f��@S����.+@Sh|n_˥@R��X�9�@R�E���@S�"�k��@S��`��@S�jD�@SVM0���@R�gyI��@R�j#
|w@RVd��D�@RQ��U�@R��SD@x@SKv��Ho@S�r�N�>@TjH���@T˔)q��@U;YK'@U9�c�R@UұXND@U�S�4�@T�M�V@T��*nG@T]���@SgY�L�V@R����8�@RC$�颕@R�5�S`@P�����y@N���`$�@M�<ٞE@L��F�@M�ul�D@M��_rY@M�C���@L�$(@K��}/w@Lx��Q�@MS_�=@O�7� @Q�X,:��@R����g@'�Z�|�@5�h��d�@C*P���@D��q}ӎ@B!4�'�@<�Ƭ]�@AӣOr�@Deq��d@S�384@Vs���@WԺ�g�@X�-��o@X�4�ױ1@Xp��D��@XC��GO@X��P�@W�𝥪�@WjB��s@Wa����@W6����T@V�w�P�@V"����5@U�*W'��@U�U��ٙ@Upo��@U1��H@U�H7�U@T�N*��@S�~/X_@S\�	[*�@R��:��@Qf�;e@PFS��64@N(�� �@K�V�L�@J:��PN�@H�u����@GJ�LS�q@E��#&1@Eyr��.�@E��h0@E�6��$+@FN��F-@G��ߜ@E�E&�%@A��;)��@I�صQ�@Q�_�	��@S�-�P@S����@S"&*��L@R��`��@Rٌ�L�@Sϓ?��@T2��ٗ@TX�pW�@S����6@S=�|�@R�����@Rf�J��@R]�m�L�@R��\�!�@R�^%�L@S-��>}@S���ц[@Tl� !��@T�S���@T��n49@T�	�6l@T��Ǭ�@Tywg{@S���>��@R�J�I@S����v�@R�+q��{@R�Jv4>@Q����@P��"�p@MD���p@K��Z'��@L����@M��u���@M�ˊ0�@M�$����@L�P���@L3s-��_@Lh	[w�#@M��GM@O�~t�t�@Q�6�_��@R����g@'�Z�|�@6%�����@B�1%B�g@DM�}1�p@A�>(w��@=;I�V� @B�]��m�@DY���]@Th��nTc@V]H��1 @W��+�@X7��R�0@X{��3~�@Xg��lA@X9{��e@W���W�@W�n��@W~�Ԅ�C@W�d\��@W&GW\�@V��8�a'@V8��Y@U����@U��F��(@U���d��@UH�!�@U8:	�%@T��:�@@T����@SC]�&M@RY�}���@Q9&�}�@O�����@M�ͨoo�@Kk�bI�@I�����@HoB� ��@F���{l@E�p�>�@EbD�Q[@D��m��@E�F��ɍ@F�V���@H6"�-�@E�� 	k@A�Z�lir@I�)��m@Q��$��A@S�"k�@S�S�a�@S��%��@R��.5�@R�¥��@S�it��@Tk�	,��@T{"XD��@T)�]ԍ@SV�,���@R�C��@RuPQ�0@R4kz(@R w.�j@R��5�@R�.#؋�@SC)ie@S����@T����@T<�(B%@T=`pre�@T��i:�@S�b;� z@R��mDt9@S���q��@S���+�@Sdr2�Z�@R��K�K�@Q�.N�͸@P,�29�@L0|�|��@JT��[�@M ��@M��Ɵ�@Mպ��@N ƙ�%@M�9��@L��Yt�@Lh]�'�@Mf3?o�+@O��/@Q�68#�0@R����g@'�Z�|�@5�:�~6Z@B�I?��@D23�_��@BC�W��@AG���@Bl\�/�Z@C��r֦N@SSsy�t�@Vz�7.aj@W��][8@XO�����@Xwb ��9@X_��5'@X'�~�TY@W��&lB@W�K[��@W�rZ�<@W���ռ@W-� @V���ӕ@VI���@U�3�o�@U�3�g^�@U�7�<�@UHz�@U/*��u@T���:@S�qL:j�@S(���T@RCAׄ��@P�y��1@Oa�����@LȁW��@J��J��@I)�0^�@G�:��@FC�5�Lk@E�!p�w�@D֬��?@D��t��@E��0| �@G����@H8���Na@E��g��$@B%��i@I�8�;7@Q|ʎG)�@Sf^���@Sϵo;C@S'�~;@R��h/�@R����2@S�3�<@@T�sn�@T��A���@T&9��@S\�hwFW@R�<�Ϳ�@R^�G��7@Q��e2F�@R�b.��@R���ն@Rb[���@R]0�:�@R�/�+��@S;+`��@S�Ѵ�m�@S�(U5�@S�|ɉ�@S/j�Ql@S�9�zO@TR/�HZ�@Ta� �C@S�+'3@R�m� �@Q�]&?@PEE��&�@KϢFP@I�}m|@Nh:M=�@M�6#�P-@N�S�]�@N"�R.�@M<�?�m@L����w\@L�_��h�@M�(H{~�@P��{x@Q��v0�r@R����g@'�Z�|�@6g���@B�?5C4\@Du
��?l@Boݯ5:i@C���@B�AUy@D)��d@Q�M%��@V�s{�1�@W��Rf@Xmsw1��@Xs�뗹�@XS�ш�S@X&�"��@W�?�n`@W�#�%�Q@W���aB�@WF�<�@V�b����@V�Y :��@VH��W�@U�c�5��@UƣË��@Uw�m�@UC�,$��@U$p��Bt@T�4�}l @S�0��@R�If_@Q��G@P����O�@NX?����@L>A1m1Y@J��s�_�@H�̋Ӱq@G��3y��@F�����@E"Zvf_�@D�,n��w@D�$���@E�x6�h@GWF����@HX�z�@E�5���@AƆ6���@I�M�z�@Q�j�1�@SOb��V�@S{�V-�@R�a���@R}��x�@R�3�@S�$6��W@T��u6��@T�دiP@T�:FU@S;wY�%@R��7�L@R���@QvlU�3@QMZ��^+@QFp��Fq@P�I>#��@P��hl�@QϢ���@Q�K�-�(@S
� �ɇ@S��]BI@S%��;�@S0y�Sd,@Sߞ�Hf�@Sy'O�j�@T<c���@S�h�u��@R~q9��@P܍&�@@N�����@K �1��@Je&��3@N�8pj�H@M�9����@Ng(���H@NY[L#��@M�YB{Y@L��㧡�@L���u5@M���쪀@P����%@Q��J��@R����g@'�Z�|�@5���N�@B����e@D�����7@Bgu|�x@A3J,	U9@B�Ʊ��d@D���@Ro/ܒ@V����@Wݩ���N@Xs��b��@Xo���@XJ�y�s @Xښ�Х@W����[@W���f�@W��#}�@WI�4�[�@V��}og�@V�2���@V?�r�=@U�&r|a�@U� �ϯ@Uk�V��@U:��h7@U��Ǹ@T�<����@S�B���u@R�q�c@Q�d'=A�@P7 �#�@M�G�I��@LN��a@Jj�ǣ�-@Hjދv�@G��k@F���@Ƿ@D��`,y�@D@1�C��@D��n��@E�f�T{@G�����;@Ha;a;@Fhs�:[@A�n�^ZP@I�����@Qj�I��@S4�T���@S`����d@R��p8�C@Rqo0��@R��E&@S���et6@T���Nz�@T����@S�u�O�M@S�#���@R/9� ;z@Q�,��H@P��Ǭ�@P�����@P��p�Y�@O���1x@L���5:d@Km��k�@N��:��@Q�E�<�#@Rթ#�#@Rݰyk@S�R��@S\=�:G@R�{�3Y�@S�2 �%@SA]A�@Q�L�I�1@PY�li;@M6{�$�@J�_��K@L@WD��S@N�>���@POc�#D�@Pi�:-U @N�f����@N6����@M@�D@L���W�(@M�2-���@P8��W�@Q�6  �@R����g@'�Z�|�@5���$w�@C g>�m@D��JՖ@BŁ .HB@C�����@D%"�e�@E:��sσ@P����k@Vi�[h��@W���6��@X7�ZR��@Xs�S|@XCL����@X��m@W��l�"%@W���u@WuZ�%�<@W#�c���@V��H��P@V�d�me@VB�X��@U�����@U�����@U���'@UG��@U���j�@Tg���U<@S�$R.g@R�2[(�%@Qm'�Z@P^C��y@M�d��@Kʹ�C�@I�Z�	@G���7�@G,���w@F$)<ɬ	@DՌ���@C���_�y@D��ft�a@E��E�@H.5ڔ�@H�M�Ł�@F[���@@B\��@I�{ɸ�%@QN�[{E@SW̱=�@S<XX@R��Hq�@R<w�8�@R��m<m{@S�G�+�@TY|��Q�@T@�n�!@S�"�~�@R�MY10�@Q��,̘�@P�?%��@P]�Ɓ�@O���@M�\��@I��J8�@Dя�M8h@GX�5���@M!ӆ0@P���G�h@R$��`I@Sߕk(�@T�]9@S���a�@S���c��@R�ol�f	@Q�B+��@P��8���@N����O-@L�fB8
8@JZy����@M�4�1@N�Cy�@QR7� �/@QMV��4O@P8<|?r�@N�M?�@M�C�1�@L�+�؁�@MŠs?�@PP��]S'@Q�	ւ�@R����g@'�Z�|�@5t�?��@B� �t@D�mo�� @CM���Z@B�-���n@F73���@E�� ��@R+t���@V2�2�@W�kHjS�@X^o��@Xs�@.8�@XE����@X��Ir�@W�d����@W��#�e	@W^��A�@V�5*t#�@V�ZGG
�@VpNz+s�@V3��)�1@U����pk@U���A�}@UzX���@UL�$>T@T��e�@TVZG��g@Sqk���@REک��y@Q%�8.d@Oӎ��@Mx{`(�U@K7K�p�{@Ij��.m`@G�v���@GUmܭ�@Fy9aLd@Eig�8�@C��{^�@D�N �/@FwC�W|�@H]/��Q+@I+w�@FyC�ohc@Bzo;�f@J:f`�u@Q;�T�9[@R��f938@S�U��@R�:Q�C�@R�j��@RO&�n�@S0�l@S�>�FR6@S�bh@S]S!�3E@RJL�'�h@Qb5��@P��S�H@O��q�@M����@E��m9�@Az�X�:�@G�T�#�@I���4u@M�ьo�W@O��6Q@Mg��m�u@Pш�~��@S1���L@T^�SC@@T-��7 H@Q�W=f�K@Q��/8�@OgbՒ��@Mu
}K�@Kcn15�@Iη�?R@@M�kϬH�@N�W�i@Q �c��@Q8im(�@Q!K!���@N�o(}ܠ@Lݦ5��]@L�����H@N
�sܣ@Pc&�h@Q��0Y�@R����g@'�Z�|�@5�{��@B~�|�f�@EJ9>�å@C�7ɗ��@?�[��b�@Gb�u��K@F]�\��@Q�A�jL(@VӧA~@W��˾ �@X���~�q@Xv���[<@X?��%�@@Xdж�O@W�m�ii�@W�!!��@WPf�~M@V�.ijd�@Vxh�k-@VT����8@VM�**H@V�\G~�@UՂ�iZ	@U|4r�	%@UI���o�@T���\@T^��G3@SA��`@RQ�")/@P��:q@Ov�U�@L����@KL.��(�@I@Q���x@G����_@G�e�;�@F����[@E��E��C@DK���?@EAt�u@F�U�%�h@HK�;�XA@I6���f?@G�қ�@C�[�Q@J�{�'�L@Q �h8�@R�g�;++@R��z��@Rw6��g@Q�����@Q���-��@R���`@SHlTkjM@S�w�@RBc �@Q��D�A�@P����@OSBBC@O�Vٔ-!@L� @Ax�U�{@@t�E�+�@DTi�>�@H�)lo�@M.�Yȵ}@O��e�@P�ޛ��1@QC�m��@Tnk�d@T�{i�lk@S`��{@�@P��Bc	@Q>�?��u@O3�u�`@L3�t�@J����{@JiK�yX@O�5L��q@NH��Q�p@P��x��@Q?*�@Qm�/4wq@O����m@L�T���@L�Sr�{@N%s����@Po5s�> @QȢ���@R����g@'�Z�|�@5�-F�@B'o�&�@E�Sy��@D}��2ڠ@E��<|�@G��魱@G�S�&@R'J�@U��mY@W�\#v]@Xp6�}�@Xn�Ν�M@X;Ѵ>�@X���%@W�C��$�@Ws��eTe@W>0�M��@WI
[%@V���?��@V2ab��c@Vm)L�	@V!5tw��@Uģ:ҧh@U�����@UA!|�@T�ǣ��@T�-c
�@S���@Q��~)�@P�i�Ļ�@Ogy�
�@L�M	��k@J�@o�`@Idx�L�@H�/��@G�p�ڻ@F�?�n�@Em�u��@D���)f�@E�\z�P@G���9�@H��Oq��@I�1Ks@G�<� ��@C<.9��>@Jy��{X�@Q$*��I�@RS��
]@R�`�U@R{�2�I@Q����s@QO!�&@Qݟ�+�@R	�^ȅ�@Q�4����@QNK�!��@P���i�7@O>���D@MFqXD�i@F�KJ��@7�"
�֓@4cz�*o�@:rypm��@D��՜��@L��?�@NՕ�$�@@P�[>=��@R�Ok�b@Sw��߄@Te�ײ�@S�8��N@R���У@QqF�᥯@P�L��@Mb��[E@J�G\�M@J�Y�~Q�@L'�9��@P8�]�S?@O���R�@QO���u�@P0�f_�K@Q7�_�5�@O�Eθ��@M�#9;@L�-�� `@N)c���@Pw���pQ@Q��l�@R����g@'�Z�|�@5�1��@AŬ�V�@Fc�����@E>��)	@E�=��{�@G�g�-x@F��-\�)@Q���K��@U����u@W�@Rͮp@XEa�bX@Xj�f=co@X3b��M@XA�
��@W�9��6�@Wd�l�lH@W4q����@WO�h;Jh@W(x+Z�@V���Y@Ve��*{@VP�+R�@U�!5#g@Uu�5��@U!�i߃@T�(�Mm@S��Ӆ@S�K��+@Q�@Lgc@P�ّ�>@N�ɉQX-@L6cIKD�@J�)Vj5�@I9��߆g@Hi7_c�@Hr{�@G3@;���@E����1@E����@E�t�+�@GQi���@I/WIHW�@J�y�e@G|N,���@B�:sL�@Ji�@�I�@P�� �]l@R$}��@RQB�K�@RE�IW5@Q�x\�@P��_��{@P���U@P��m0&@P/��+?@N�c���}@MЫ�@E�ȫ4��@:B�mm�@2�xv.h'@0L���ն@3�[�WM�@=)2N�P3@E�����-@K8Z�.��@N34:g�@QGC㓠�@S�$�;@@S���i��@Q��+�@P�fτ@P��'0�@Q�P�A"�@P����z@N�֑@�@HE�X���@KZ
�`u@M����@N�g���@Oւ�HU@Q₨�K@PI��e�@QU��1��@O�賺�?@L�&،��@L�v"K�@NJ(@Pv�#X	�@Q�Ln\�|@R����g@'�Z�|�@5�̲��@A�B,}�e@F��p�I#@Eޡ,���@J|;�� @G�s'�z�@F�6����@S��� q�@U؝�8W�@Wl�����@X ��k�@Xi��#ȋ@X6��9�@W�<��Q@W���� @WS.��u�@W <l1@WD8�х@W
G\D�@V�5�D3C@Vk���@V8X��޹@U�S�gb/@U^2t%�@T�49[{�@T�p�H��@S��Z���@R�m�M~�@Q������@Pi����@N%�B��@LA�X���@J��d�@I4-@��@H��b��@H:�j�y�@G�+��}�@FJ?����@E��m.�}@F�֚*<d@G�����+@I?I���@Jvy�,��@G���~�g@B�l�Z��@JP�uuP@P�p{7�@Q湉\6@Q�{��S@Q��T�Na@P��N/F�@Oa�o5pe@N���C@Mlp�G��@K��?\@Hq���x{@D���a@8��>�@6�#����@/�ƹ_NA@2��t��@9\�IO@Aq�/e�@H���7v�@M��S"�@P:`���@QF��rK@R��%�@QRw5��@P6�(���@Px���c@P��!�i@Qy��)�@PNo�>��@N�O9��@Io�;@�@M�x��@O�%��@O��2B�1@PB����U@Q��H��o@P�M�ǯ�@Q��_}@PV�;���@M/g3{c@L��o;i@Ne��a��@P�2��z{@Q�t�B�@R����g@'�Z�|�@6<�J���@Ac��hh@G.��5+@Fz��`�@H_�sF�.@G��HR�@H�}c�2@S��� �@U|�ǩw�@Wp���w�@X?�}P�,@X^]/�P�@X3�d��o@W�5�'��@W�c�P��@WG#5�7@W�)��@W\�
A@Vض7��8@V���v$�@VfqH�%}@V+����[@U�Q%��(@U{�C�=@U�"��@T�jv�l@S�+�"�@R�v��@QWS:1H�@PT�n�@N#�Qߠ�@K���+@J$����@H�P ��@H�V)Y�@H���bE@H܊��Q@FÒq�"�@F��f�@G�c�힏@HC�2f@I���d��@J���)��@G��sH�@CX��@J�,+�@@P��٤o�@Q�,`��=@Q��Ś�@QX	����@O�"dc+@M�_T�@K�t*d-@I>�q^�@F���@C4�?�.-@<JIE�@;&a��g@2��p
��@2M����@5"��&��@=L��E�@Bt�i�@D#�&��@Lh@�P(�@Pū8��@S�EX@RX�?���@P�I�%Yu@P�"���@PB)tS^�@P�:��r@Q06{pe@NH�:O�l@KzA��k@J��/p3@N�A���'@PB���#@O�s�,�@P�]X��q@Q����}@Px���#@Q��u[@O���� @L�����@L�}�(�@NXe0So�@P��-Z�H@Q�2y0�!@R����g@'�Z�|�@5�X���@Azn�H@GNJ�@G�p�@F���h�8@F��\��#@H��4���@Tn/�^.@UA�+�<@Wl���b�@XPt���@XT�M
�s@X)��( �@W���z�@W��A�z�@W;"����@W;�0@�@V�uǾ�@V��ް�@V��i�@V]扙@V*]�E�@U���xx�@UzAq�{�@U*�x�@T�����b@S�F`���@R�pk)�@Q)�t{@P%@lh'@M��v�5@K�\l�|@JS'���@I?)�tk5@H��<���@I)����@H�л�}@G�[�5`�@H"���@G�ɞ1��@H�����@J;�^9��@Jw�)�m�@G'�A��,@C�f<��C@J܂����@P�t���W@Q���>��@Q���u,@P��t���@O��'[�@J�����@H8���ٹ@F&~)��@B�W�<w@@�Y�0O@>��V�X@6����\�@6$���D�@5ʖ����@5����t@?Z���4�@C��?@Lp_87TO@O�-��(�@O�h���@O���B/�@Pdu��L�@P>��@P\ &38�@O�k�Y�/@P��Ɛχ@O���h|@Mo���5@K�U�6"�@L�����@O�U�t��@P�[m��@P<	N.`@Q�~�@R+~��P�@P���7�@QܙX�P�@N���iӤ@L��3j�@L�7^[@N_�p�@P���Vm@Q�0�_ �@R����g@'�Z�|�@6[\���t@@��쓙@F��J�@G4|�@G��7�N@F���ӁV@Ha�Tq�)@TƪB��@T������@WC�8�1�@Xs5�B5h@XS�}�ա@X�4�.�@W�Co��t@Wc��E��@WIDM}@V�B���-@V�&���@V�T�d�@V����@V+J]��$@U��`q@U��y��@Uz�
�`@Uw�x�@T�d)��@S�Ƨ���@Rp��'#U@Q8� �H�@PՃ��@MܪWv�@Ke��i$@JLt.��3@I��z�د@I2��(�@I�!��?3@In;��7@I/�F�Д@I ����a@H��
�@Ia|U|h#@J�M��b�@J|�C�@G���pZP@D?,�#��@J����(�@P�{�u@Q\���g@P�W^�)@PTm�h�E@N#yG{�p@H����M@E�`���@Cߖ��`g@@1����@< �|�@7��B@8۾��M@7	mo��@7H�ޣ,u@7�5t���@>f_K�J0@E�G�%IW@K���-$T@Q.w#,@P�qJb@PM�m�@Pǚ��@P	}(�a@P���!@N��u��@PL�3t�@O��w���@M�[����@L�CH)��@N�&��0@Pr"���@Pݠ��]@P�t$q@Q_A�r�@R$�4s8�@Q�ٿ��@Q��~�@NéL@�@L�{�2��@L�-�C�@NRg����@P�q1k�@Q���>O�@R����g@'�Z�|�@6}р]��@@��\��@F�s�=�@G,/g���@K���w�@F�u� Oh@GYE�c8P@T�Z<,G@T�,��l@W$�#qB�@Xe�7�@XX�֧3�@X���[�@W�,���5@Wy���/�@WE��h0@V��^��#@VƂ��M@V���]�@VUYِ��@VqX�1d@U�Q��b�@U��F�>�@U�l��,@U�2��@T��5n��@S�{d���@R4w�
�@Q8��z�@O���3�o@M�S
��@K?W%�S@JY�H�"@I�.z���@J.�̛@JM�C��@J-����0@Ja�ro�+@J-��M@I��f}5@J6ԝgl�@K��5J�@J������@H&��p1�@D�z��5@K���@P�%�(i@QK�P���@PlZjU-@OQ�	��@M��~�@G�,2T@C��L�@@�݁�@4Pd�$@3����=�@7���
I@5�lK�Zk@7�7��@9������@<�a���@?
Ȏ#P@Bξ����@Fo�4@J`��uv�@N6� �h@O��{�H0@O�Uc��@P:�@�T@O��T��@N̽`�@P{��@Oy��<"�@M��Ka"�@L��V�c@P���e@P� ]�@QyEv)�@P�Y�	�@QS'��qk@P�f>���@PvX�O��@Qi�99�@O>�јF[@L���:�@Lx����@N8���E@P�`��@Q�g@> B@R����g@'�Z�|�@6t��ua\@@tg��z7@E�PG�@F����V@H���a�@F�.�o��@HB��i��@Q�L c��@S�/T�(@W=P�k�@X[�2Ҥ�@XM�е�@X���5@W���@W�<�W�@W0�Xl[@V��7r�@V���� @V�h|�Tx@V4x��F�@Vir0E�@UӘ��Ys@Uƶ�@U�3�Qa#@U�	��@Tv�=B�@Ss��۰#@R8V$�dS@QJ$^��@O���Q@MS�[�@K��U��T@J>^D;@J,4���,@J��9�^@@J��^��@KEI <��@K$+��a@@J�s���0@J�P��3�@K'��<�@K]ޟ�@J�{���@G� �c@D��#/oA@K�O)0@Q-=��@Q5�d���@P$#�9@N`�S� @@K�)�?�@FByvi�]@B�s7��@:)m�N�@6<BI@6g��A@8;���S@9,�8�@@�M���i@A�G���@@��04#@@A�k��+@C�7c�	�@G!(��@J���W��@L����q@N�C��21@O�6N��1@P��b�@Oz��a�@P�����@O��Եu�@O��l�_@L�G����@M�k;�s@Pi)j�
�@QC���_�@Q�E$�@P�_�4�@P�D�k�%@Q��@PH��G@P�?����@N�Q�w[@L2����@L<7�[�@N%̹^!�@P�KKI��@Q�X2�Y�@R����g@'�Z�|�@6J�Q�{@?�k��'�@D��Ο!@E�&��c@G��n=�@FvK���@Jc��*��@Lc�^�@R�.7d,�@WR�@��b@Xp����@XP���Cg@X
5�ș@WÜ'�DG@W���G�@W;~�¯�@Wg�Y�@V���	4M@V���=�q@V9����s@V��\��@U�����@U���V�@U��%�Rd@U#���|�@Tk?�@Sa<O��<@R(�l�@P�Lq�}1@OH���p@M{<��G@K���O5@J�_6T<q@K^��CQ@KI<Jc>�@K�q���5@L4#��@Lo�OP�@K��?��@Kш*Y�h@L�]�Q�@K�} ���@K*$CK@G��f�x@D�I�@Lvyp�M@Qz�v��@QF�P���@OʍVm1�@M���}�@J�Mf���@E16k��@A�U�i�@8Μ\d��@;\���/�@@�p�\:w@A�Tza�@E�e� @H��0=5�@H��<�u@E]!��Y@E�ap��@F�`���@It�Cxq@K��%�gx@M���L�0@O�_9��c@PYF�e��@P%;̜j�@O��>u@N׼���@Na�aJ�@O\�u[�p@M5Z^�0@N����g@P�B;鈴@Q�@ig"c@Q�f��!<@P��AG�@PǏ4��@Q��je�@P�����@P��8���@N��2T�@KrWh.S�@K���&�I@M���=|@P��'s@Q�y"3^�@R����g@'�Z�|�@6R���@?�y�R�	@C��쟻�@DB�lRo@D��	T�@F4ѩ�	�@H#\�}{@G���	�@Q�6a��@W.y`p��@XN�QU�@XKW���@Xq3�Р@W�a�n,`@Wq���M@W0��pŨ@WlG#�@V¶y�|@V�����@V6���x@V���S@U�t�ĸ�@Up��*	T@Utl\/��@U��O"@T��8@Sl����@RIky�@Pč�i5�@OE��u�@M�ܹ.��@L!����@K�מ�@K��%@LI]!�a�@L��^#@L�U&�z�@L�`�U	@L��#�f�@L���c�@L�r��g@L��S��@KQ֋�Y;@GW[�!8+@D�f{Ma @L����@Q����"@Q��r�@O[�a���@M%)�Y�@Ij�T�W@D����3@@���e-�@:�\Ls8g@E��2z�U@L^_꾌5@JV���h@LuJM�ڵ@MN؎�Y@LP���@I�c�@I۾%�H@K�h���@L� T$��@NM��iy�@O�a��A�@P�4[��@P[��o�o@Pb��{P@N��&�zQ@M�V��k@M�pL�@N���u�@M�w���@O�����,@P�i�w�@Q�oCܱ@R2�te!N@Q�!3뱋@P�x��@R,��Y�G@Q���L@Pc_�d��@M;�g@J��f Y�@K���}�@M�@�V�g@P���,Y�@Q��u @R����g@'�Z�|�@6S�$�@?j�kH@B9�@C^�V�&h@C�\^`@F���!�@G�g��),@IO�MA]�@R��Ah@W�Ty<@X2�˽>�@XE���]�@W�UR�A@W��p���@We�d<@W�e5a8@V�� N5@VÔ�?`@Vs�]|�@VG12��,@VМ��@U�0���!@U���)��@Uu����@T�Z*�#�@TzS�"X�@Se,�s-@Rdz�
S@P��^ޛ�@OV�;��=@M��$Y�@Lc@!3�|@K�w�SA@Ls�ld�c@M7hqm��@Mzᰡ8S@N#H�=�@M��,@M����5	@MK�W�@M���R�@Mc����@Kg&d�J�@Gi�u�@E�;|*K@N:?P�i@R�0KF��@R�@��a@OS�3� @M5�oh�E@I_��W��@F��e��@C�a�$b@H�w�X�@I�>�m@L��@L� t��@L� �mw@Lz,it�k@N��ئ�@L�}M��d@L�e�A  @M ��˪�@NP�X�@Or�����@P3�g�@Pb�!i�@P�;��g@P�T�>��@POI�;�@PR?Y4@N��E��@M�4�S�@M�*tC�h@Pc�#F0@Q9Pp�l�@Q�_�|_�@R��h�?@Rx�'}1@Q����O�@RJ_�GF�@P��J@Pp���@M�SK��%@I���I��@Kd�=��@M����w@P���Xm�@Q�VUb@R����g@'�Z�|�@5��j��@?;�~�@@��'��@B3����n@D���J@E��)F6@HjW��@I�e��@T��P3R�@W(G���@XO��!$9@XBp�,�-@W����|'@W�r�$�=@WFoШg	@V��Q}��@Vܜ��?�@V�_�5J�@Vb���@�@VA6o�@V��ѡ�@Uř;TL/@U�!�|�@UlZ���@U.�Cs�@Tg!�z	�@Sk�-�@Q�C��@P��M$e@O���J
@M��["E@M=����@L�R�X�@ML�)|@N;��y�0@N�I���'@O"�U�8@N��Rn0C@MӺ���@M�?�o>5@M�ȑ^^�@M��9_�y@K�y�_Q@G��gc"i@E���5@N�T���@SU�
-S@R�r�W}@N�Q\��@L."�68@JbT���D@HT�'[p@E����`@H�ޭ?@H!͎��@Ic���@Jx�ƍ�@KW\vW�@J���=�@L��؈�@LI�p��-@L�V��a@M�L��|@Pxo.q*@Pj&��%@Pneb;�7@P���3�@QAį�S@Q1����@PqV�S�@P��jS"E@O�4��j�@M�p�L��@O��ٗ�@Pa����'@Q<#��$@QJ)�Z�0@Ṙ��X@R�K���@QCNLr�@Q>{���1@Q��#�@O�sF��@LBu*L�e@H͊��@K��uz
x@N�x>��@P�U���@Q����@R����g@'�Z�|�@5��N��@?U�DS��@@js<`�@A�3���@D��K��@D�Q-�N@G��V	A@H�˾+�@T�M��f�@WA���
�@XH�L�k@XJ��]n$@W㨹Ƈ	@W��_�E�@WFQ��$�@V��H�a@V�{8@V������@VOj%���@V�b�h@U�)�S@U�e.��]@U�x��2@U`���r�@T��y.mo@TF��J,�@S%��g�Y@Qǩ_w	@P��#��I@O�%�(�@NSR���@M|��DS@M�	�@��@NU0'[��@O�*���@O��R��P@P=��n@N�W�םx@N%ߠo��@M� ��#@N�J�<�@NCyM��#@M<PB5�O@G�� ��@E ���@Oj@E��<@TD�\P@S8I�)A@OՄ�q@J��c�t@K�����@Il�� @H�9m�@E��>��@A(.q�rU@E&��l��@Hy���[@I�5�1+�@IRV$b|�@K� 9��@L���+��@M��m,�@M�����@Ofug��@P�×�@Q*��O�@QK.ʄ�@Q`����@Q��!}@P�W�@Q�f��m@O�g�4��@N#��%c@O�j܍t@O��%���@P�Q��@P�pjo��@RpJ�}��@S��Xi��@P�pG�H@N����M�@QKv�@PH_�� �@K=L��@G�nl�@K�:NR,@N%���c@P�h�3W@Q�,���@R����g@'�Z�|�@5d� �@?\+H�D@?B0Ϧ�@@+L���@Bx��>@D:gvt��@G��!<:@H���d@T�&���@WG���@X%s�/z�@XL��#H@XCi@W�̓���@WN���@WF�8� @V�O?��{@V�\� ��@VOF�%u@V�\��-@UԴdzI�@U��#?�@U�'!$�@UgjԻ.C@T�ċ���@T32�M�@S5���L@Q��Oy^@P��1@�t@P���ա@N��gD�@NS y�$@N�\j���@O��%��@Pk(3s��@P���o��@Pl����	@O��77;@Ns��t�]@Nm�A�@NQ_�J�@OHT��~@N��ؾ��@J�꜕�@G��,BW@P��ʡ�@Tp"E��@Spj�~�=@O���ħ@I"C��b�@Jwb�X|�@I� �̗D@Niǐ@@MbsU�@F��y�d�@AcL2c6,@F17;�@H���'��@H����@J�&���G@K�L�sVM@MǓ)E�@O鉘45@O���M@P�;@��D@Qx���7@QiS<��m@Q�j�0�@Q��%L�@Qa-���@Q?i�@N��K@M����	k@P$#
�)~@O�J��
�@P�fB�G@P�i��s@Q��^��@R�&
�y|@N>9�'@O��r�]�@P0�g�@P�}�&�@K7��p�@G�����=@K7��u
7@N$�Ԃ*�@P�g�d@Q��v~a�@R����g@'�Z�|�@5�>���@>�/顾#@>��K^�@>85� n�@C7�C�@C�\����@H>#|�
�@H��k3Ȝ@U6�D�ٽ@WvVo���@X2��@XH*�hK@X���@W��Z� X@WT� N��@W�V�@V���D�#@V�E)���@VW-���@V&��[�@U�w��e@Uת?�	[@U�$I�0�@UIް��K@T��䩂�@T7#B{@S2$��@Q�H�@P���VZ@P�)~z}@Oy�XM� @O\o�,�@Oӹ�L��@Pjw%e��@P��O]@QG�o��1@P�c �za@Pf�+?�4@O�m�
�;@N�!���@Obr��	@PΘ��]@N�ǉ��@J�'	��@I�N��*u@Ql2�k@Tmt��=@S����ߴ@O2 �=�@J�,��SX@FÍ���@K [�(:H@L	"��@L���2;@M���z�@C�r&!g@F��
��@J�X�w�P@I��	�D@H�d�e@J���*c�@LD1z@O�B��`@P��&�̣@P�h�4W@P�77I��@P�,�1 �@R�'���@P�;�0�M@P��~4/@P��5��@NR��%E@N�fp�(�@Pf�\���@P'8�NA@P��a@�@O�:��B�@QG�c+v@Ql��U��@Oa�q#�@Q�yPr@P�~j`�@NK�]X�@L�Yp_\@HR��B�$@I���)�@N�Ç^�@P�c?>�A@R&���iH@R����g@'�Z�|�@5:'ȯ@>5���@=�$XQ�@= ���@DLz�Ά@C��k�^@H�l�OV@Jt���q�@V!����@W��yZ�@X4M�&��@XEK�̛@XD���o@W��|9��@Wh��n(�@W(z�r-@V���$�@V������@V\u{Α@V%eV�7@U��M��@U�V:��@U���eh1@U.h
��@T������@S����J@R�&�ճ@Q�T�A@Q��n�@P��4>�(@P*�i��@PN�]�6�@P�ǈ{l@P�Vl��@Q���g$/@R �kꅳ@Q��1E�@Q"�#�u@P�roc\�@P7���@P0e%>@O�!����@L�� 4��@Is#U�@Ib��bE@P�_T#�`@TEa�mJl@T0-|n��@P�ȈUܬ@J�x�H��@M\L�Zp�@Q���U�(@JL��X!@H4���t@H�`�"-�@F���G@IFeږP@J����qL@HpW�`qs@G����9@I����@L0�'���@O(LP5��@P��\���@QĭH�R@QD�L�@P��X��Q@P�_���V@P�n��"@Q�j�SE�@O8 L�9@N�
z�@O͍��U@Py�5�5�@PHvHg�@PW��*5@Qa�m��@Qc�p��@R������@P�T\�?�@PwK(�k�@P��E��i@M�NzZK4@L ���g@H̵�ӻ�@H��/�@N!�DZS@P�����@R-�>��@R����g@'�Z�|�@57���4�@=�at;X�@=q¹X9�@<.��t��@Cn�.P�@F�c��@HQ�	�l@Mn;���@VMx=�@W�>���@XQ��V��@XK�.�ѽ@X ���@W�۔�JX@Wv���S}@W�#��@V�܇u@V��7��@Vbj>E@V)0�#d@VnNb�@U�λ˭@U�h?�{]@U=#���@T��G��@Sܳm���@R�́��@Q��b�:#@Q��@P��7m?1@P��dM(�@P���@Q��@�@Q�j��'@R�YJ0�@S9��@R����@R*Ү�a/@QJ�� Cu@PX-��@O}�>�(�@M���
�@I��5�@J-�LO�(@Ly��To�@Q -MCW�@S���,T@TBi� �f@R~�� x@S8�?�@S��5}u@R��D��@L�Q��@Hr����u@H���¯@E��oR�@D�����#@D
�x�{@B���~_@F��~��T@I�+>9+@Ky��T|@NEs�nN�@P�0�ϊA@R���	@Q��/hGc@Q7��O��@Pҿ�e�@RL]M�@Q�%ؼҰ@N[�c���@N�o��@P?�6�@P�n�8�@Pl
GKH�@Pɤ>x�W@Q#54�@Q�*UwX;@Rl�Ιw@Q���++�@Ps��`�@O�|�Ru@Lب��5�@K�f��M/@G�Ͻ7W@H��"_�@N��N�-@P��	D4�@R6�%��@R����g@'�Z�|�@5y�hF@=�a���@<��æS@;�2�Ϝ�@C�`�ֲ@H�y��!�@HS\��g@O?;�W0@Vr3��@W��3S �@XgZH�M@XNF� �@W���y�@W���#@Wt��}�@W�?<@V�g�o�@V��6� @Vl�Y�P@VS�_�]�@V����L@U�	�yc@U��xTk@U!��)4s@Tq�DW�@S�$��'@Rֹ�Ț�@Q�A%�B�@QOh��V@P��<[�t@P�"��U@QY��ck@Qїl��@R��oW@Sz�;,�@S���`G@S�
E?�T@S&LM!@Qأa�T@O�AI#�@LY+,�>�@H2��DL�@Ftǥ+/@K^5>�nu@P�BRҤ@R�@���W@S.
gwO@Rj�r�@R+BG@S� l1@Pd�[h�6@Mk�����@J΋���@Ht#��]@G�EEq@@E�+D�l@D:��q@C��=��@Hf���%�@H��*L�+@IօWV^�@J�jlY\/@M��y�T@Po��5P@Q��d���@P���b&�@P��_x�4@P���b@Rm+{�H-@Q�>���@O���Z�@N������@P3�`���@P���Щ@P��E���@Q�6�Y@Q��F��@PQ`��@Pu1d�@Q���$�@P_�:b̧@PͶn�@M�65gS@L���Ք@H�M���#@G���#�@M�B����@P��F�[@R8gŤI�@R����g@'�Z�|�@4j��{i�@=h����@<](��v@<@��TP�@Fm#@I7��͔@H;igD�~@I�n��r@VmJ宼@W����@Xq���{�@XO��N8�@W�ph�@W��b�%@Wkv��ʰ@W�T�'@V���4�@V�y�Q@V]�VcT@V7&]�$0@V��~2h@U�2�ޗ@UTERu�@T�n�[i�@T4ϱ�߅@S����6�@R�=vH[�@Q��$e�i@Q/
HЪD@Qu��@QW+!�Б@Qӳ���@R�=m�m�@S��b �@TE@�$�@Tq���]	@Td�	��@RP�"r,@Oq�<��@LaSs@I���>��@Q>t4d;�@Sv��0֛@U��>�@U������@Tw�7�@T�-��7@SD\�4�*@Rc��\�@SwA A@P��II�@M�	p#@Iԩ̶@F�2�,<@E��$��@FY�q	�!@FCf���@JT��5�@J����'L@J:[��ge@HHj
��@J� �U�H@L16����@P84����@Q�o@Qj��c1@QD߸��@Q�*�7=�@R3L���@Q�(߷g�@PQ{�W�@P��-@P��i4��@P���"h@P�VM�y@Qi����@Q �W�c@O�{PG�0@Oia3"�@P��ٞey@P6S���@P���@O)/�{@J���y{@Hk�I]x�@F�S$y@M����@P}����5@R:Ǖ$�@R����g@'�Z�|�@4� �sy�@=*9C|ܪ@<F�nm�@<��[@H\}�8��@K�,���@H����#�@M`؆��@V\~p��:@W�s�H@XmR.�@XK��ο�@W���8{@W�0�"�@Wd�$o��@V���3x�@VԸ�n�@V�a8)�@Vl��l@V;���S�@U�[oܕ�@U��`��3@Uѡ���@T�6G�@S�"~�@S )�2@Qҹ	H{@Q!v��M�@P驅�;'@Q>W��~1@Q��bM�y@R��`G��@S�fv8�@T=Ym��@T��~Bm@TK��6��@Q���Z|�@I�JbV�e@H���^@K�=�4i@Q��Q�L�@V?��Z�@V�{��2s@W<��@W<ɣ���@VZ�7�g@U࢐훀@V#Q�\L@U4���@T�>���k@R�MMH@N[��7�@Jw��h"@F�@��;s@C�҅r�h@H�de4@�@F��c�O@Gs{�� @J��iˋ�@M_��]�@N%;���@J\n�Թ�@LJ���@M��q��@Q/c��@RK.����@Q���@R�����@R"a^Κ!@Q�Zf�B�@P���A@O�U�Y��@P�빶1�@Q�M=@Q�	f�@R��*�}@R�L��[�@Qd�-s��@P	�p,&@P*����#@PWr��8@OڄE�۸@NPKv��@I�y���@G؏���@G��Ġ@M���K�@P�'a��@R�Çx�@R����g@'�Z�|�@4T�R�%@<t�Y�@;_����@=z��Z(@P��-C��@P��4��@K����~@L>]�O"@U-rN���@U�n:Ō@X<t��E@XD��Q0�@W�u��s@W���U@WYq�;@W�׿�@V�v�%nD@V�I�3�@V����*@VD�D��S@U�^O� @T����@TD�����@S�.�K�@R�<���@Qr.�|�	@P>��5t�@P㜄��@P��C�[5@Qo'���H@Rj$�>@Sl7!Jd@TI�U��@T��p�P@T�m��i@SHJuh�'@Mr� Lk@B��QXe�@M�w�ac@TT4r�1@Tݞ��H�@U��GAt�@V�l���S@W&U�od�@WI���@Wd��Vn|@V�۬:L�@V�G� ��@W1\T&͛@S��bRA?@Q=証�@N�v���K@KR� 0�A@J�7��@G��)�#@F�znq��@G
P�e)�@H��� @KK|�O@M,z|�@O�B�ae�@N�j���@KH$��@L6��:�u@Pg����@R�q]�@Q[y��O@R8i�y{@RN��4�Q@Q���?@P���H�F@P-��"ZW@Q/y1Ew@R}���X@Rq/���@SQ���;�@Sa���Qy@R7?9��@Q/#x5�D@P�+/�BW@P���XW@P,Yq�@Nڕ�k@K�}���@F�[�]8�@GS����@M�O���@P��k�9'@RAlI�B�@R����g@'�Z�|�@3D��Gg�@;�4/�{&@;+��L�@=cN�ޓ @Sj�O���@Q�N}��@J����@KM�@S~ں$`@T�N��@XGe��@X@y���@W�~�T@W�o��@Whl�44�@WPQ>�@V�F�~��@V볈u�@V�s�?��@VwLt��@Ufj�or$@T�"�:>O@R�����@Q�!�;�[@P�=��@L���ֲ@J��}�M@Lu,"X@O�I�@Q'�e'/@Rׇ�#_s@S�y4$��@T�YO�'�@T�.�@T�A�/�@R�5ߖd�@E�e��@�@J?�`<g#@S�`�(
[@T��&>NA@Tϻv�}8@U�5fB��@VB�Ҥ�@V��7ҟ-@W-�;v-@W_�O`'@W����@U}iG�#�@U��'�Y�@SbA�h�w@N�e��5@N���Z1�@K����&�@I�8r��@D����YS@F�]�d�@H҄�O;@Jpݬ+�M@Kr&Aw-#@Le*���,@Nʣ��.@P�:G"�@Q�/HJ�S@O��Ӿ�@N2���j�@Q}����@RZW��E@R"$bGz@R{v#���@Q]�>;b�@P��8/�@P�#,!Ո@P����6@R�\Q���@RRhP�@S2tY���@S*���y@RH�M9�;@Qx��#�@P��bs��@P��c�F@O�!qlǀ@P*�ЀA@P9J^��D@F�U���e@F�IM(@N*�B��m@P��$�١@R7��+@R����g@'�Z�|�@3>� D�@;1�,�b@;c6j�Y@>����@R�xs��@T�VS�p@I�Fu��6@K�"M�@P<tb�ͦ@Rhs�$l@W�-����@X;*/x�@X����S@W�a1��@WL��g�@W�ם_@V��.a@V��
�+S@S�D{�d�@Q�g��e@R�Ǳ6ܛ@R
#��;@RW��ʠ�@P�|]��@N�#e,�o@I�Dȁ@F��S��@H�v5�x@K�Q@�r@N�ф�t�@RC����@S��A9@S�Y�r�@S�k���C@S��+s�@PN�$Ʊ�@@s*u��@N%�V�M@Tvh���#@TtO�ܻ@U+�U�ӧ@V�FS@V\��`�@V�]�@'@V�Y���`@VtwE���@V���ʖc@V?�a�/@V�~����@T{�)�U@L��7>��@N%��O@0@K����8s@I(�.M@Gm��@GmL��R�@I���0�u@Jfʙ���@K7Ѓ�d�@K�[�@N��J�@P�á�#E@R�2��(@R�z���@Nܴ!�@P*LU�Ң@R��N�)@R:
O��1@R����@R hȩ��@Q���ig@Q�V8@QQ���C@R�s�S@RAX�#?@R+š *@S$�c�@S/����@Q����@P�ͮ�QU@Psi@]�@O����@O�����@K����$@G3�A��@F�����@NQ�ɏA@P�3+�d�@Rj�2K��@R����g@'�Z�|�@2�t�*�@;<�	�@<1�\j)@>���á@P���@S�[qnY�@K��F�s�@J&�4X�@LI�?��@Lo����@W���@X+gf��C@X�")@W�8��F@W��uJ�@V�<d	��@V���l@k@T���|@Q����@QU����G@Q��aq@O����̨@N�[`t��@L3��(�@I:����@FG7��@D7Q�pI�@C�Ӥl^�@;*!�0��@49̂��@4H���	p@4`X�2g@2V�-��@9p�و�@>��JB�@;]���w@C�G
l��@Q�e�6	@Sb�2���@S���=��@U(� ��+@U�(#k@V1w_�]y@V��%�K�@V�Y�5@V`>�]�@VN���s@U��gb5@U�O��L@T��u�=@N��Pp�@O9=2���@L9���@K��a�pX@I��K��@H�F`�� @J#����@K>o���I@L�Lq<�@LJ����0@M���,�@Pd�m��@R�̦��P@Sȳ�@Pٖ
�
@O�F���@Q�	n5@S�>�z@R�Ȋ�h�@R),9���@R)j*៳@Qh�ݼ.�@Q���Th@R��W�H�@R�G�@R	-(#@S)��
�@SO��E�@Qӧ^jd@P��:(�~@P:�精@O����:@M�]�6tP@F��Le�@EXQ6��@DD{P@N&��G|@P��j��@RN���F�@R����g@'�Z�|�@2�`���=@;��&�5@;��F4@Aqws�A�@Sj,���@S*�l5�^@N��@O�@G�	����@P��5��j@O~ˠ�@S@���+0@WE���j@X	��J�+@W��դnY@WJ�<�k@Vַ�|�c@U�	t��@R.����@P(�:Y��@PY�S�q@Q�G�C@N}<F�Ѩ@NJh7�W�@J�ۛsK@H���1%@F�(!�S@DR�]�_�@C�#���@B�q֘�T@@q�Q�@8ܸ��2�@),�L��@"��7>�@'��з�(@4����@<7�t3�@P;�!�@RY��xo�@R�>�X =@T0���y@U8���@U������@V6�y@C@Vrk1��0@V}����@V�|�F�;@V$�xf�@U"�L��E@Tף��@S@�cr&@Pr�0@��@N��\5�@K�ж��5@H���1�W@HE�/�n�@IR��@J]㧤��@Kyb5h@L^��մu@M?S��@NkHJ���@P|�[��@R�7T��@T\�e،�@R�1��rk@P���j6�@PjL���Y@R~�ҥ��@R�+��R@Rg��.�@R�����@QǦ d�[@Qڋ��Z�@R#2'�5
@R;1���@Q�tls�@R����5@Q��aŕx@Q����V�@P'�a��#@Pg7e�@O�O�w�@J��<�X@C-�D��@D��"�G@A@����W@Nn��K��@P��s�@Ra�E�ݗ@R����g@'�Z�|�@1����)@<��#���@<�ӻ �@G�7;���@SmǓool@T��LHE�@PkV�n�@GB�UD��@I��9ps�@I]\B���@Nh2��@Tut�3m@X�~�/@W���y�@V�ƌ�D@V��&��=@U�w��*#@R��ԝ@Pɺ���E@O���b�@N��w۝@Iq��>�@L7eD�@J^T�
�@GGͣ���@F�3���@Fѫ�O@GJ��	>�@F�B��O@F���k��@F5��ke�@A9�!$,@9�����@2���c5[@8�B�ɿ@E4i�ߵG@Q�l����@QD
1�@R>���:�@S�9�Hg�@T�oaq�@U�@����@V.���@U��'�
-@V0'���@U��Z��@T��@>7l@S���'/@T+�7,Q@QUFf��@K�E���S@M��-w@K\�̯�@JV^gٞ3@H2�M	@IK�ވ�<@J`B�P8@KyD>�k�@L	�@M[O@z�}@Oh /`�@P���%�@R˲A�c�@T�'�4�@S��2qf@Q��a:o@P�8�x��@R+4�w�9@R���A�s@Q�JU���@RlM��@Q�@�ş@Q�rD�;�@Sk}���@S�I�@R��?�E@Q*q�M�@QiP~��$@P�X#�	�@O�|�V�{@Pz?�&S@O�h�.<@I<��:n_@CÈ�y�@C�AE��@B��x�#A@N�C�K�@P� C =@RM:1ש@R����g@'�Z�|�@1���^)@=掎��@?l.w(��@N6��v�,@T́e���@U�cP*,@Ro �[@G�_#��@H*���@G�����@T��(���@PZ�����@V��c��@W��M��@W�Z�b0@V�?!�-@U��7�}@S��].�@R�M	a@PP�\�-�@M�_��uX@J����@H֥�@M�@G�syG�@H�H�@H��[�@I��Q){K@J5Q�ւ�@J*s��q@J�_2�_�@L1���v�@M�!T�|�@P۬3@a@P	��`@MN��4�@O���1@P}��~�@P�����@R�!����@T!�Q��@T��!i�@U1�+x�@U�X�b0Q@V�{��Z�@Vm��>�@U�ڶ �%@U��]�6�@T�t���@U<bB��@Q�g�M�@K�����@K�?Y�@IZ?����@H�7�n<@H�����@Ici��Յ@JX~�h�@K�����@LV����@Mj7�X@O1?�rR@QW���@R��*h*�@T֦���@T���{@Rޅ1��@Q���k
�@RT]�@Q7��AM@Q�r�I@Rurs�l@Q�����@RE�܆�{@S%� ;�@S���A��@R7E�(s@P�L�Z|{@P=��Kr@P����M@O�x	�V�@Pa��k�@Oѯ�к�@Ic� 3�@@��f�t0@>̔Bs*�@E����A�@N���*�@P�@�`�@RN_cH�@R����g@'�Z�|�@16�b��/@>Ҿ!L �@@�(�?�@Q�sN�g�@R�~#n�"@U0�Z��@U٫�a�@K2m��d@J��3̙�@P�&(�j�@UK�K|k@Q�rO�3@T(�P7@W����=�@W&�'�\@V�v_L��@U������@TP��"@R�Gq�BQ@Qy��V�-@O�LgʊU@L�:�_I@K/43�%@I���0�@I}��ǁ@KD|�L��@JY��<V�@J��@L`@K��歇�@JO'�6K@K@ݷR�@L���c�@M&>!P�@N��V3-�@O���t@P� ���@P���*"7@P����@R�K��t�@S���}.�@T��tӑ@Ux���@U��Ed@VLv�;B�@Vc���]x@VK$�oL�@T��L{�Z@T�y���@T�cȿp@Q��0���@M�?���@KN} �@I��V�(�@Ir<���@ID,�V�	@I*j�� @JA�\؍@K����P@L\ne��@M��r+�@O^f�)"i@P��T���@R�뮨J@T��`�7@U�NZ@T+�;)0@Q�z��[�@Rh�Ǡ^�@Q�xF��@QO��Gw@R��S�S@Q�om�.,@Q�����@P� cLi@S7�A�@R���q�@P_�%�\@O����?)@P �<)�@O�FJ!��@P�'|�<�@P+�0�%�@I����@@ֈ�ܜ�@>o�&�p�@H>�w�*@N[g8�j@P�A�\@RH8��eN@R����g@'�Z�|�@1<�U�H@>�8���_@Eh��f�@T����Y�@Q�p �5@U{փ��\@T��ǆ@R���M@SD4�(ƚ@S^���d@T�W���@S�R�t@R����ku@V���䢣@Wp^��|@Vƹќ��@V	h@T{7Pia}@SR���@Rt��h�@QG0��@O�:�ks@M��Ei�@Kr��@JXߨ	,�@K��ںm@K�\���@JEB�y@@IIqIp�7@H�S�ϑ@I��e:�@IT'���O@J{��O�(@Lpi��@L�٨�j@Mˊ��5h@Ol�h��%@P��_^x�@Q�Gy`�@S��[�@Ti���x@UVŝ1�'@U�g��a�@Ve-���@V���g�q@V�B5�I�@U���@U�T�;?�@S,^4E	�@P`�>z�@O.TȐS�@NR�Ղp@L�i�|�@I���Qsq@IE~=@Hҗ��,U@J*�N,�@K����@L�}�M@M�O7HT�@OwY}��=@P��
L�q@R�'�WI@Tm9&�Yi@UY͌��@T�O`S;@Ryq�_�@R�	��LL@R����ρ@Q��&�@R�+��@Q��ĠR�@QC��bf�@R�p���@U����]@UJ���{@Q�h��H@P8j	�e@P<-�8e@O�Xj�U@P��G�I@P.�Q:@HLAh�0]@A�I�N�L@>@,���s@G���C@M�w?��k@P��U��@R:��*n�@R����g@'�Z�|�@0�&���@=tN=�2z@@�v��@T��3�fc@U�V8�2&@U�&����@T�m���@S��@�t@S�y]�٨@Sm�+r'@THU.R7x@S��X�@Q�"?<T@V�0���@W�7G�E@V�;�(@Vb�k48�@T��o��@S�n��@R�N���A@Qp��ҥx@Q5�뇯�@P�CH!��@M�d�k,@J�"	o@�@L\
j�@K+^�Q0�@I<��4�@Ia� K@@H���J@G�ݚ4O�@H����\�@H�f��@I�>����@I��cd=@I���@M��Cɕ@P�v��@Q%+w���@R���F+@T)�d�@Ul����@U��M�O@V{�v�0�@V��h�gQ@V�� �)c@U�m]��@U(�Ql�@Q7�A��@PI�wn@O?�^�@Ma�[�
[@K5&jc@I��!U�@H��D)@H�Ha�<@I�+�7j0@Kz�y��@L�"xE�@N@�!�ϩ@O��,GO�@P�+a�z@Rps�_�}@TJ=�Y�-@Uy]9l@T���-a�@SYh��@RЅ�~��@Sc�4='@R��@<�@R���k�@R7��:�a@S���_@VA
}���@WN�By�@V��x�@Tl�ɵS@Q~T��r�@P���`�@P8�D~9�@P�0�ὧ@Pm,�A @DQ��&��@B=8c��@:pJ�@F&U<�@M��ep��@Pk�w��@R4�6�@R����g@'�Z�|�@0�q��t�@<�8\�Z-@?����u�@RO�H��@U��&-@U��x�@T�T��^@S�����@S�F&j{@S���0� @S��y��@S��F�#�@Sv9 l��@WEu�kM@W��J�N)@W	�JU �@Vyr�a
p@Uj���{7@T?��E�@S0���$@R~�`�s3@R�E<O��@Q�pL��@P�"$U�X@P����K{@K⑇�e�@I<�cMpM@K�[Yz�@J� C@I��9Fh@Hx Pv�E@I-�K���@I����6�@I��OcK@H�y2�#@IȆ\O�W@LhZ-Q��@O�T�@�@P݂x���@R.v���/@T];�s@U_��1�@V5d���@U����@V;L/4@V|QD<eG@U��q��@RYx>�1W@Q�
H�@PA�Cs��@N��mR. @ML���@K@t?�@I���@H�HG�@H�z�z]@I΋��y_@K\�\(+S@M+4��`@NU��s��@OȮ�`��@P��z�/s@R�+���@T+Ybb�d@U�����@U�����@T��;�@R�.Ke@ST�B�#@S�]��@S�./�@S�$r�@U�m�D�@W���w�@WGyJ�@WA����@U��|nc@T���e@R�w�e�@Q�$o<f�@P�o)
ҕ@J ��]�@A���R�@B:�C8]@:PbK�!�@E��ɜ�@MB5�i�@PWzD�I�@R5�p|ҧ@R����g@'�Z�|�@0JoR
�T@;�̞R./@?��8�6@P:���R�@TA�ηU@U��a�0@T�L	�@S��5�F@S����@S�l�Z�	@TaJ;6�@S�B�9��@T�/ezR�@W9tl�@W���c�@WC�L}��@V�0[�U@U��R|S�@T�4��@S»�x*�@S���m"@S�Jj�%�@R�1B���@RH�	>�@Q�Տ��@P�\�8}X@K�e���@L�ӭ���@L,݄Z�Q@KK�RK"@J(�7��O@I2 m>+@I��.��M@I*��u@I"��v�@I��
�E�@K9��C@Mą�k�@Nl��.��@Qq5J��!@SD�H��@U1;�5��@Vl�+s�P@U�_�N�@VcF�)�@V]���0@UёK���@R砯}�,@Q��p�@@P�)k��a@NT�`���@M<^���@KU�26��@J]e)@ITT�ؓy@H��j�@I���/X@K:9Q�[ @L�	�ȋ=@N^�(H@P�M�Y@Q�ҷ�@RKc;��@T1L��N{@U�%�Y@U��>Ia=@Ti�sÍa@S=DL%�@S�o����@S��4�@T>�	w&@T�ާg~�@V�?g�� @W�����@WW� ~oP@WWв�8@Vi��d�=@S�c$��@Sx�凧�@P�j�X=@Jc�u��@CF����@B��
��@B/nɈR�@;EM�@Ft�qNci@M	`��y@PN�*"*�@R8�J���@R����g@'�Z�|�@0=�T29@;Q2%���@?b�{�j@N#�S�:@PJoD�]@U�ˊ:j@T��w���@S���@S��l@Sn�̟(�@T��(W@S��ǖx@Tx�_���@V��t�8@W��oc%@Wy�A<�5@V�4�!Q�@V����w@Ua�Fo �@Ts���J�@T�B�o�@T+���@SK�1��@S�����@Rx�M�s\@Q�2�c �@P��H��@L~�Η@K<[w�U�@Lh���D@K�n��)@L)����@I����B�@H���G�@G��+�D@I�Vzލ#@I���Y@L�h(@O(B��
3@QtV�bEE@R؝ŽF�@U��7x`@V8d4Z6u@U�w~�W@V�\�y)5@V�Y?�/@V	o�d,�@ST|t�[2@R)`��)@P0�a��@M���n�x@L�D�d�g@K.c��@J-���@IL�W�@H�R��=@IE�W<��@J�	Ƽ�(@L���-�@M�Q�1�W@O��EN,@Q���@Rq�~�J)@T�?T�@UV��KWK@U�k�$�@T;0+��@S�|�x�;@T7�;�m@T��I^�@UA��MT#@V$���T@VԴ���@W �d� �@W0<���@V�1rvο@Sh��@@Ny����@P�%�]qm@O�?K��@J�r8\@D*�B%#<@DZ�fDQ@B���X��@<��u�@F��Z�@L�6�[ �@PR��ن@RD�j!n�@R����g@'�Z�|�@/��k��@:�-�m��@@$&���@L�2��J@F�	�I��@Sk�X:�@TO�H@S�忼�<@S�"؋@S`�.�(@T#4��E�@T��J�K@Ts	���@Vb�0�o@W�TNBڗ@W�Ӕ8��@W\\0'@V�T�<@U�a�z�@TʳOӲ<@U7����@T9ҝ0�g@S6ϟ��@SC��d�@S1��/a@R��3J�@P̟�1l�@P��@>%@O�c��#@LV.�>�@O����C@Q��ut�@L[��{T�@H�q��Ph@H�c���@H�=�@It�����@K[RcW@N:J�@Q�.�G�@S�ι��@U<�Y�o@U��UW@Utc��r�@Uįx{�@T^O{�d@S�d����@SK�@�e8@Q��®�@O��=u@NW�3�o@Mpz�#@Kq�m�u�@I�7��U@I%mڡ �@H��e�r@I.�	�7@J]ѐ&/Q@L�"��@M�6f�_�@O�]��h@P�[��<�@R/i�i7@S�c�D�@UJ��D��@V���U�@T�g��@TP�ꬪ0@T��*.�@U'+����@U�f��-@V��%̭@V��X�m�@W��'��@V��`�h@SZ�Q�b@N{��ڭ�@K�V��@K��7s�@Iܩy0%@H�4�W�@F[GBB�@E�u#���@B���{�@>�@�5@D�ubǽ@L/�9+[@PTS���@RR�R�L@R����g@'�Z�|�@/���,�@9��as/@@]��zu@LT��+<.@E-��9&`@Me�����@S�9i� @S��p՗�@S��6=�V@Sge{�[Q@Tl�#+%�@T{6~���@T�PsK@V�c;ox@W�c���S@W�zԒ�@WB���4@V���)>m@U�Ɠ�˫@U���@Ufi��@TP�w��@S(,�7��@R����@Rj�NHZO@Q�����@P��{ �Q@P]�N	yI@P�9���@Pl�Ċ�@M���y�Y@N����[�@O8=��S1@I��.�@ILB)n�@ILN$�@J�K��@JAh����@L�N�z@�@Q���@S1-��@Te�,�;�@U�ܫK�_@U�sͤe@S���Y@S��-��@Th�%�@R�fiUm@R
�zɌ@P�1�a�'@N������@Mz�h��u@K��v�;@I��VHS�@I'�hHA@H��E��E@H����a@J�d�@K�>䜝�@M��-�@O}�u�y�@P�k�ɯ�@Rҩ�P@S�����4@U)�p?�@V�p�V��@U���2_ @T���"�@UE���O@U�&u'%@V�Uo���@V�<�`��@V�>'�|@W���]]@U"��4@K��[�@G�4G]�@Go��e'@Fɋ�6�@F�,{_@I4Z�){@HJ�����@G."�+�a@CB�����@?�_�X��@D�a�7@Kee�ͬ@PV�}dq�@RN���@R����g@'�Z�|�@.9�b9�b@8������@?��[�pJ@O����o�@D�Cc�?@L���d.@S�0��@S�c��0T@S�����@S�Ou.P�@U9����@T���0��@UJ�\�>@VK�@W��.��@W�m�Lx@Wfe7���@V�BU>�	@V6\�@U���@Uz�v3�@ToOh���@S-�ɕ�@Ri!&)�@R/��,�@Rބ�_@Q.�G��@P�_���o@PU+VvD8@O��s���@OL�mu�X@LҊ���@LN%)fM@K���a��@K|����@I����@I~�Hg@J�[�D,�@L��@Pu(2g�@R���$.@Tx��O�a@U��i$�@V$D�j�U@S8�6��@TE�����@S�~B���@R��h�@R*���@Q,TZg�@O��*;;@M���摫@L0�%݉�@J���~�@I�{����@H�g��?	@I�4�@I��@[9w@K���p@N�p��@O�P�g�@P��D�Y@Q�n]�@S���	�@T�T��@U�e��ux@V�t���@U>X��L!@U;����@VV����l@V��*��@V�16�@V�@�g�@V���`q@S�#��@IeWz��@F�Q8�Yp@G-D��D@GN�Bp!@Gt��L{@Jw� ið@I��#�#@G���?7#@Cs�#�+}@?� �i_@C���:�@J���_@PWl�:��@RRL9��@R����g@'�Z�|�@-K���k}@8�,�
@?r���@O�G��_�@I����A�@Q|q� @Su��n@S��T4�1@S�$e|$�@S�>��^@U6>M"\@UE�e�� @Uy�9"�3@W
e�01@W���Lÿ@W��I��P@W���9��@W�A��d@V���M^�@U�t�>M@U�H�2w�@T���j@SI7�K(�@R����]@Ri�v��)@RQr�Ϧg@Q_�c��@P�O���Q@Ph�H��@O��fu�@NE*�o @M>z�Y@I��h��@O���@NG�T��@K�����@H�tu$��@G�J��\@I[�kYT@M���ix@Q�(���A@S�\#m4�@T�Z
�@S��ɒ�@SW�;ee�@Tg��@S�&y�)@S|�@ �@R_���aO@Q�E���@PQ1 ��@N͟u�#@L����.�@J�W�8�I@Ip��#@I̝x�@I��@J	r�d��@K�"�\C@N6p(���@O��{t�@P�q���@Q�����@SR�-9@T�H��y�@U�a}���@V�ns��@V���p@U}���D@V��K.��@W�zA�@V��nl�@V�f Nz�@V�"@�L�@Ris�L̽@Jt�{�el@Gί1�:i@G፸L�@G�>�*�@H5ӊ��U@K-��%V�@Ju/w{~�@G����\@C\�~|ҟ@@����@A
����@Jn[���@PW�Hsx�@Rh�<&/@R����g@'�Z�|�@,�XU�b�@7�Ϟ^?�@>{�hZ@F�~rP�@U�1�;_�@T��O��@S�.k�>�@Sc�K4�@S�Ȝ�K�@T66�PӴ@U:=�'��@U����=@U�f�|M@V����@X	(�J�%@X`�O�@W�\�Z�w@WEPf*��@V���$��@U��#@U���f�[@T���*�@SuڏW\�@R�c���@R��v�@RP>N��B@Q���s�@Q#6G @Pw��2�@O�y&|Sx@Ne��[l@L�B2�@J�Bо�@M)����@P�����@Q�� =�@P?�u��@Mfq[���@Nƛ�^�@Mo3��Mc@Q)�dV�@R���@R���@[�@R�7j�#&@Sf�-�8�@S�5����@T�gv��@S7@mr��@R��� �@RL+�'@Q��H�{@O�ț���@Mg�y�}[@KF�Nʸ@I�� ��_@H��b�O@IC��M�X@JD�6�D1@LG�Hw�@M��v@O��꘡�@P���Ҁw@Q�R�p4@S$�I8Q@@T)=vN�@Us_DC�+@V?n��}q@VpS�2{�@Vde�+ġ@V��~3@V�qg�@V~��o�l@V�%��M@V�J���@T%À}w�@Pܘd�ֈ@K	�?Rn�@H����@H-��0@H��[��@K�[���@JS���Rc@FZS:@@B/�W�@@�@U�-@@��Ex(@J����@PY,�� �@Rg��$��@R����g@'�Z�|�@+�4a�-A@7�:�_�@=�1	�F@AB]O��@V!�T�kb@T�g�	t@S'�����@Sy�^�}r@S�O;T�@Tw=?�@Uw���u@U���,C@U������@VݏN��K@X��`�,@X2���|�@WԻ�/g�@Wd��D�P@V�v����@U� B3@U���
�@T��;��@S���4��@SS�tV@Si���y@R��[�z�@Q�~K�y@Q%�64�@P�����@P-��#@N�u�<ڵ@L��	��\@K�q�J��@Jt�J�}@MHZ�`�@P�)j�P@R $iױ@R��,��@S��c�n@R&��譻@RZ"b��8@Sh�ЛS�@T8���|@R��kݍ�@Sy�y��@S�
߫@TA�_1y/@S\�r"��@R�輠�@R���$@Q�$�M�@P;ܓ?Ω@N��c�@K�z�0@JcӅd��@I,�S� @I}�JG&@J\Mu(�@L����@M{T�\��@O��(�U3@P����~@Q��k��@R�57� �@S��@T󎕜n�@U��{�L#@V=�s���@V�Ԕeŋ@V�v�4�@Vj�W�H7@VY ?���@V��}	��@Vj����@U
��88@Tf��6:1@Q�R��V�@J�҆J�P@HZ�2~��@I84gB�@K�o̐Z!@IN����@D�#�׼b@@���@�@?���LW�@A�0@I�&�ʀ�@Pg*��-�@R]���u@R����g@'�Z�|�@+�"Pr�:@6�Ə�;�@=�'���(@@MO1��@U���&�@S����7@R���@Sq���@T)�[��@Ť��.�@U�MɏR{@U�n� ��@VD~&��H@W/�VE@X�f3�@X:�t�Ӑ@W��V�@W?\���@W��kr�@V\��)sQ@V$��T�@U�a�!�@S��
�k@S��*0\�@S�>�J�@R�=��+K@Q�o�'��@Qk�G�ð@P�E6d�@P* �q�@N��Gb:Q@Mt�,�/A@Lp�lp@KŐA S�@K0�!̻�@I��N6	;@K�f��@Ln��/h@Q`g��K�@S�+�_@P���ۘ�@Q}J�%��@Q̎�B��@R�u�@ID@R�&/�/I@S�:�!O@Txf��0�@SJ1�nk=@R��%d)@R�pvɍz@R1G�x @P�?���@N|���-@L7��YT@J�ʂ��@Iξ�6�@I��[�@J:�^�ʧ@K�nx��@M.��h@O9n�b(�@P��Q�f!@Q����@R��Bx?@S�ᙍ�a@T~Ey@U9�x�c@U�	���@Vjz��@Ved�� �@V-LI� @V4�i���@V����7�@Vy�s'N@U�a��@UwG;���@T��l�3�@Of@�ٲa@HWP����@I:ϫ5j @K5�պ�@H��5�^M@C�rh	��@?�I���@>b�?&!�@@o);�1@H�n6P.P@P�w&ȩ�@RZי�#@R����g@'�Z�|�@*�1;�"X@5�~�q�@=���ˍ�@@w6��N@S�0)eE&@P�	 m��@Rʡ��P@S�ä9@@Tf��-[�@U~db�@Va�,�@VE�Z��@V����E@WUk���@X"�߉@XC��'$@X�p"�@U*�u&�@V��W��}@V�Sw:2{@V�p'�U@U.�oT@S�V�p�@T`��Y�@S�(IQ�@R������@R)� P�@Qu�Y�B�@Q\w3��@P(�!j@N�Őe�@M����Ou@L��d}S�@K�QY��@J�ө�&�@I����Q@I;�Մ�@H�c#R\@I�I$(�@O���/�@R�E�A<�@R�(���k@P,�fwM7@RAs2��@R\�B^\@T���V�@T���1�@S/�E?�@S�&��L@S71e+�@R��y�o#@Q:ե�M@OC���@L�	�ԧ@K}�V�@J����@J
E�X@J*:@�@K|ꉞk@M"�ĺ��@N��ȭ�5@P|į*�@Q��خm\@R|?��@S���@T��c2/@UJHX/S@U~hꓭq@U�H�#$@V+�7���@U���� �@V"�0o��@Vu/�
�@V���W4@VEˁ&�@U�ݨ�;�@U��Q@Q����/@G�Wc�Q	@H+�C{m@I�	ڗ(�@H��u�T@C}�,|��@>�w�X�@=Pj���@B#����@HC۬��@P�]���@Rbէ��@R����g@'�Z�|�@*����E�@5R�����@<�,K�oH@?�Ԛx@RO����0@G𪎹�v@R�M昘�@S�{U��R@T�����@U[p����@V*:ǌ��@Vu�}�i�@V��p'M@Wkrh$X@Xm4m�@XH���u�@X ޱE(�@VK�]���@Vہ �@V���� @Uﾯ�|@UF�H�w@T��9T�@T�d��P@S�p)Z3�@S	1;��/@R8ǅ;7@Q��hβ@Q0��-'�@PL�,�h�@O5"��Mi@M��N��A@L��tT�@K�Ñ�9�@J��9�oM@H�'���Q@G��I?��@Gq��h�@H.�ɞ�Q@J�y7��@L��+�@M��Cq�@Pb�Ø�@Q��L@R]���J@T'�ұ@T��b�@S�RY@R�_4?@S� v�Ck@S.UiN�@Q�&�\\@O����v�@MrH�[p@K���k>$@K�U]@Jf��|J�@J~YG�@K�b�g(@M�ͬՌl@O,��!W�@P����i�@QK� !�@Rg7�"��@Si����@T��SI|@U)��M2�@Ul!w\ô@U��뢙�@U�ĸ���@U��X%��@U����g#@V]�M�F@V����@V6%���@V��2͙@VL4z]@SM�\A|@H�Q�)@Ge��Ą@G�NNc'�@H6Q,�J0@CmG�)�@=�����@<��=���@C����@H�0r6(@P����J�@RW�'/@R����g@'�Z�|�@*3�;�?�@4��!q{�@<p��J �@>�Go�eq@O�8���p@D
�
Xm@R��=�3\@S�x�u�N@T�r�a@U�#���@VW hq+'@V�#Uȡ�@W-��@W�ڃ��p@X��$V�@XQ��a@@W��]#�@WI2?�t@V��T65@V�6��@VL/��-@U����@T�l�~�@TT~�_�@S�ET��;@R�6��0@R^ƍ�8@Q���'@Q%pq���@P`�^�a�@O��-�A3@NV|~��@L޻,�$k@K�KC��@JC���]t@H+�����@Fb���H@E�|���@GQc��@HÊ�l�3@I�*��@L�c���@P��b�@Q^�bF��@Q�*Oŕ�@T4t���@T�gfh	�@S|8u�@R���Z�@SE�]?G@S�nz2;@R\�D�b�@P[�P�{@M�Di�@L25F��@K��k�e�@KP6sIe@KW�ə/]@L>�QE@M�z�@��@O .��P@P��2�{|@QZed�@RA�}+/@S_qRx@TVK��E@U4��@UD7p�;[@UbX��@U㾸�_@U�c(	�@U�H"�@V�e]A�@V}�~'�3@V,�]V�@V�����@Vv���+(@U$��e@Nh���@G6z;�e@FWH6�Z�@GAjNt�@C|R˘8)@=b��2@<>�m�@Bu=@H,��3��@P�����@RH�m4��@R����g@'�Z�|�@(�o�1@3���.@<��a/��@>eн(��@J��:���@Bֶ��NM@Q\�pZ�@@S�,�N�@T��ǙJ@U�T}=`@V��!{x�@V�y�C�@WDJ����@W�\��Ɠ@X&���$a@XPU���@W���a�@W���r	L@WC�Q_�@V�@�\@VW�욅@Uz۫9+�@U)�(�a�@T�-L-�x@TAg>��@S#W��(@R���gϔ@R����@QHoM�o�@PK�l�e@O���t�p@N�lC@Lo�"��3@J̀ޟ�O@Ix���T�@F�@��C@E����@D�`�6�<@FڮW��@GE ��S@H����k@L�ѭ�@O��K�%@P��H�@Q)*"���@T>,��B@U	}a=@S=A5w�u@R�.��@Sd3Oaɼ@Sut{X@R����@P�کnگ@N^��?��@L����Q@L(���J9@L=.{aq@K�y2��)@L�����@M��f��@Og#�zp@P�����@QK<�#@R4-�@S��@$#@S�����@T�~z�P�@U`R�`��@U�Le��@@U�q\^e�@U��a��@Uz��}q@U�I��@V9�58@V��5��@U�jT�@Vy:�t��@VN�
��`@P~�Qf�@G��?Em@F�RUH�@Fe
A�=�@CV*�Z?�@=��QY@;���@BP�G��@H��Y�7@P�T��@RRf��ȝ@R����g@'�Z�|�@(2ѦW�@2�!�Qs@<�T#��@>��j�;[@F4�/@@Bj�W5Y#@PU���z@S�Ȳ<x@T�;~�e
@U��[:�8@V�e���E@W.dSu�@WhW���@Wͬ���@X#:!��@X=p�'�@W�6̦�@Wɢ� @W�+F��C@W���5!@Vs����@U�"�`��@U��>A@T��B�0@T9�*`�;@SJ0-T��@R{��6]@RPx�Nl@Q��]g@P��q�K@Owe��J�@Mx����@K�G����@JNnP%��@Hw�R��Y@F,�P�s�@D�w��Z�@Da�f���@ErOh�[�@Fz�o83@HYV��t@K�XN�@O���;�@P�.��x�@Qջ�f@T#���p=@U
����@S|ƞ��@Sy룙�@Sk�o�%@SMJ� C�@R���j��@Qa��"/q@OB�^y�@MSg@L�x���@LN�hh�@L��g7X@Mr=��@NAΈ�B�@P����@P�����@Q�pD�H@R.\	IA@R�6~#�@S���>OU@T��(�n�@U@����@Ux~z�1@@U�G����@U�i�l+@U�4��g�@U�Iij[@U뭠�(�@V����@@U�^��t�@VfÝ@V�����@Q��o��e@H�&l�8�@HR廁�Q@G��>��@Bre�۠@<I5��@<B`P��X@A��2RlI@IR��*@P�5�il@RJt�;,@R����g@'�Z�|�@&���N ^@1�5C�@@:�gO��@?���kik@FQL��q@A�s��*�@L��#e[�@T���p@Uw���@V=�r���@W
#���i@W$Vv��s@W���c��@W��d>u@X+�]Q�@X+�Q�@@XA�] s@W���@W��3%�%@WU(	ٕ@V��/.�@U�9,�-�@U�s0K:�@U�o�z�@TE��!3c@Sz�i��@R��V��,@RP�{�S@Qr8�j{B@P� ���@O2��b  @M8S�~��@K`�,]��@I�-P�@GӻH�:�@E��p	SI@D���L0@D^1t�@D�UZw�@EY�H�c�@G��o��@Kvh6 ̴@Nn�me�@PkŃ�@P��+� @T%���@U6��C�@Sq���p@S���@S����@R�;AH��@Q��,*t@N�ul͹@OW��+[@M��_w��@L�]rɱ�@L�=�'@MB�$*�@M�׮�'@N���o��@PN~���]@Q,�r�@Q�D ��@R�K*�%@R��U�Y@S�&�/@T�S��@T�:�͉@UK�b�_@U�Vv�@U�0�q�@U�ACB٧@U�=J�Pm@Uń� �;@U��Գ�@U�l��ӵ@U�)Ys}@VYa�@S7�f�2W@J�/�\E@I%ưh�@H�q�`&�@D���ݘ@<E��Im�@>yA�3@A���xD�@I�~����@P��R=QG@RH�}��@R����g@'�Z�|�@&{�Cۯ@0���>@9�{��T@?�T���l@Fm��6�X@A[��H��@J(.Sn��@U2�A|9�@UQd�4�@V��X-�?@V�^F��@Wa�o8�]@W�1���@XG��H@Xu����@XM�	G@X/w���@W�L��%@W�yV-`u@WW(�y#�@V��eU��@V%<A���@Uœ��ϓ@U��@Ts�� k@S�C�|@RԪ�U��@ReG9�@Qi�w��s@P�����@O�.���@L��3��I@K'��+�s@H��
e��@G9�0��+@EGq�+E@D ��$��@C�&��ą@DXB-�@Eo�@G$Wi�+@J�Lϊ}m@MŃ�p�[@O�����[@P��N�@T
�}<�@U/OU�@Sj/�bs�@R��du`�@S#�:�;�@R�<-���@M��9���@N)7��L@PN%C���@M:~I^��@Lq�(��@L�E�a�@M@#0��K@N<�1C@O��-cQ@P����o@QM�y �%@Q�
؀$�@Ri�z�@S=NvVW@S���Q;@T��P�ֈ@T��AvA@Uݧ�5�@UT�|��@U@�7���@UEHE\S@U�ZL_#S@U�e@���@U�$���@U�����@T��8�ɋ@T�8ѩ\@T��1V�d@N�wRG��@I~���@HG;���@I����;@C��U��@?Av�̀@B~���K	@J�((�@P���c@RI�	�X+@R����g@'�Z�|�@%w��Y��@0
�`D{s@8��hʮ�@>�i2Rv@B��1�r@A��"#@Ij�9⺤@TI�A;@UT�Z��@V�Q;ت*@V���
x@Wo�H��d@W���	�@XM,�z�@X}�k#s�@Xbz{��@X�2��m@W�r/���@W�����@WE(6w̵@V�FS��@VC�u�@U���:c@U !���O@Tw9b��7@S�`�uk@S�}�rE@Reu��sk@Q|�8�3@P���@�}@N�i���@L؍�
�@J��M��+@H��]X-\@GK���@D��H�̳@C�Cn��@C�L��@D	Q���@D����@�@F��<�c@J�\�\~@M�t�/@O�=@P{L�'*�@T8�c�h<@T� �_�@S?o�@RG����0@R"�/�>`@Q�Dh\B�@Q*~�X�Y@Pp�H��@N�{ M�@Lo�g^)@K�`@K��s(@L�,tA2@M��D@�@O�E��8�@P��.�ٜ@Qs[_a�@R:i	9�@R�<�&��@Sw��Ѓ@S���,�-@T|/+LIW@T�H�?A{@U
qR��@U'�Lt/9@UU]8$@Up��S�@U�V���h@U����@U�_e��@U]D;,<I@S�؞۵@U���%@U��̼@QDd�X@M#�oXlU@G�N���@H~�`H@E��g�aP@Au*֥o�@D ��@K�zq��_@P��c?(@RO�d�4"@R����g@'�Z�|�@$����R@/7dN���@7��Af,E@>�OIJ�x@Ai����@B�L-oT@Gw<A6#�@Svm쁡@Uy�ܚG�@V��wÞY@WB���k@W�>;�@W����@X,���t@Xz�"��@XRcVo��@X�
bI@W�<��@W��p.��@W4�fb�@V��ڣ�@Vr��.-%@U�Y}�@T�hJ��@T�`�A�@S�5�׺C@SP(��n�@R�]���@Q�RV��@P��w���@N�K��O�@Lb��Ay	@J �䑞o@H �
��<@F���c�@D�����@Dx~��@CҴ+y �@C�V0�@D�S�IN@Fx8���@JJ!{�wa@Ld6�*Cs@N�m����@P}�Pj�@TD/j#@T��_�@S|��#R�@R/�3O�l@QZ�0)�@PxJz,I�@N�;s�8=@L	E�)5m@I�f�_B�@H#��6�}@Hӻ�H6m@Jx2��|@J���k7@K� ���@Nͱj��_@P$����A@Q^@2�Y�@R0S�q5�@R�HE*�@SQ�Yy�@S��tŤ�@TF;��ʾ@T��'ɗ�@T��"1�@U`E�~@U>�WP7�@U[��YW�@U�caz�@U���L�,@U�>��:�@UY���Rs@S��c�O@U�g@VL3��Ho@R�_���@P*c�1M?@K2��ֵ@G�g��f3@F5X�0�@D|
4��.@GF���\@LIv)͈�@P�_��S@RR,Y\�|@R����g@'�Z�|�@%2j��~�@.�*�@6_km-�N@>��v�_@A�j�ML@A�˽r�N@A���VB�@Rz��W
@UY�c;�@V��@W��%��[@W��� �O@X��@X�ߣ�@XY�|�(�@X7LZEY@X�S��@W�w��@W���F�@W#U	q
�@V�Rw�#�@ViJ(%/@U�u9譣@T���&��@T���	��@S����F?@ShR���-@R���@Q����ǲ@P��5R�Q@NX�҉�G@K�9R2[@I��S�S�@G�dR@Fw"[.(E@D���əu@C�X執�@C�F9�@@C��u�B�@D����-@F�\�bM�@I�!��$@L53��u@N�Ȕ�;�@P�.�^$@T#�*��@U
Ty�6@TB�/��1@Rn_����@QC9;<Y�@PL��@M00d�"�@H|��K;@D�{�]�t@C`_�iAb@C7�,�C@@Hep Y�@H���:c@Fe�G;�@N#�X�@Ma�h)�@Q%p�I�@R��i{@RЪ^׿�@S\l'm�@S���"֍@T0�v���@T}\��[@T����*3@U��p<@U>Y�s@U5El@U^����y@Uz���D@U��N���@U�C���@S�ǓQ@T����@V�͉�V�@U;�-���@Q�{}@N)!x�D@J<��&�@I���ί�@G|n���@IMJ�e�@L�^a���@P����D@R[�~�k@R����g@'�Z�|�@$��|o�z@,�t0�O@5���}��@=�G�lG�@@2��ނ@@��BM@@{WD|Lb@J��d]@Th��nx�@V�,�^@WaU��ka@X!{�%�@X�[W�@X"����@X7;w0k@X-�"��@X��Ĝ@W��;��@Wk����@W���=@V�1���@VL�Y���@U|�@R��@UX�Ά��@T���J�@T>���@S�+�8��@R�vy���@Q�Ȓ�@V@PS�ߵCk@M��D戕@K�d%�@I��}��@Gr�Mf\�@F�)iC{�@Eq�mN@D�&s$��@D��HG@C��9��@D�Tӏ�x@Fy�e݀�@I�\��%�@L2=�6�@N�J�k8�@P�a�r�K@TXs��@U-��i�\@UJ���$@S��<S�Q@Q�#�k�@C{S�U� @4���@5`O#�@;�(ҵQ{@2�׶���@+�4��@;n£�A@F)���.x@G-Z�Y�@NO��q��@N�)T�7�@P��cX��@Q���pa@R�a�A�K@S2���K@@S��d�|@S�ے�kS@T6�sT@Tj����7@T�����@T����@T�]Y�@T��WH�@Uc���@Uh8��7@U�H�u@S����@TJG���7@V�@ �q@V˵�@T;�9o@P�'	�A@L��[��@L^Bw:P@K��`�EK@I���o�{@M��@�7e@P�.��@Rm%ǬU�@R����g@'�Z�|�@%f���->@+Ĳ���@5�]���@<W��t��@Bu^��@?�Yn��(@>��|F@C�����@Sf�Жԃ@V���9�@W@�E�S�@W��$�+@X,�X��5@X�q�5@@X'�ڦ4@X#�<T�@W�# ���@W��g�c@WM�`,y@WW�xC�@Vᗿ-̘@U�'��@U��NtS@U�<��t@T̜X+�q@T1]X�zS@S�)9i�@R������@QCa���`@O����@M(P�	D�@K^K� �}@I�v�٩�@Gi)��@G)�2�@F5�C��	@E�y� �@E�nݪ�@D�'�_G[@Ez*?�7_@G���8@I�x6���@Le���_0@N�w�zK@Q��R�@T�f��-w@U����@U�F`Fj+@S�t�WY�@N�f!���@@��]9�@2�ϫ�@*֬e��@&��T��@'�QK䓽@'�S<;��@'_����a@7L���@Fr��G�@M.yOZ�s@N��i��@P���bq@P�g�A%�@Q�k<j�_@R�|����@R��g�w+@Sb�\�@S�mz�I;@T&~���@T/�a��@T<?>y�@T��*�xk@T�a@T�Jp�@UZ�͆�m@U���=@T���sΡ@T�q��Yd@V��� q@W*�ߚʣ@V�T��]@Q�;�@N�@K��@M��}DC@N;:��@Jw\)Wݘ@NQ���GU@P����@Ruk�8p%@R����g@'�Z�|�@$��(�!�@)�Ed� $@4*��:^�@:�6���@@��_m�@<��d�@9���R߮@A;��@O繮�8@V$�C�ߞ@WC��C�X@X~��h@XIp3� C@X6-�"v�@X5�^g��@X��ϓ�@W�a�@��@W~���@W,�t)z@W\�Q�@V��	@�@U��:Q@V�ҥ��@U�H���K@T�F�R�@T"�����@S}�g�s�@R��!;��@QA�l��=@O�]���@M·i��@K��7��@I��	�@H�G@G�s���@GT_+T��@F�$�/�@F m���@E�P��D�@Fn�>�Y�@G������@Jl[��,@M<�a1�S@O]R����@Q��@T�PQ�@U���r��@Uؾ��7@Të,�"B@L�:G}R@@��`�Y�@3��D\<4@,��˥@(�)��@*6x��)�@)��+���@'�����@+�R��@Be���@J����D�@L�l!��@N���ބ�@P^����@P�kDׅ@Q,��@Q�l��)w@R�+W2��@ST�J=P@S�O܆@S�<a�1�@St~�O@S���}T;@TX�A�o�@T�V�/��@UN�]	D@Vl�9�@Uюbcү@U�����@Vyw%z��@W; �o@W/�5�c@Th�K�I�@P\F�{��@N(f�;+@N��~k��@L>�q}�@N��Q��@Q}�L�@Rp�>���@R����g@'�Z�|�@$�U@��@(��i`�@2�i��@9~�u^=@?�%�"�@:�sp @5���7C@>4���6,@FF:mnv@Un_�@W��_�ȑ@W���<�@XDs�դ�@XF�&�o@X84	�@XCu�b�@W�e@��A@Wc�FPI@W[v/�D@V�y���@Vd���J�@U�#{�Y@VR�êmy@U���8u@T��~�n@T��p�)@S����M@R�&B|�@Q3>���@O�9/�M@M]w�Z�@K��q�p@I� �dG�@H�����@H�RS��H@HRjR�@H�<��W@G����9�@G ���o@G�c1<�@H���3�#@K���̀@M�>�P��@O�3ȩnw@Q�t�@T�����{@U�B��C@V(ߨ�o@T96�*�@M��%�@C(��$o@6��� �@1I��w�@*�Fmg�@+���qu@+l�yPy�@(�}hX\$@'���4�E@1��ۼK8@Bf�a�
�@F)d��3@K����"l@L��q��@L����m�@M����3�@N(��H�@Q�_�vT�@R�I�֔�@S=��b�@R��S6O@R�A��0w@R���,�@S�R�|@TZ�V7��@Ugm��@U�e9��@U�
�[�@U���+%G@Vk�;0��@WG�0�@W�!{*<@V�Bٽ�%@Q�X�xP@O�G�`�@Nu90r�@MOV8F�@O��W�@Q�(B�@R��Ϟ@R����g@'�Z�|�@$);Vy
@&��r4~(@1.�Uf^d@8=�zGM~@8�b�(+@@:�4�YY@3�φ..@8�u���@EiE�m�@TE�@XK�@WO�u��u@W�8���@XD甮;)@XH��M��@X?)Z�)D@W��?+�i@W�s1�HM@WV���@V��2̉G@V�<wPq�@VN�d�@V*%��5E@V�?}�@U��;c�@T�V�:8/@TT����@S�1s��Q@Rb	��@Q&F��z�@O���lC�@Mf���@K���k��@J $� �@I�B�þ�@I�>k�@IǧU���@I��L��@I�5D8@H�%<�P@Hh����@J,��Y�$@LZWL(o_@ND*lx�@P$�b�/k@R(A>��@U,���@U�r6�- @V���[@S5��4�@N�e�~�k@F���O@:YL��י@3c)�nU@-9�GO��@, ��-�@+�d�k�S@*wŤrA @'��#� @(���{U�@3,�{s�@A줟���@H��4Kg�@HQ|JW@J�p
\�M@K�n���@M��f��@Q^P~�}@R!���}(@Rl�w�|@Q�� ��@R޷`KG�@S���V�@RW/��^/@S+�]r�@T�1n4�D@ULa��5#@U��O��@U�"��E@V�Ʒ=Q@WY�� @W�=�@W��i�n?@S��@P
a�aI�@N�����@M��m��@OH8���@Q#�&���@R�r(a�@R����g@'�Z�|�@#�|��2�@%���#@0
���m8@6��s��@6����a@6Fu�1�@1I{�mmQ@4z��#YV@A��P���@S5�aL�@WY�Ɇ�K@XH���@X[h�,��@XK��6��@X?��<%�@X�W��@W�����@Wbl��C@W+/��0@W�
���@V���\�@Vy6���@Vz��0��@U�R̬J�@T��P`C@T^�]�d@S����Q@R�ӻ{��@Q/�GO�@Ok�Jps�@L��i%�@K���1ى@K3׋	��@K?��.=@K>�O(��@KrY��S@K;�v�\@J�'�-��@JCȣ�7�@J����u@Kpi�o�S@L�7���h@N�1Ds�@P�����,@R�����@Up�^ <@U���@V)�Y��@T��Qyw@PN�^�(@G�_�@ c@=8TN�(@4w�v��@.���\��@-b�K�o@+�ou٥@+U�\��@)�B��^,@)�ɞC��@.���)_?@@�\��c>@G֣��A@Iu=�'x@JG,��@K�����@N61��m@Q+�˅�@QAS����@P���ř�@Q�oZ��@P�<W�&�@R���'��@R�t�D�@S[����@Tv���]@U
R��	/@UL��գ]@U�%P�6�@V�E�Z�@W��e@WЗ9�f�@W�����U@U�#m+_@P�4ͱM�@O.�Rz8@N%�1;	�@O���&�x@Q(:�S�@R�+���@R����g@'�Z�|�@#!��ڷ�@#���
q3@.}u���@5���p|@6��*�7�@3�{�J��@.Ƌ�5|@2	ê*@B�{��׫@S2���ߖ@Wi�娇@X.���<�@XaI�Ռ@XTfX�Ix@XA#��ϴ@W��3?��@W��%ٳ�@Wa�����@W9�P��@W*����/@WkI���@V��S_<�@Vs�RȔ�@U��?= @U*p�WzU@TV{�<u�@S���@R���ܟ0@Q*���@OrA�f�W@M$��:�@L��$��@L{�	� @L����+@M-'��I#@M;`�^Q@M)�����@LV�y%�(@LJ�P��@K䁘��h@LY�\�P@MI��j(@O�s �zO@Q?iZ�(@SX�d@U�
�x^@U�s�m@V8��&X)@T|:O @P���=�@H!Il�`�@>zG9�@6F_�=��@0 ����@,��iIbO@+��V� @,�s���@,/��p	@*���^�@-����7@79�N1�@C�,~W��@H`�Z�D�@K���@L�O��U@Pey��Y�@P���k@P-��L�@P��3@Q�F#@R/vWq�@Q4���@TMـ	!�@S����M@T��o��@T�2# �@UɄd3�@U���r�@V�N�^=�@W������@WՒ��7d@W�
<���@W,ujI�@R���_3@O�	YO�@N��DS�@O���4@Q2�0/�@R���)�P@R����g@'�Z�|�@#'J���S@#B�k ��@,�֟�@4�s%~i@5O�d׸�@1	��<�@+��JH��@0bf
�B@B���!��@S ��kz@W9H��ih@XG��hf}@XfMG.@@XT;:Ke@X5ߺFW�@W�V�eD�@W���NP�@WV���@WtVq���@W>Pf�@W�����M@V���=��@Vr�m�^d@U��*�@U5��Q}4@T�M��@S��`8T@R��3Ն@Q.f�+�@O��gj��@Nq���K@M�*�� �@M����@N�q��/@OOTe@Oz�e@Nu����@M�D̿�@N=_K�Ո@N�W��#@MCJ�6�@Mz��{
X@P ���^�@Q���Q�@S�?�6��@U���[�[@U�~��1$@VG�h��@T!&�k�@P^gQ6�@G����@>V�1a��@5+޲�D@/���r��@+�a`�>m@+m�Q�=@.A�2#@-�H���@,�qs��@.�rz���@6/��� �@B��y
��@HCp�4�@K&ە�@MUh?��@P@����@Po,M,�@N#O|i��@Q{{�Ej�@P^�|b�-@S��
W]@S��y�[ @RO�8�-Q@R`F'4�@S�E�w�}@U�.�C@T�3VDK�@U�I�NAu@V����\�@W�+]���@W���O��@W�T�쓰@W�����e@U�M���s@PE���F@N�g2��@O�c�1M@Q<����@R����y@R����g