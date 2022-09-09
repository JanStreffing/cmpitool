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
add_offset                   NCO       _netCDF Operators version 5.0.6 (Homepage = http://nco.sf.net, Code = http://github.com/nco/nco)    history      (Fri Sep 09 14:28:18 2022: cdo timmean clt_MODIS_surface_SON.nc son
Fri Sep 02 14:51:40 2022: cdo splitseas Modis_Cloud_Mask_Fraction_ymonmean_cmor.nc Modis_Cloud_Mask_Fraction_
Fri Sep 02 14:37:47 2022: cdo mulc,100 -chname,Mean,clt Modis_Cloud_Mask_Fraction_ymonmean_r.nc Modis_Cloud_Mask_Fraction_ymonmean_cmor.nc
Fri Sep 02 14:24:28 2022: cdo remapbil,r180x91 Modis_Cloud_Mask_Fraction_ymonmean.nc Modis_Cloud_Mask_Fraction_ymonmean_r.nc
Fri Sep 02 14:21:08 2022: cdo ymonmean Modis_Cloud_Mask_Fraction_daily.nc Modis_Cloud_Mask_Fraction_ymonmean.nc   CDO       @Climate Data Operators version 1.9.9 (https://mpimet.mpg.de/cdo)         time                standard_name         time   bounds        	time_bnds      units         days since 2002-7-4 00:00:00   calendar      proleptic_gregorian    axis      T          �4   	time_bnds                            �<   lon                standard_name         	longitude      	long_name         	longitude      units         degrees_east   axis      X        � ��   lat                standard_name         latitude   	long_name         latitude   units         degrees_north      axis      Y        � �\   clt                       units         none   
_FillValue        ��8        missing_value         ��8        cell_methods      
time: mean     title         Cloud_Mask_Fraction: Mean       �� �L        @       @      @      @       @$      @(      @,      @0      @2      @4      @6      @8      @:      @<      @>      @@      @A      @B      @C      @D      @E      @F      @G      @H      @I      @J      @K      @L      @M      @N      @O      @P      @P�     @Q      @Q�     @R      @R�     @S      @S�     @T      @T�     @U      @U�     @V      @V�     @W      @W�     @X      @X�     @Y      @Y�     @Z      @Z�     @[      @[�     @\      @\�     @]      @]�     @^      @^�     @_      @_�     @`      @`@     @`�     @`�     @a      @a@     @a�     @a�     @b      @b@     @b�     @b�     @c      @c@     @c�     @c�     @d      @d@     @d�     @d�     @e      @e@     @e�     @e�     @f      @f@     @f�     @f�     @g      @g@     @g�     @g�     @h      @h@     @h�     @h�     @i      @i@     @i�     @i�     @j      @j@     @j�     @j�     @k      @k@     @k�     @k�     @l      @l@     @l�     @l�     @m      @m@     @m�     @m�     @n      @n@     @n�     @n�     @o      @o@     @o�     @o�     @p      @p      @p@     @p`     @p�     @p�     @p�     @p�     @q      @q      @q@     @q`     @q�     @q�     @q�     @q�     @r      @r      @r@     @r`     @r�     @r�     @r�     @r�     @s      @s      @s@     @s`     @s�     @s�     @s�     @s�     @t      @t      @t@     @t`     @t�     @t�     @t�     @t�     @u      @u      @u@     @u`     @u�     @u�     @u�     @u�     @v      @v      @v@     @v`     �V�     �V      �U�     �U      �T�     �T      �S�     �S      �R�     �R      �Q�     �Q      �P�     �P      �O      �N      �M      �L      �K      �J      �I      �H      �G      �F      �E      �D      �C      �B      �A      �@      �>      �<      �:      �8      �6      �4      �2      �0      �,      �(      �$      �       �      �      �               @       @      @      @       @$      @(      @,      @0      @2      @4      @6      @8      @:      @<      @>      @@      @A      @B      @C      @D      @E      @F      @G      @H      @I      @J      @K      @L      @M      @N      @O      @P      @P�     @Q      @Q�     @R      @R�     @S      @S�     @T      @T�     @U      @U�     @V      @V�     @��     @M�     @��     @I�Y���@CxM���T@F%���y�@Bl6�1@=�ݹe:x@=��?C�@>����k�@A6A�S@?�x
_o�@E��B��X@S���@T�X�r�@UсKQW@VH�!G8@Vs����h@V��ԭ�@W*�Y��k@W�1^\��@W�x+��d@W���%C@W�pRz�@W^@����@V�1%�t@Vu���4@U�&e��@T��T��@T����@S����@S�5œ�@Rl��uS@Q�?���@Q�k!/�@Q�ed@R�9kڐe@S��3���@Tx/���@Uj��٘�@Vm��|5�@Wt���Du@W�r��@W'����,@U���M5@S�i(�1�@Q��w4�@Qt�����@S,�(X@S�"E�/�@R��О*i@S(�ol~@Q�;���@N�c�Q�@I)�m�@BT�)�d�@5UK��@-��Ht��@,+��@.R��#@-�L�Qe@.���5@0��˿��@2�H{��@7�����@A��q@F���5%@Iw���]@I];�R�@K����;�@PB�_U�4@Qs�Nd/@R���j�@R[�'e@S]N=H��@R�4��hZ@R��>>��@S�KB:��@T��!�1@U�Wf�K�@Vsı�W�@V�l;�@Wy0+�p@W�� �},@XQ�^�@X6h�2��@XI�hV͢@X����@T��F�@SSS����@R� >�ܜ@T>���@T�� (9@U]��i @I�Y���@I�@_Uw@F�~T�C�@B���Cr�@>-͟��@>�l�g�@@L��p'@Ba� P��@@��6-�@B#�ک@Q����@T����T@U�.t��]@V6�lBo@V[rrI�@V�UU�4@Wg���\@W�G�X@W�Qþ�@W�[��9@@W��L2� @Wh�7�@V��~
�@V����-@U�PBx��@T�6v��=@T�'
G�@S��7��9@SQ�?lQ"@Rh���w@Q�Qw*f�@Q���&J@Ru(J�@R�:��x@S�9(��@T���s"!@U��A�@V��v�j�@W���}�,@W�ALU��@Wq22��@U�t��@S���>��@Q�hq͞@QĶV`V)@Sg>�ŷ�@T2�2�M@S�W�`Z$@T5#sZh@S@��[w�@MVG���M@H4ib5h@A��mǊe@4
d�c@,<�Z&�@*rv܏��@+��D���@-�LE�s@-{3�ׁ�@/����@1��s6H�@5zW�^��@@�5�W1@F)�8��@K>����@K���,`�@K�_nU@P32��{@QM��j3_@R���-��@Sbp/��F@Q�S��^@RטX�@SU M��!@T��y�]@Tx�?�O@U�\�w��@V_D+��@V������@W;#U:��@W���	�@X�=�kz@X5�_hF�@XS�zU1R@XJ��@U��WYW@S���`�@S]w��@T 	�\��@U�q�@U]��i @I�Y���@C�Q�=Oi@F��)�<�@Bڽ����@?(a�֤[@?��t:�@A#��CF�@C�s�T��@AQ��@@��u��@P�����@T����׼@U�;�1�@V=ᚇ�8@Vqm�h@V�D��/@W
�s9K@W�5#b�@W�@4l@WѲ�r��@W�����@WM�E��@V�Q��k@V�����@U�"���Q@U�6n�@T�LM�}�@T����@SV+5J@@Rt�7�3�@Q�R�.�0@Q��y��@R^9�8@R���x@Sܽ\0��@T����5@U����@V�*7|m{@W��E�@W�����@V�48��@U~�,�@S��F��@Q�!n�@RyVuD @S�� �& @T��ާ��@T��^�>�@U8���Ύ@S�>c!c�@M°���@I>IC[�@B-A5ƙX@3Jr-3�5@&%Ӫ��@&�� @)b[�V@-�9�/O�@.�EKwf�@.L@0#�۬�@2�d���@;�y���@E��]�Ә@Lsrl�T�@M�}n~-�@ML�2�؍@Mi]��@Q�R��@R��^�#@S��kHM@R��,hC�@S:N��7@S{:xG"�@Tb����@T��Q�+@U\h��"@U��[`B@Vu�i��c@W�� @W�n��d�@W�f��@X+,@qt@XV�T���@XC8�w�@Vű��tJ@Sѧ�>�%@S�PEUU@T
V8���@T�[�+�@U]��i @I�Y���@H���z(@G7��B�#@C>l�ƒ@@��ܳ@@�8���@BJν8�@E������@C��{m@AU��vo@P/oBĥ�@TR�jCI@U�w[��@VLz��l�@VzmZ�C@V�Nu��m@W�rHv�@W�@���@W�����u@W�+�L�@W��T��@Wb�O�@V���;?�@VZ���R�@U����-@U-��/kn@TjJbi�5@S���M@SI���@Rn����@Q���b>5@QG5����@Qw���T@RX�H�S�@Su6���@TV�tn��@UDY���@V�@���@WY?��@WH���@V(�h�@U h�I @Si�c]#�@R��YA�@S�0/��@U(Ս��@U�5�{��@V^�@V5��_�g@S	��~�Y@O֪aa��@H��Da��@A�Y��4@1�\���w@$,`�^�@!�X��@&��K� 5@1'���%�@.�I>[�@-���@/���1��@3�5U�@;ЛZRÀ@F尖!�@L����@M�]�Q�@L�K}��@K��a�y�@P��;4��@R]�k.�*@S`��{@�@R���;�@SB4���@S����i�@S�Ł�B@S�v�fs�@S��֖�@UN���U@V%��/)�@V�U|�k@Ww�k`@W��=z�<@X(�q>0d@XXK�72�@X5)�ۦh@Wf�kq^@TEkn@S'�33h@T(Q/�a�@U.�Y�@U]��i @I�Y���@C�җ�@Gi�t�vx@C��|�1@@�)f0�@AH�oG8g@C��i���@GA�u9r�@E݀o @A��Y��@N珶L�@T�X@U|�oh@V c�(@x@V{Sr�@@V��S��@W��ѭ�@W�NA�n@Wߔ�y�1@W��@W|���E@V�uS�e@Vz�ݴ�h@V0�C[�@U����o@U�6��@Tb1�(��@S��l�p@R��%��L@Q��,0�(@P�����@P|�k�iW@P�
��^a@QuR���@R�Dcc��@S�	�	@T��z��I@VaH�20k@V�2@<�@U�ۚ�m%@UY��E�@T�ol��|@S���Ž@TΠ�@UP��>(@Uܺ�~�@V���JO@V�v�l}@V2�s.�@R���x@L�Q�O� @F��p}΀@AD'���@.Qo��H@%r��w>�@ ���jC@!�lq���@*j�=�@/��@,3��+!�@0�\�!@3WIY=9@=q�1�@GxJ���@K�n����@KcR!��@K9)�&ν@MǅMP5@Ph)lD@R���' @SO�eM�@SrB���g@SnX��@S'��F:@R�����@S�bF��@SBعB�@T<����@U��$�@V�����;@WA��X@W�A�D�@X(Ο�@Xdٷ҉j@X�y���@W����b@T)V����@SEr>d�@T6 Nղ@T�&���@U]��i @I�Y���@D(q��H@G��(��@Cݔ|M@�@@��H{@@Bo�8[��@EJ�
�3�@H�T���@G7��Y@@��O��@Np�Ag-@S������@UV��C@U�����'@Vj��"Ą@V��
�D�@V�EJ��h@Wk�ʻś@W�����@W��\�@W�9x��@W5�3�.-@Wv9y�0@VE��D�@U����`�@U���@T�'ܾt@Sdz.C�@R,�M��@P��ݻ�%@O�xA-�u@N?���@M�o5�*�@O��ަ�7@Q>�{�@Rߓ��!@T]��@U�}��@UU�Lbi8@Tf��d@�@T\:��?@T$��B�@T����v@V9�C�m@W��� ��@WD9��@Vҁ�i�=@Vo5���H@S��,�@Q�C�@J���S�@G0�a�|p@=��N_��@)XŐ��@ 7��ݖ�@��u!�D@�b�y@&Ps���@)��aq{@+r���B�@0�Ydd@3�p�4�o@?���u�@H"Ρ��@J=��u=t@KFͼ��/@K�Z�'$�@NqN�V7�@P{k���W@Q��� �@SP��i@S����@Sc\M�@R�̙���@R����@Q��5b^@R��j�T@R�y_ �@U)1�N&�@VZ�<k��@W���c@WL&��<@X!t��R@X[��r2@WM%R@V�iI99Z@T\��MO�@SR��/��@TS���(@T���J�@U]��i @I�Y���@Hx�����@G�Ək��@Dqc�7�@AU�a���@C�P-��-@G V��q�@JC �@H)@7-��@B��-�@P�H���@S�&{%%t@UD�M�G@U��vĪ�@Vq�Z��@V��*{�@V���;��@WN7�z�@W�L1��@W��^\�@Wr�PCl�@W-�^���@V��4ц#@VM�.H@VY�@UW�^�J+@T%��%|@R��('@Q;����@O9E<�mK@L�k�3l�@J"�X3@Gy�5�E<@J,����@PR����@Q��7��@DS���@E[�nK3@N��rh@R��lи�@SY���[@T)���7@U�Ԍg�@W��,qSh@W�W&r_X@WE���uL@V� �$C�@U�/Ƥ�@QV�B�9�@N�;�@KS��ʈ@E���@9{bN�@'�V�P;{@R�c��@M�N�5o@&s'��@"k����@&���et�@*��<I}�@0�ր�ʈ@8�5r(R�@E+��x��@I)����@J�I���@L@�/˩5@L! H��@O׹�|IL@P�`�A@Q����@S<�n���@S��o]�@R����1@Ro�m��@RC���@R+�MV>@Sd�F�=@R�M
�Jo@Sð�]@Ua�_Ro@V�T��8@W0����@W��*��~@XM�;%�@U�5�>@U�Na�{�@T�?uw@SUr\��o@TU>�|�@T��� @U]��i @I�Y���@D�;�qh.@H2��V�H@D�����@A�]��-'@D�s��e@H�ts#��@K*��= �@I,&�<@Ad��L�@NN� o��@S,~)��@U*���@U�i^KE@Va�֭�@V��I�I@V�A=J�(@WL7���@W����q�@W��L�.@@W~�#�U @W-���f�@V��/ێ�@Vw'�@VK�3�5}@U��Em@T��r@Q�PjO�@O�z`�W@K��ej�@G�\@��T@Eo0U�+@D���?�@D�i���@E��>5�x@/g%N��%@0�L!���@9�s��@@ׂug@L�:�w@R�%|[��@Ut`�,�@V�#�	�%@WgV3G+�@WX`�O�@V�ڗ[k[@V6�=��#@T�xb�A@Q)m(�5,@L�2]�x@J5��+�7@D"��b�@8�V�@'4S���@�&���@���m��@cw]R�E@>� � @$��%�F�@+�F"�@1U��@;������@H_�s.�@Ir�qW#@JiT��Y@Jٸ����@M�ܰ�m@L��h���@Pw](E�b@Q�řf�x@S(F�y�@R�����(@R��N]�@R����.�@R�@R^�H�=�@R���Ԭ/@S�K��c@S��)NQ@TlG걕@Vf�|G�@WC�:�c�@XЈ���@W�d��>r@T@f��<@UY���iN@T��aq*�@SJ�gV�K@TR�J.&@T����2@U]��i @I�Y���@H�C-�< @H>�t��;@EP|��@B�1w��@F,2�@I�<���@L?!�F�@H=���@?�ӽͲ`@L�:��M�@SL^y@�@U2���@U����-@Vk���=@Vґ�?y@W4k��M@Wv��Bm@W҃6[�@W��YM@W��=�}@WS���C@V�&X(9@V��D*�]@V#~b�@U���	��@T1I�3��@Q@i^q�@L����`@G�n@C���E@93��'@&:be��@%�����@,�c!w��@3'dIF]�@3ǂ%qN#@<1AO�D�@C���j�@J�+Q�m@M�7��@Q���j.@S��:U@UEg,G+@U�DY�/�@V*�&Z�@U5�j�S@S�Q�tD�@P�ppx�@M/��T��@IJK�
!@D���l9�@7�&!��@'|��p�@����ny@h�w�^@|A��@�>���@"xb3�j�@)�[N�+L@1���^mP@B�ޏ��@H@��r@I���@J���N�@L0K�@J�F�/��@N�}|�@P�"^�@Q�^%�@S(]`�~�@R����@R羦U�:@RM��:��@R��b���@RK��(@Q���@S��z��@S�¿��D@S�h_*@U�����@W<>'�@W�KSa�@W-'�0��@T'7���@U_Q�
@U's|y;�@S]U6��a@TopC��C@T�(�q�E@U]��i @I�Y���@D��݉D�@H���\��@E@�`t�@C<����X@GA�S8��@K���'@MF��f��@G[���iC@>��uҹ�@N!�Z�eU@St�rI�@UBӵl�@V 
(+@Vr���y@V����@W���l<@W��(c98@W�'SU@W�s����@Wq��8�@V�H��8=@V�?\N�@V75�@U��[�\;@U�t��h�@S��[\��@P��[�;�@Hoh"��@AЪW�m@5f�t��@(	�Ĭ	@&Q��P�@+���D@4�s�0�@7~@����@;9~A��@@I��Qe@Eh.�a�@IS@�@�@M����O�@Q��Ԋ, @SL���@T�B��Wq@Uz"���@U0ӧ^z�@U��#�@S����C@P��Ľ�@M�sx���@H��5��p@Dr�`���@7�W��_�@$��}y�x@����y�@��4 -�@��O��@�kTl@!Y#m��@)��$h�@4T��-�@DqM�$e@H;�X.A@Jg�V�@K�TXM�M@J��1Fs@KIP7@O�$\`@P[�7<�@Q$�4Ȇ@Rxz�r��@R���T@S�	�-�@R �L+@Q�mO�r@RU��8k@Qx�o@RF�P_�@R�5�_;@S21S��@T`��V@V��AY��@WM�IqV�@V��;/;�@SҤ hR@U���pj@U`���h�@S�P��rY@Tr��%��@T��s˱�@U]��i @I�Y���@D��\X�@H�q�o��@E��	,@C���;!k@Hg�-�:�@LpU_�?@N
# O�w@G :\��@?20.>h@P�v�w�1@S�K�>$�@U��>�@U���K@V�xFB�5@V㤋@W�)P@W��#�?@W�M���@W�Z�x@WT����`@Vأ��  @V�;AL�E@VS�a�@U�����@UCz�B{�@S�����@O�KEF�@E:�?ì�@6��	�/�@.�Sc���@)i�rL�@(�����@.�?�@5B�
��]@8�H�\�@<���
Se@Ar��R�e@E�]�<�I@J�>�)x�@OI@��J�@Q�PD�+�@S�:�.�@T�,��@U󊼛�@U^�Dl<�@T�o�O�5@T
>�k�w@Q ���@L�2j�)�@HZ��1O�@CFiaf�@7u@��.�@"��i�[�@�(K���@
iVH>W@4x\CP@"ˣ�B�@>U��@&��RYa@2��D���@AK�+x0�@G��Q�@J(���F�@I� ��A(@J!W��w@L�ږ�ʫ@Oj��#	�@N�2���@P�swn�@Rx9���@R��{J�@R�Z�y9�@R�z�p@R�7-[�}@Rky}7�@RH�Esi�@Q��v�yG@Q��%�t@Sד�ՠ@S��0
5C@V��j%�@V���j�@V����$�@T����&=@UD�zG@U��~�@S�g-�_�@ToZ���@T��A�@U]��i @I�Y���@E+$Jm&@I��i��@E�.Q���@D���{��@I���&�=@M<4p%@N���GDe@G��U�@?�͉g@N�!�S�@S����@U#s�@U�L{�s�@V�*.(�@V��-�@W/��
��@W���\�@W��r�@W��W�n�@WK�G:��@V���<0e@VT��:��@VCz7�K=@U�����@T�@>�f<@S�S�*�@P��)S%o@E�|P�@6҇ g�X@0����@/�>�ѣ@/�D)�@2J ��ci@5�q�c�@7y�0�N�@=E�v�T@@���Z��@Crx����@G��5�I�@NoA���p@Q���&��@S�s"ID@T�����	@UV`�w1�@U\���@T��=�>�@Se��pw@P�C���7@K�
��1)@G"Hh���@B���2�@6`IE�N|@"���P@D��W�q@	�u*��@�@ƪ�m@�-�xѽ@����@"���#�@,d�\��@8�f��O�@E�Y"T��@G�@cH�@H>뼹T@K�2����@L��+�Ơ@Oc9_�N @O�>��>�@P���W�@R��8@R�1r @SOP��?@SeROQ��@SZ�֏�@S2�i�@S'�-)��@R���ZFO@RG^�OJ�@R�[1�@S6�n�@V������@W3aD���@V��zTx.@T��&Ayh@Ue� �@U����:�@S�b��e{@T���j��@U����"@U]��i @I�Y���@EYh����@I8���S@E�J�1��@E��Pָt@J��A��@M�a��� @OK���!�@G����m@A[�ç�@P8=ci@S�S�|*�@U?�j�Wy@V!�Hnd@V��Ay�@Wĉ �@WzPa���@W�><�?u@W�$v�C@W�����@WP�ӲC�@V�u���@Va��@V��,_�@Ucng���@T?ne$@S��g��@Q��@�@HO�K�yH@<#6�(�@4�PɆ�@5\Y����@4���a��@6"�RH@6����7@8���B�@<wh�IL�@@��k�q@CR<Zg�r@H�@�\@L��
��=@QhKh�A@S��O�)@T���
n@U��w�#�@U`޸��@Tu�v��@R���@PIk��s7@K0��x@F����YK@Ac�s��O@3�G�3@ P�qn�@K�;x%@����]@]|y��@
�h�=ka@O|?[r�@��IH�@)6��U{@;=!��s@B��cmUE@FO@G�	&�B9@J��o��5@L��G�W@N�X�˹7@P%'zw@P�3�)@RF¸I@RԾ����@S�[���3@S�O.ְ@S=S<u5�@S�u݌��@S����@Sq��#7�@S�5�@S�u�{@SOe��( @V�bZI`�@W�x��c�@V��-Ec@U�zɆ`J@T�/��5�@U�ݎ�R@T^��D�@T�%S��@U	V�7X�@U]��i @I�Y���@E���%s�@I��C#F/@F/E�5@F���@e@K� Y3s�@N�|�)$@O�F+�3@H]4��3!@BE����@QO+b���@S���cP?@U^B���I@V&�}F�@V��t�m@W/�io�@W�R!���@X�(���@W�����U@W��WH�4@WQp?b�@W�E=@V/� ���@U����@T�6f}@SU�P���@Ro����@Q4'�7��@L��o��?@A�'���C@:���j%�@9��8�@9`s��@9�c/Ɯ�@8��o\��@9K����=@<�ҙ��@?2�pp��@Aw5 ��D@E��9>�_@J��
�D�@PhN�@S��<	M�@UV\u5@U6Ʀ(�@U,��
Y@TL��BZ@Rc`g#x�@O��K��@J�f�J�@F�T��ţ@A��O�d@10��E�"@!��>6�@�$��G�@��8��@�z�@`��W��@��|7�`@hW���@)E[v��)@@����@BLLU-@C�ԡ-n�@C��O)��@Hd�?J3K@L�*Rg��@M�="�u�@O�{���-@Q�GѼ�@RD����@RԴ��8]@S�͖��@T0�v�@Tf���0W@S��)�*�@T��,��@S�V!���@S�����@Sfbf�@SSv�r-�@V��y�!(@W�	�]�@W,�|7��@V�!ҡv@UB7��fz@U��

�@T�S�@T�iߔG@T����j�@U]��i @I�Y���@E��T]�@J'wd�@G�#w�<@H(!tf��@L����/@O���&1�@O�*���@F�"���@@,�J��@Q-Ȑ߀P@T)~O�/@U=�?a@V"�Þ�@V�����E@WYC�p�y@Xu��R(@X?8��x?@X/�O
,@W��d3�-@Wj����@W�ϰ@VWfou@U�EX��/@T�Ѝݹ�@S�yx/��@ReRIĸ�@QE�)��@P���Iɬ@I!o��L�@A�y.�@@7�C��Q@>3k�@=�=���@>���3@<����@:q|�K�@;���$��@?�೛��@B�E�@F�+M��@O-�z�@S ���]@To�7-/�@TX��X{:@T�+�#�(@S���l(@Q���t� @N��X�]�@Ln��|Z�@Ha-��Y@C�r#�=�@3�x��@!���e�@�y<@	�E��@-@�P�N� @\�G3f�@#\���e@��]�@+;�c��O@B�t��K�@C=�!P�@@���A�-@B:��Q�@Iܱ���@NՐKi�@NX��z@O�3��(�@Q"���	@Ri��i�C@R�
�?�@T ��kO_@TK�z�|�@Tm��� �@TM+�\[@TCk��w@TyCV���@TV5խ�F@S�Z.���@S/I�J��@V���@W�Hl���@W�^�p�@Wv���-@V�[��TS@U�ۺ���@T2��X�@T�|�4�S@T�ǙV0@U]��i @I�Y���@Eᑖ�@JV�T0�?@G�V>�kD@I;X�o��@M�~���@PV5��(@OʪS��5@Dr��2��@>�vқ@Psy���@T2��um@U�LR�c�@VB+�H�[@V�Ř5�@Wu^8y1�@X&�GO@XO�G���@X5z$P@W��1�@W��>��@W^C��C@V�J�$�@U��,��@T�Ֆ	 �@T]`��hm@S;�7V@Q�m��-�@P��� @P�ed��@K
�0�-@E��C�5@C�,s$@@B�)C4�@B衏;X@@0	�F�@= 1�C�@:Se����@?Ȏ���@@?f��5@E����c@IW7����@M�] n�@QUoϵ�@S�F򈑋@T8�)�@R�3E� �@Qm鎑Yi@P	$`�@LCt�.9@HR�q��O@B�Ω�xu@4霬�@#p#iKg@���,@��P�@��}<,�@3����@�!��@:�����@0��a�~@A��af]@@���]��@@F�J���@B�C��@H�� #@P�m~U@O�2����@N��7��@P��`@��@R�0�X@R�~��@@T0� :��@T������@T�J�v�.@T���� @Teš��}@T�!�#l�@T2b`2��@T*"zU@S����H@W ��a�@W��78��@X(Z�z�@W��SlÐ@W[/-��$@U���C�@T7�Ie�@T���s�/@Uj���.@U]��i @I�Y���@L
@]���@J�B�5��@H��>�@J_֞mu�@N�����%@P�n�\�C@OԖ���@D�}�į@>��eh�@N?]ƅ@T��Ւ@U�YѺ/�@VB)���@V��ǈ'x@W�S�@X'h�[�@XF�N�w�@X(�!�X@W��="/@W{t�{C@Wg���@V��[0�c@U�n+�K@T��a�W�@S��k�v�@SFg[@Q�.��1@P�X�J5F@P�h�Ԍ�@PQC���@L��{�ѝ@JS#L�`|@G�V���8@DP�p��@@�]۰qH@=Wq�@;v�[Oq@?H�DtNs@?H���0@A��,�VF@C8J���@G��p@N�ڔ@R�'d-@S����@P)��b��@O�<��@PX	&�y@O���kX@IA�M>��@B�e�/6n@6�U���i@$���[@�Q:�@�l��--@	�DO�P@�o.k�@@����?@xf^F��@0w`�ި�@@Q���@Aū��n@@����@C�F�5�X@GJ�Qx@M�u�z�w@P]q�~�@N@e��@P[�&���@Q՞&�o@S,��(��@TF����@T�a��@U<t%�@T:�ΐ�y@T�߷�Y3@T�r ���@S����@T:�?|V1@U#�.捚@W"o�R@Wזu�2�@X;Q0��@Wŕ��<�@V����}@V	ْյ�@TCu��{�@T�G�6�@T誨Ǖ�@U]��i @I�Y���@FO����@K	� @I�g�2$@K���)�A@O�0��fu@Q0wv0�@O�M����@D� �Ȇ5@>?Y��.E@G
Z�,#S@S�pr�@U�o10ͫ@VO��MĻ@V����%L@W�XgJyL@X#��>j�@X9��.�/@X
j��e@W���)@W�V��@W��͠p@Vit�ʉ�@U@���@T�l3�E/@T
����X@SZ�
 ��@Q�h�i�W@P�u�R+@P6W��)@P=���Q@Oڢ0d�@Jb����@H]ح��@FӭG��@E� a�@Co�;.�<@@�C@@O(-��@=�/P�=@B��L�@@�>(9@C�
�o�@Cp�%P��@L���FO(@LDs1�i @K�%1�]/@NS���y@PU^&Y8�@N20�_6@Jŗ9I�@CT�'�?H@7��@&d��Z1@����hk@�	|@%-��xw@�d\��@!A��n-@%]�޼V@'D�*��@?W�N���@@� �b�@@c>���5@Cd(��{@F�YܐG@L�S���@@O7j�x�@N��g��@O��0��@QȪ��@S+B��ѓ@T�L�5�@T�棨so@UM�pȎ}@Ub�V�.U@T���= @T{��I��@S�P>jz]@T!���3@U�E)߽�@W8��g�d@W�q[i�V@XZ����@W�7˜�`@WFu�Z,@V*��v�!@TTW���`@T��{�@T��2Q�@U]��i @I�Y���@F���I@K���,=@J��Z@L�d�aa�@PT��R�z@QTҢ�@O�b��H@E��XH�Q@>��m<y@Hz.[�@S�m��g@U��1�@Vc慇+@V��|d��@W��.ߐ@X�C�M@X� 1�-@W�>��<�@W��c�,e@Wdo�|�@V�m�$�;@V��W;�@T���a@T�L?��@T����@S�B�Y�@Q�y�,>�@P�f��@P�g���@O8y�o�@ME�oGh@JO{|~SA@H ����@F��P=�@D'�f�J�@EK<�&�@B�t�2��@DA����@G�V�۪@N1>v�z�@I�)�]�@B~��N$@G�'W�@H�ڪ��@L��"ϑ@D�x#��@EjQ�~c@O��W�x�@Lߜ���@F�2Z��@A�%;�u�@7���.1@$�Ѷ��K@T[�@�y@���J�q@$쥔��T@5Gz8�R@1�m���@!��
�\m@%��A�@4�3T5�@>)��O��@A���J�@B�lC�;@GI-M�x@@M��J�@Ol���@L�
�bu@OMtɃU�@Qus�d�O@S�u���@T*;��@T��u�@U^`�7z@U�i6��@T�����@T��;���@T�	��C@T3c�#�@V
!&�<U@W2��7@W����g@X�f"�D@W�=_�a@Wsfc��@V=�Cc�L@T]�ZyZ�@T�Y��OY@T�IGG@U]��i @I�Y���@F��9Ɩ"@L]�:�D@L��/Z�@M�Ǖ9@@P�W�vrm@Q�}D?p�@P ���l�@G<Ԏ"�@?��뗣@I=F_h@R�.����@Uf ؎v�@Vd���,@V�3��@Wp�5���@X/�q�M@XʬP@Wڈ��� @W~�,dm@W�׽õ@V�;,[�@U�J"g�g@T��Ò�@T�B� I;@TP-�&=@S�i٧�d@RP��/g@P�*�`��@P	p~�A@N�T��o@L(Cm�5@H�{�ߟ@GE��Pg�@F���R�@D�>c̈́@@�S���@C�ʰ[@C����@F�%)�/@N�B{1pE@Sk����@Rq2�Y�@N�4g��#@NC�vx�@KV�hAX�@H6�+�>5@M����@O[4!�@F� ���9@C�k[I@=:�@o�@6�m����@*D�n)��@5�\x8@EZ<�v�M@A1��{�@1��\)�q@��-2�@!N�Y���@%�Kw��@,ԫ �@4�ɟP�@=�OAh�@@�tP�k@HGQ3ic�@N��ԭV�@M�V��ܰ@L����@O��^qͅ@QX�c��@R��n|ٙ@T#��R @T�}`�LU@U2�%i�@U�i���@U��_zC@T��+�)k@T�	�*��@TA��Q�!@Vp�6�:�@W-���Ӿ@W��%��@X0ޚ��E@Xu|53@W��q�2J@VJ��W��@T{"�C�@TƂ"^��@Uy���@U]��i @I�Y���@F��}��~@L�T�j8@Mbi�@�@O(�����@QC����@Q�'�6?�@PN�YZ��@HH��5z�@>��[۽y@E��(�s@R="	�@U1�-?�@V^;���@V���0@W�]`��U@X4�!/�@W�+ۺI@W��8r^�@W+W�ٳ@VΈ�t~�@V�e-���@U�`�	�H@U	�����@T�d"
P@T�n��!�@Sr����g@R.���r�@P�k/v^,@O��c3@N;�J��@Kj��@G��!K@EVd[�@C��Y@B���(�@Ak�ZP0;@B����@D�/@��_@HBu�3�@I�_ŭ��@F� �&@GY�<�@@K��\@RS?18��@RJ���i@Q�~�(i�@Q]��T�@P��ǩ�@H�uŠ��@>��FY@;pr5h�@2l���M@?Uy��_�@F�[C1��@@wlՓ�@#[����E@ �<��z�@$�Muõ@#�=q�@'��F�@-��f��@2롛�o@:�S?w?@?_�{?��@H[�F�#@N�.%��`@L��g��@M�+� �U@P�0�f�@QE���f�@R�ĸ�S�@S�3���@T������@Uqh/ǉ@U���Cn=@U����m@U-�377O@T��*n@T�i-2� @V~�+�u=@Weq�t@W�Tb�x@X)�[�2@XI���I�@W��|mZ@V_�;z1�@T|��Ϸ�@T׫�ߎ-@U����z@U]��i @I�Y���@G*�/�u�@Mx�7B��@NO
��E�@P
`���@Qd.�^�@Q���$�)@PH ���@I ��W%@>���r�X@A~JNJ@Px��12�@U���Ws@VW�1 �@Vݴ�v�@W�4�Ƴ�@W�g�r�4@W���ؤ@W���Z�(@W
�Vс@V��(��@V��XI�0@U��}��@T��;�l@TƼ�L2�@T��HAB@T`lfWD@R53�cܢ@P��#,�@O�M���@NW��byu@K8CQ�!s@F

�⬐@@}o�_�a@;\pRqbH@<���-q�@?��ck/�@AL��vQ@B��z��@Ca,_\.a@CjtEA<M@Do���D�@Fa0� W@F���/A�@H�����@Sr���@SӜ,)@Oә� ��@KBW�J�)@D����e@8�I���@0?鈄8;@<�ܴ�#�@C,e5,)1@9�<�EA@#���#��@Q�a(�@�_;>�@$� {|*�@'���� p@+*H��)�@.��C�}@3�1��I@9��Y�H@A1����@FJ�<� @L�����@MGNJs@O �b��3@Pi[Lae{@Q����y@Rf�C��Y@S�J�S@T���*��@UdE�L(@U�:�@U�Cy@UK#�kR�@T�]��@UL^L@V�!�:5@Wp����F@W읍j&�@X/�^;@Xa�QO�@X��O�@V��n�2@T��L��@T�ރV��@U y5Z@U]��i @I�Y���@G\�	��@M���L�@Oxx��@PmgBX�@Q�DT��0@Q�=�Y]'@P� ��H@Ia��f9@@C /1y@@V���@L�ZU7�@Tˢ�_�@VC�U��@VΕp��@W�WH�@W�w"D@@W�� {��@WZ�E���@W�t�9@V�7�a�@V��Dw@V*�S�T@Tдe��@T�s�)B�@UB#|��p@TNڴ�]@R�Fw��a@P�ʣ���@Oc�Ml��@M�1k�@K4:�|љ@C��P���@6�cA�U=@4����@5V�o�� @;����0@;���@Ae���S�@C���~ş@B��"
��@Dr��w@E�5��_�@E�ku� @E�+3�g�@H7'�`@R��V$8@O�{�l��@I�m���@A�hc��@8?'a��@A�]�<�@4�Y��9@+o��)@!�{�?@���d��@��Z!%@�GO�@&(��<��@)3�+C�@.��cҝ@3�o=��@8�ڻe@< $���@C;��6��@Fg�r�a�@LӪ����@Pln�oN�@Pw��Q��@P�=���@P�ÆG"�@R@])��@Sōr3z�@T�Z��3t@Ua��Ը@U�]R�t@U�+�Y�@U���#@T�[Ge�)@T����_6@V4lco�@W���4@X[����@XC��5O@XsN�+t�@X���ZC@V�l���@T�/�EZ@T�n��k@U$ExS�@U]��i @I�Y���@G�e|<�X@N.SQq@O���4@P�N;A~'@Q�6\� �@Qwz���@O�nX�5@I��ݎt�@Ah�Xl@@v�ݳ�p@IQ l�@T��@V68�<��@V��y�	@WrSʾ�@W�?킾a@W�U[�q�@W8�;�Z�@W>�<=I@V��*��E@V����t�@VJ�d�+@T�ر�I@T��К\�@Ur��K�@T[Ky�<@R�T��@Qo��1�@O�*�%�@N&(O��M@K�~��Y�@DsH�G��@=2+t( @74CK��P@9o���=�@?�n��@;�LL=@@�h��@E�-a��@A�טBX@F#��7�@G
���@E��{���@D�3�R��@E�0k+�w@J���fʄ@Qq��A�@I�߽p@B:�|~W@4��}*�{@B[_��C@0%~C�O%@ր�o%�@g��s?@#��@yO���e@.�dqw@%�Z�H@+�"�/@1���ˋ@5I@\9V�@8��k@>Q��;@A�����@I�Rr˺�@La��PE@P7��&n�@N��z~@PA�����@P���l�@RFS@S���@�@T�"\��@Uge|��p@U��T�Vu@U��d�@�@U�qk�2@U �x��3@T����E@Vn֦��@WJm*��@Xp�O�x@XN��9.�@X}v(�9@W��̱?@V�eU���@T�j�fZ@T�g�S@U)���0@U]��i @I�Y���@G̞��l�@Nk̢���@Pg�Wַ@Q��
� @R�Q�m�@Q2���@N���5"?@I���	=@BvD\�G@@��$�@H�A��3@S���6��@V'����@V���h@Wkފ5��@W��/�yQ@W���iB�@WZ/��7@W0|�@V�wރ�q@Vk���@Uۓ��"x@Tq ��@T���T��@UvuUk2�@TR��&d@R�o�I�_@Q-΄9@P��y�@M�l-�]@J�hnD�]@I���i�	@I�o����@J+�'_�@J�KdW@Is>}|�@C�`�S{@B 5�/R	@@OK�m��@E�)�O@H|s����@H�H<�@F��v�zo@D�`RdP�@D��M@G�$T��@H[5���@H��=��/@@�U0]D�@3@�#���@@��1`�@4��Ɲ@��>9��@vH6+��@	]"��@M�[�e@k h,u@#�T���@.�򻖬�@1��m2J	@5�-Pe�@9�z�6�@>yl�}�@E�ge�C-@M/�Q�� @Mܙ*�u@K�f^�@K�9�EW@Nr�}?a�@P�,,E�@Q��T�@Sj�s�L�@T�0*9�@UZ�\D�@U�s#�^�@U�晊S�@U��E���@U}?��0@UD����@V)�T> Y@W
�_� @X�	��@X?����*@Xx ��t�@W+pQ�@V��R�7�@T�6A�1@T�_�6�'@U'@;V9@U]��i @I�Y���@G�z���u@N���vh@P)θ�)�@Q\�53�@Rt5�"�@P��&�@Mp1�@IK�%YY_@CHI��P@?��T�a@F'l���@S��P�@V3��@Vĸ�N��@Wxy��H@W�qlŨ@W�	�p�@W���/@Wl�Ce.�@V�@�l�@VI���I@U�o>��@T�+��I@T���@U~��}(@TI�<"�@R��i�;@Q[8����@O���p@M��#�Jp@J��M��@H�+���@G�[�`@Ey�K��@F{�`�+@I�+*��@O�'�;@L����p@HGoa�vP@I6�k��e@J�)B�@J��l M�@H4L<�B@Eeg��@D���a@F�%�U@H��_(P�@I2�O䁰@D�o��}�@6�ɌV{@;�s���@@�����g@��ҽ�@��6�%@(l�	�@
���@I�c�q�@*h=��@7v@WU=�@3v�}/@6?qGG�@8���d@@�l����@O]{xs@K��Ѯ��@N�F:�@I���*Z�@G�m�aL�@M��K_�e@P���]�7@R��ɉ@@SHd D5�@T}L�y�@UL�Yzc@U�5|��@U�z�Ky�@U�$S�݀@U������@U���@V
,MU8�@V���r@W�c��)�@X���	@Xq��Bj@WN�b,~@V��y%@T��u@T�1��@U*](4�@U]��i @I�Y���@H2�{P[�@N��]�@Pd�<�3@Q�����@R
iQR@P�)���@K,>;�@G�UCl�;@D�?,�el@?.�#���@C�q��)>@P�ēA�@U�ӆ��@V�~79��@Wad+{�u@W���@WÑ8�@W��}�Ç@WX�:�}@V�D��u@V=h�g�@U���^�@T��8Q�@UH�E!^�@U�G��;�@TOKgo�@R�T��@Qs��u(V@O��h��@L��Ȁ @J��^��@I�Y�$<@G{���@Eu�exU�@E��ο�@FHFek�5@Hb�Y|��@J7#q�@JW��V+@K��O[�u@LGM��c�@L	#t���@J[y��OP@G'���
�@F6�]0�@Fׁ�4#�@G�#s]@J��ܳtU@L8� ��@G%��U�[@D2EO�e@E){�?�@4xW �h@�a���@���@��z8`�@"�)rB��@3����6C@/���\�@06�4��@0�F��@2�Q&s�@D+�$�a�@H;?���@F@!Xb@G03�V�@Lcƚ�@G��ڡ�@Osض_Qi@PSYb?�o@Q�آa�%@S{���@T�Ӆ�`�@Uj+,h�;@U�;%u)W@U��� ��@U�@�d�@Ue�����@T�cM�@VC�KS<L@U!q���j@V���[B�@W�ݍ~��@X]v}�3N@W�G��@V���PeT@T���-@T�����@U$�*��<@U]��i @I�Y���@HVb�P��@O,_	�@P�{7"��@Q����I@Q���@N�?��a@H�\غF@E���@E;�tF�@@%QB@C����ό@N������@U����k;@VÄW�߇@W[i9�5@WՐ/X�@W�F��{�@Wu�����@W1*�H��@V�˨�i@VX�\K��@UnJ+�7@UY�Ԩ�@V��L�@U�qݮxh@Tw���@R�Drt<�@Q�Bx�bK@P=�v��@Mv_$��@K�-Eo@J�t�8@GT,iS@E���'�@E�8�)@F��W�@H�^����@I[I6V�@K
DU_I@L��/إ�@Mb��J»@L�(�S@K�R�I@Im�{�Ja@G��}�s@G���bU@G�Wah@I-�K��@LM�M]@LXf��ȳ@H���,�@D!�]��@C�"�*�@3���7@ �}��@	�+�`��@!m���M@3���"r@$a;��x@*Szr	�@+iK��Q@-��ϲ��@?F8	���@B|s��4�@B��F�s=@D�N��;@J�Fa�%M@N2�t�@N>{8�W@Pd?�Ϻ@Q�jD��@S�J� ;�@T���6�@U_�w��@U�g�D�@U��� @U������@US��q�@T��rGQ;@Uݼ�K��@T�KZU=@U���p�@W283KVx@XE0�J�@W�eaM�@V�av7�@T����)|@T�Rp�P@U0,�n"@U]��i @I�Y���@Hu�T1q@OX��D�@P�w����@Rܸz�S@Q���п@MB� $f�@E�H��0Q@B��Bd�@DI���6@@V��i@C-���Wb@O���n�@U=�F q@V�*�Y8�@W\���~@W̨�T��@W�n��2�@W}&]@W2�R�?@V�H��@V����@V-$��'@V/��p�L@Vi���@UÃ#yH�@T��F�u@S�#܉@Q����j@P;Ŝ�-�@N\���@L:9ye��@Jӓ���@Ha#���@F����,L@D��7U��@GP�Hqdq@H�����@I��lϚ�@K�'�wk(@M�Ka�i�@N����X|@N�M�G�@L�S�޻�@K��5d@I�}��@I	I��5K@H�:�;@IOM6�@K� *�;�@M�m�8K@L^����@F�}��@Ew�C�@4��Ē��@�~U�1@	C���u�@>κ1��@1�D����@$��� l�@+�o6_��@'��#À�@+E���@4�'l�j�@B��K%{@B� �xV�@G3^����@Igg^Eñ@K*W���@NPz
� @P���%�@R6~�K*]@S�x�P��@T�^8�z�@Uop��e@U��ߨc�@U�x�B�h@U��Cs@UJҏxi@T��[vu@U�Y�nB�@T��GE"
@T�y�� �@Vh�����@X*$�͸@W!	蹎-@V�t	��@T����-@@T��Ƭ�@U4T5�K@U]��i @I�Y���@H�c@K�@O�)��@P��k�@RJ�v��@Q�ʥ��;@K��O�}@CHY~��y@@4�����@A�7��\�@?�2rԍ@C#�(C@QCDX��q@U� JCW@V��I�^�@Wc5�&h@W�j��@WȿrƑ�@WlJ�@�@W �Sǻ@V��'D�@V֒��@V�q���@V�a��A@V�:&�,(@U�t#d�@TIl��@S �-��@Q������@P,|[!u�@N��3��8@L�A�K@J�mܥ�@H�t���@G�����@G��ӣ8@G�f��^�@I.���Nu@J������@L�K7y�@Ns�N��@Oߣ���s@P>A�!��@Om%�&  @M�#SD@K����@J�]��@KW��%P@K��LDrm@K����h@M�e��K@Miw&�2,@Jژ(��@G�t\��4@C�əVY@1b�uw��@=h�0�#@2��͊@*h~�KQ@ �<-�@%B[��D�@#?7�H��@,m��m�@5���Zy@@}� '@A��aO�@Ed{q��@J
p�o}�@K]����O@MZ���t@P�Wm1ї@RVEH��@S�%�H[@T���U@U�,���@U�e�a�@U�mb��@U�oh��D@U���/@T�,5(��@U\I�F��@Vs;?�
@Tܻ�k�@Uf7(o(@W��p�c�@W ����w@VP@S���@T�m��@T����@U:�n직@U]��i @I�Y���@H�Ra^F@OŌiVMi@Q,d���n@R}�X��7@Q�����+@J �͛��@A\,x�l@<о��@>E�q��m@>�΁/�@E�a[O��@Q��b3t/@U-+U�A@V�C=ݬD@W���ֿ�@W�r�l��@W���ֹ�@WT��9"�@W`/c��@V�Oɩ�@V�gf^�@V�O����@W�����@VŃ���@U��,'H@T2���@R��a�d@Q�P�4�@PqL��ʥ@N�;��=�@K��_�@J�8��@Hn�v�@Gb�:�&�@G��vQ�5@H��H�!@Il/Wa�@J���۝@M[�8��@@N�Z�G�%@PG�Y�U@P�f&��@PK�O�Z�@NH����@M^,���_@L��|��@L�
�C@L�ȟ}O@M��� @M�)p�@NC��3�@Lq���&�@I�m��@F�	�0��@CC�5�G@:҂A��3@<T���+�@!���_��@e���@�O��@'>��>�@0I1�x߈@8R��x|@?�s%�;@@+��o�@FXn�9�@M/���@Na�>y�i@Lxʔe�@PF"�@Q�����6@SZ'�r�@T��G1h@U	��Nk�@T���%r@T��(�@TDAY(�@U%R�H@T�J)
Y@U{#��i@V�QQ�@U�FCPd@U2�H��@X1V`ܱ@Wq�I2*@V��W7��@T�Q�x�@T��I�@UQ\!�xo@U]��i @I�Y���@H��"�!@O�#��9�@QTF2��@R�N琑�@Q��0��i@H;���L(@>���C@;�5Fc�@<�!�6�@>HP��S@GJ�.d�#@Rl��ſ�@UPs+A/�@V�\eY� @W����@W֊�ߘ�@W�T��T�@WG4�T��@V�Jj3@V~Q�X�@V#�� @V�0L�=u@W���@V~�0� @UG�N�@S���f!@R�¸�̷@Q�,/BN5@P���F8'@N��:�]@K����Q_@I�i�k��@H�пI�0@H ��{)h@H �W4�@IX,�P@JO7*�L@K�5���0@M�#�Y�]@OB=R��@P�U0V�@QPB�1@P�h6k@O��^�<�@N��$��@NV�^b�@N\jl���@N�#�T�@N[��
PU@N�Q�g@N��I�@M��AmQ�@Kz���1m@G˙����@D��NqR@B�����@A�򁱓@�g�c@ff �@��Id/_@&zpY�&�@0ob�G;]@8{hT{N+@=P��o�@?uН�t�@B��1�ރ@G�`~׹@Kn���b�@L�!��@O����@Q#[,@R�`H5��@T#��E[@T�;,�8]@S�ԩ�Jk@S�#����@SJ���a@U��״@T�`�=�@VL�#��@V.3��@V0H]~@U�Z���@W���<^�@W�J�'@V���uf�@U WCB<�@T��=�~$@UJ{�K�K@U]��i @I�Y���@H�4̂��@Pax_��@Qi���*�@R�Z�ԕ@Q���+@G4<�XM?@<P>챳@:Pnp���@;q'�U�@>�c��C@G�a8���@R��@Ug��q�@V��@�@W�U/���@W��D�X@W�]yi�@W<=�b��@V�(;=j�@V3��Oh@U���l�4@U��+�8@V܏���@VT�Lw�@T���h�@S�1��=c@R��ଶ�@Q��~�@P����@N�=<���@K�G��U@I�OD�@H���E�#@H�����@Ib�zY�@I���г�@J�h�w� @L�;�v=(@NQג�,@P,�-��@P�M�"G�@Q����^@QS�1���@Ped��}*@P����@P�=Y+@P,�+@P=L"��x@O��4��@O�Ʃ�?�@P	D�%@N�Ԓ#@L����j{@H�\�c��@E�(~! @C�S��'t@C���>��@ ��' �	@Y�<rr0@�rX��T@&W�{z1�@2��y�n@7��Q�=@<B��Q�@@���p�9@Aҝ�p(`@Eܲ��ѓ@I�����@Kᑣd�@Nw�Ym�@P��@*2�@R�QWw�@S�Oǃq�@T&�#���@S���M�3@Ss^��@Se����@T���A�@T�E��2-@U�lB;�@Vt����@V!/zǵ�@U�9����@W��A#�@W\?��@Vm���b�@U���L�@T���@UX鞕�@U]��i @I�Y���@H��DH��@P��,�@Q��g%@S�T��@Q�8(��@@F�0��	@;G��|}�@=
��.�@;ێ,��@@P�(JM�@I�@�j:�@S��
Y+@Uzz����@V�!���@W�	f�4�@W＄/��@W�~R �@W"o�=8�@V������@U�u!�|W@U�(@�@UFD0��@V<�)�[@U�8�?��@TӮ«O@S����-�@R�'���@RA�Y��@P�w�z��@N��~,�@K�=�)�@I�=AI�@I���}@Hଞ7�@Io��4�@J� �m@K���rS@M��*z�-@O���}�@P���9@Q>?�a��@Qݗ[�E@Q�|��?)@P�@� }3@P���4�@P��1s�@P����	@P���'p@P���D�@P�����@P�^]�B�@P�&�@M}t.�I�@Il�WR @FX:�+��@Dm�@ŀ@B��)��@&sf�@���c�@ *��:�w@'K�#��@4� �<M@:�x�^�5@@t�t�#@A��V �@B8�*Yы@E� 6цK@IW~��m@K����3@N��N�@Q��6��@R�Δ?r9@S���ꔣ@T1xN�N}@S�Y����@S�
`gy@S�:�c�@T3�����@Tk��r�@UO܁dyO@V�ۗ��@Vz��{�E@U�Q�k$@W�c��~�@W��Ү~@V�=��q@T�J=:�@U(2�-�@UW��!d2@U]��i @I�Y���@H����[@P �v�@Q�l�ǩ�@S(*viн@Q��݈�@G�HV6�@;+F @?���}@I�h�8�x@D�����@M7Kzb�@T=�BI�@UbQ�S�@V�9Zb�@W��"޲g@W�r���@W�`����@W&�Uhg@V����VH@V.1곝@U��?��@U��Æ}@U�6���@Uǥ�}s@T���O�@S�[v�t�@R�A�~�@R�Uۮ�@P�]�С�@N�'T�B�@K�˫9w`@J-}�k8�@IX����@H�k��4@I!���%@Jt�����@LN�G�e<@N��9�v�@O�O��(�@P�4�`�@Q�?�3�@R9���@Q���<�1@Q	SSG�@P�pW��@QW�Gh8`@Q�#[f&@QK:m��@Q{�w�FT@Qf�7��@QB��W�@P}�o�X@Nn:�[@J3Gb��@F�~����@A� �xz�@;�����@))	l�d`@,
�ה#@#��$#zI@%��r�@4�Q���@<��䆿�@Bp�\��@Evr�@EL��s/@Fw�-?@@H�ѻ�@Lc�l�@Oa���$@Q×��h@R�x�]�s@T��@T,V�<E@Sַ��@S�1=��@S�(��@T$2d\w�@TI�F��T@TL��4�C@U�NxJM�@V��g|�$@VTT����@X��@W����@V�_�tr�@T�ۣ�ZS@U;�\t!@UB�ô�@U]��i @I�Y���@H���Ͳ7@P����@Q���j�@S3qA�?�@Q�;�2h�@G�'�@;��R��@<��7u1{@Hw{� @P8Е�� @Q�y~QB@T�`��@UwE���@V�]���@W\_�}��@W�wY'b@W� >��8@W���x@V{��H��@U�e�;�]@Tr�rN�_@Uk��|@VxY/��@U�)R�@T�����@S���b�@R�T
L�@Q�	a
@P�sC�-�@N��Ҧ��@L-o���@J��\���@IjR�}�@H�/h�@I�ꌪ��@K.+�� 3@MQJ���@Of���@P<�*'@�@Q���A@Q�xy�TU@RJ�FiY@Q����%$@QU~<-?@QMzr?\@Q�T�%6[@Rð���@Q�_�8�y@R0�܆@R��� @RG�5��@Q:��_@O�$xs@K��Pp@D��[z,@?��Ӵ51@7n��7�@+y�M��@(�@�fh@,T����U@0���af�@6N}8@A��XW�0@D�1/��@G�z��|[@G�x��@G/K��@H�����G@L����u@O�_-dQ@Q�]E��@R�m�eFH@T
屲}@T: �w�@T4�>X��@S��M��@TJC�X�@TV�.'�q@T4��ߟ@T/�-���@U`	�1v@V}A�x�R@W�t��@X&�L�h�@X5���@V����@T�$zna@T����2�@UJ�u��a@U]��i @I�Y���@H���b@P,{�/@Q��/(=@S.=A�
�@Q�N�xӫ@G@0Yw��@< �u�@<	Uǒ��@A@����@P5�,e�@R�J�
-@S��'ď�@U���@V�EՀ�@WQd��t�@W�
aF.=@Wu�����@V���y;@Vf��B��@UAJY�@T�ۨd�@U�P¢@V�f�
�!@U��NF�@T�B��O@S���B�@R��Q@RS��5@P�	�*�>@N��I�@@L�:��@KM��?C�@I�<�\H@Iex}=.@JAGu\@K�C+r��@N{�s)2�@P0�����@P�=�Uw�@Q��R,S-@Rߜ�ʢ@Qۆi	��@R8����T@Q��+�@Q�	~@
�@R7��+T@R/ �Q(!@RA��M%@R��v��1@Sq��f-@R�Z��,�@Q���Y�R@O�t��@H�u±@C^��ݜ@CT{��@=#
��'�@2?���&n@(@.";,a@7a$J`+�@9��O�@9��-I$m@G��	-S@IquhČ|@H�v�[@I%(G�@G?��M�@I)ﾷ+�@L!�߅yP@O�����@Q���cca@R�$�hU9@T����@TB�}���@TL�3�+@TJ~X@Te=�?�@T>ZW$@T6�{��\@T3��� @Uj�i�� @V�1,,@W�1��Y�@XM\~s��@XEh�Dz�@V�Kwk�
@T��[��@U��ֳ�@U9�z�d@U]��i @I�Y���@H�{��Q@Py]��3@Qz_g
�'@S"Ȏ9k@Q�]�O�^@G�BZ���@=9V��_@;,o�4/@@)���@I���>�@Q����$%@S�(�Ŗ�@U���}�@V��|,�3@W87d�u@@W�bM_�@WH,?f��@V���m�m@VV�"�ng@Ug}�H$@U!	�I@V}<$I�@V~2%F@�@U�aG�R�@T�XO@��@S���/�@R�7��r�@R#�)՛S@P����!�@O����j�@M1
lu�@K�F�[a�@J�_�0o@I�%vfԉ@J&�θ%W@L9&n�D�@O��)i@P�7�}�=@Qy|l4�@RA>���@R�\�}d{@R��Q��@R�d_��@R�Ɇ5@R�a#�;@Re�%M�@R?��ks�@R�9�'Զ@Sau�
)�@S���$�o@Rʥ���@P ^(��_@M}s�E�@J<zC�@G7X#�S@CV�N�1�@>� ?��@8@�����@1N�l{F'@8B��TM@A^`�E�@B�ۑ�@K��q�u-@G���Rg�@I�d�m�@J���L%@G���
4@G�_'��m@K���Փ@O�[�,Ho@Q��앋@R����@T	<�O0@T����@Tr$\���@TRt=��@TG�Dј@T5�OY<�@TH�k�ؕ@TEE�MT�@U�{�l��@VǷd��:@W����i�@Xb����6@X=wN�@W%)d&�V@T��Ѝ�@T�nd��W@UJS%Qu@U]��i @I�Y���@H��3�M�@P�o4�@Qk_5�/@S��4i@R��A�@HU�5l	@?6��Db�@:��k@>q+���@G�v/;��@R�!-�+�@T4��@U�B*��@WϱtUC@W>�z~��@Wc�\��@W4G�9
0@Vݎ�)�@V)�H#��@U����\@U�F�;^c@V�䮦C�@VS�RvJ@Uo�0�@T�㚞ޚ@S�y�@R�6@R8�g���@Q,��<C�@O�轴��@Mv�z-�@L9���0@K ��	��@JA0GV@Jy)�a@L0d4�y@Oc�Wb�{@P��n$:�@Q�UQ��@Rhx���@R����@@R��A� @R�i�M�@R�x\U� @Rr�bc@R�um�@R�Ȝ*�@S>�oy��@S1)��r�@SWY=I�@R������@Qo��Q1@Nј���%@J�9��@G�o6��@C��)	��@?�~����@:fm���@8~��|�@=�
��է@B{�Q��@G;��(S@Mt��M+@Fr��P�@HD����0@J��`Q�k@H�Җ)'�@H�dÙΈ@K�;�:$�@P+���`5@Q`���@Rzk	ku9@T	�B�+�@T�L`N�@T���<��@Th�E�I�@TjO���@T<긳��@S���ch�@S�9sR�@Ua<�)z�@V�x��{f@W�5�?�@XPo�hx@W�3l�0@W�p�b@T����4�@T���F)a@UI��A�@U]��i @I�Y���@H��{<�@P��f�@Qq#���@R��	,�@Rjn��#�@I���r�h@AY���c@=`�?r�@=G"w?&�@C�	���@R�߶�L�@Tu	@zG@V�5-�@Wr�
��@WQF��3�@WI�n�#@W1�S��@V��IԸ@V���@V{�iZ�@V�{Z	 @Vd1���@V#�#|)�@UK��ή<@T�XB���@SҐ����@R�BQ��@R:K�H�{@Q3���ڱ@O�$��@M͉d٥�@L0�=��H@Kb�����@J\�޾m(@J����h�@L_�M�R'@O�P��d@Q1���]@R+K���#@R����9@R��� ĳ@R���t��@S#�;8E�@S�Wa@R��;Y�'@R�ώy�'@S9*q$xe@S��&B�@Rnh���S@U���@@S�'LW@R���%�E@P�qZb�k@L'��X@Gʝm+�d@D^$k��@@�����I@>vw_ó�@A�����p@B��(ה+@B�H��o�@E.�$5tx@G]%Ӧ�5@@�m���@D�u�S�@L/�����@I'����7@IX2�]��@K׻4�P�@P.l���@P��!�[@RoRf�@T� ��@T��X� K@T����@TW�W��@T1�3�|�@T8��˱@S�j�6�@S����`@UN��b@V�"�G�@W��wQ�@X&���@W����X@W�a�%�@T��9�U�@T�k2̈e@UD.grWK@U]��i @I�Y���@H�I�J�F@P	����@Q[����@R�	�d?@R�4��M(@J���{�@CIUI��@@�1��@=����K@A�OhR�y@N���@T����+@V�D��@WUN�@Wc'x*=@W^���P'@W(��mh�@Vm\�$:(@V/rɡ^@V�K���@VS�%���@U鲍�y@U�1�x�@Um?EƋ@T�)~U,@S��P@S�̓�u@RF�ͤj�@Q ���9�@O�I��B�@M�'*\ �@Lvu�J�@KKyȷ�@JD�\��@J�'K�@L��eBp�@P�5~�$@Q^OӬYR@R{�ȅ@R����@Ro�
��@S5��3�@S�=��Ӡ@StcΡ1�@S1�`=}@SN�|�*@SH�wq��@S�6���@S�}�M�@R�j����@S�0�:�@Sz����@RA��
�k@NG�|"[�@H�G��3�@E?��?@Bv*����@B�m����@E?���B�@B�X8[�~@79����@A���g�@C�J1�ˊ@=k�р�@CC^�	�@K�~�su@J۹L�h�@J��sh{�@LzA�×@Oto��@P��U�@R��Z@÷@T(8e�/@T��l�@Tt�_mX�@T7�:(<h@T0ᵆ��@T#����@S�hT�>A@T���$m@UF|L�*�@V��=ٷ�@W}���)@W׋���R@W�bgW&@V�����@T�?�3V@T�ՠHln@U>%�Ha�@U]��i @I�Y���@I #��J@P q �XI@QM�x�>w@R��jeA@R}�l��Y@Ly��Ji+@E�#�W��@Brz�"��@@�r��@A'�Ъ@L�"mP�@T�w�UO�@Ve�%@Wk����@WZ,�<X�@Wuܺ��@W�md�n5@V���9 @VL1�g)@V�QOyē@VA���4@Vy�	��@U��&V�@U���J�@T�یB�)@S��$b�@SCU.��@R%�+ I@Q	S�o@P�c�D@M��~;s@Lo��\�@KE��	L@JB��<8@J@�F�j�@L������@O��ޜ @Qm��<�@R���W	�@RUH�\w�@R\ � �i@S;a�<-[@S�gƢPa@S�fahw@S�GS:�W@S�|�^�@S�#,e`@@R��?�l@R\���m@S�"��|@S���<�	@R��$OO�@Q�--�-@N�?;��@J�2�l\@G>Y�t�@D�AVeE�@G��j���@F��_�q�@@�Uy���@6��TO�@@�;X�<@Bnd���@:�'U�@@�9�Z]�@J��P�qU@J�����{@J$����0@L��toB[@O���s@QA�s�o@R�=&�@T5����@Ty��d�@T���M@T=w�`@T1�\�W@S�fm�o@S�%r �@T�H;e@U@��1CZ@V,ΐ��J@WV|����@W�0g~�@W�k5|/�@VɁc,-b@T�Avj��@T�;����@US��&@U]��i @I�Y���@I
�S��@Oъ
��l@Q3���x@Rm�沢 @Rs��$@N0��}��@Hw���L`@D�N��6@A[2@AoZU�@G�d�^�=@T\D5�@U�T��n�@W,!y���@W��9=�@W���D�@W�A�@W$&��&@V���C@V��u��@V�R�F�L@V�9*�#@V0�@U�6*�@T���_�@S��&*��@S@�x@R���5(@Q03Ե1<@PL>|�i�@NqbH��@Lȭ��S�@K~e5��S@J0��w��@JtJy�sH@L��t�@P7��t�@Q�@�@R\$N��&@R�|(u@REa2(cq@SM`O�x'@TB��~T�@TM�9l�y@S����^�@S��ۻ��@S��Nw�@S����Ҵ@Sg���	@S�{�|�L@S�X�N�@SI�)�Z�@R`_Y[�@PY�<��~@L����C�@I��_�@G��S�@KҺߎ��@H�:�t4@7�_�yqy@7��8��@@bV,��@B�5@��@;DW����@>JN� �@H���J�@M��d�x@K&+r'��@Li��VK@O��՗@Q~2s@R�y���@T1,Po@Tu��i�@T�J�>0�@TDe�v@T��$2@S��8��@S��
�@S�-TV;H@U)��haX@U�|��`@WN�ٛ��@W���7/�@W��D��Z@V�&Dtß@T��4�K@T�K$��l@U>����@U]��i @I�Y���@Id����@O����g@Qs-@�@R3y�a�m@Rj��B��@O�Z�p@J�X�6`0@F���@BA�1�O@@���=c@E�if��k@S���n<i@Uɕ���8@V���H��@W�Y�!b@XB�O@W�ZW�pC@W�ů�`@WCJ����@V񩆚��@V����
}@V��Y��@V/D�O��@U����@T�}is@S������@S��؝�@R?̃@�7@QY���@PQA5QB@O�Am@M4��,�@K|xQXG@J�7��@J��̰ѷ@L�U\��@PsO��@Qy�L���@Q�����@Q�����@RN҉�?p@Sk�5��@T��Bnc0@T��]��@TY�LD��@T���� @T% o��@T=����@T`6���L@T1ܣ�#@S�Р�c@S)�M�\@R@$��@Q���lt@O;M�;�?@LgZ����@KR��/�'@M��C)y@F��5F�@8���|@:���_@Bv��@D�Q���@@@��.���@;�!�f@E�����_@Kk��b��@I��#�N�@L�g���l@PF̪�=@Q|�x���@R�e�	n]@T 9�@T�>��٢@T������@Td����'@T`f��@S�г�u'@S|��k@S��C�$@U��_X�@UH�+�ks@W1���kD@W�A>0�p@W��#�=,@VԀ�K��@T��	R��@T��}��S@UIwѡ�c@U]��i @I�Y���@I_�c�`@O���/@P�!�)A@Q�IB	d�@Re܀;$(@P��u#]w@L�2G@H���uq9@C,����@@�f��H@D'�pI�|@Rș]JD@U�w/X��@V�w��w@W��*MU�@W���r!�@W������@WX����@W��f�@V�pc�@V˽JJ�@V� �;@U� �X@UtL�c�`@T�0���@S�vP!y@S#O/�%�@Rt�RP�@Q���/�@Px<���@OsZJ;��@M7r�ɽ@K�㕜�x@J��{��[@K:Xv�@M+vƒ0@O^ײ���@Q?<�7�A@Q�t�Қ�@Q��^�@R��n�~Y@S�RGk�@T���f�[@U��zR�@T�-]?@Tw�Gw�@T�Du��@T�b��%!@T�����@TwW��O�@S�����@R�!���@RE^簯@Q5��@O��ΐ�;@M*)����@N/˯�F{@M(:;���@E�o�L�,@=Oc���@?��4ڽ�@C2훶I�@Fw,oē@Bá� �+@?Eɝ��@A��7��@G�_L8�@J]��m�@L��l��8@P&���V@Q�Sy��u@S˅q@T0�}�e@T�V�?@T�Ib��@Tgl��N�@T�J��@S�Vq��P@S\~����@Ss^o�J�@T��)��@T���`�@V�+��@W��2*�~@W���;Ĭ@V��JH��@TX�M�%@T�����@UD2�6�@U]��i @I�Y���@I"fÁn�@Og0K��@P��6Қ@Q��߆^�@RRs��7�@Q�"C��@N1��爍@J,A{�]�@C���P�@@f"�ː@C1Tq1�@Rfv��@U�~�m�;@V�9����@W���ڳ@W�ꉗq�@We�іX7@W���@V�PZ}�@V�6�a@V������@V6�=t"�@U��'�W�@Us�H�˛@T�js�@S���$��@S8�'�#�@R7U��_�@Qڄ]��p@P����8�@O�|�W@Mp�994L@K���1@J�8�:�@K��A(@L�e��L@O��|�@Q?��'m@Q��B�M�@Q�;���@R��t}9�@T�N�P�@Ug��H�@U���g4�@UP|��'@U[���@T��	@U�L�VP@U�c�-C@Tx��1"c@S�x�$=#@R�s߻@Q�9��@P�w���@O�~v�@Lp ���@NȾ�ƛ�@K�fR�@G�:�G@A��P ��@A x@F�V�B�@H���4@B�_��H@@ z?��@?W&��{�@Ee�<@GS�솂�@M���'��@N��8�n#@Q�1Q�ى@S}��%�@Tv'�T�|@UC��>@T��ܽ�'@Tz[A��@T����@S��9s^�@S��A�1'@S ��U>�@T����lx@T��%�b@V\D]-�@W�̅ }@W2��]�@Vd�=8I@Tc[�j6@T����D�@U=*4�@U]��i @I�Y���@IL��@O;�Wk�@P�<�f@Qp���[@R/��լq@Q_\B�@Oca��@K�!�G�@Dڔ9�&@@��b���@B�mޜ8@Q��g�d�@Uo�^|@V��`�@W�bM{�@W��.���@W�'���@Vۼ0ſ�@V� ��c@V�q�knS@V]���}L@U�)��@U�1K[%@UrBJa�e@T��bϼ@T����@SQ����	@RZ�
���@Q����um@P�@���@O�CE@M�v���@L#M�<�@KףU%�@K����@Lɢ���@O�R`@ṖO��@Q:�j{m@Q��Q�8@S	�Y4@T�*���@U�'�Z�@V	Cs��@U��OA�@U�*�4@@U�+��M�@U��� �y@UW^��0@T�����@SE�1j��@RrV��]�@Q�<�3@P�h��@LF�)�f�@Kl��I��@L%����q@L^z*��@JY`��S@Gf���ܽ@G�fU�h�@G�W���@G��
/�@@eY�K�@=Y�=H@>J�L0@C�p����@G��	��#@J/W@J�E@N�`T:��@Q�Y7�Z@S+�~���@TnrƙEe@T�c�d�@T�����@Tuz�S_@T9��(��@S�$^i)@S��񚻘@R�pZ9vU@TXR�zX@T���@V�8eC@V��Y傠@U�����@VB�H]g�@T^�+Q�q@T�0���@UG_I�s�@U]��i @I�Y���@I(��	�@O*�J6T@P]γK�D@Q0<:��@Q���t�s@Q���Ys@PQ��9�@Lޫu�Q@E��Z`g�@A����@B�`��Y$@Q#ú�@Ua/o�P�@V���?@W���B�;@W�Mx�X�@V��]�A@V��D���@Vr�_�w@VqѡS�@U�4T���@U��x@Uo�-'[�@Uq���@T�J��!h@T�m0@S73ۖ@@R���b0@Q�]f1^�@P�B�^��@P0�~5}�@N`\�q�@L������@K�Lp FS@L\�,��0@L�5=�k@@O ��J�@PzC4CM�@Q.��,�w@Q烓�[3@S}~m��w@UD�%x\�@VJhJ%6�@V_����@VY�p��@VL��tv�@V�G�f�@Vyad�C@U�&ӏu@U%�dZ��@S�R^Ĩ@R!gRYQ�@PV�S�@M��Fڕ@@L���H�@P2�ͼ8�@NRk�_��@MmJJۧ@Pc�K��@P�*Q��@M[B��@I�/Ppu@E3|�6�@=T����@@��E�p@A�,��@C�qmQw~@GE̫,��@HFygS�@N_����@Q��T�@SF�f��	@T��a8@T��Blk�@T߁s��@Tp1 �֠@T�SP@T �
�j@T��u4@RԸ�M�{@T^{u�.@T��Q�R@U�^����@V_���@T+��%�>@V0�$=@TT���<�@T��da�@UAz�w�@U]��i @I�Y���@I-��|ao@N�e�:�@P�i�U7@P�V�{�@Q�ڕX�%@Q���6,@P�K��z/@L���@E����)�@A�Z��1�@B���ط@Q��#4�@U_p��S@V����a�@W�>L�{@Wb����@W�R�@Vw���#Q@U���ڟm@U�lK��w@Up���E�@U��Z�@U����@Ui���4�@T��A�\�@S⠱Iӵ@SKx�-w@R�,P��v@Q�&8��T@Q(�-g��@POVۮY@OT�Oo@M��n�+@L�>�W�@Ltț���@LŐ�5�@N�_*�,�@P1΅��@P�"^���@R)�1O@S��*ЭW@Ur7� )@V��?+�I@V��cp'@V�ۄ�g@V�:`��@V/`�G@Vj�D�@U���5�@T��͑`@SǨ���@QzȰ�_@P`d,���@O����@O������@O \B�H@N�q<�1�@M��#@O4��о@P��xB�@ME���� @M����@Es���@E�$��8�@C�?��D@Av��6�@A1�\��@F�es���@I�S��@O�]O�@R!,){�@S����� @T4(���@T�J�<tI@T��fPf�@T}ia�!;@S��C�@Txqw�@S�CK<�\@R�Ⲓ�@S�[�kND@T�It�T@Uv�T��@V0�07� @S��)��@U�4�K�@T>c~��\@T�߉Y�@UD�sp�@U]��i @I�Y���@I1�g�G@N�~R~��@Oѓ3��@P�����@QHS^x=@QLF��>@PJ�>}j�@LK���R+@EB���(@@��ڬ�@C�m�Y(@Pψgy�@UR��dI@V{����@Wn��tC@WX|]��@W ��-�@V!���@U�+��@U���A@U�i���@T��}�+@U��u��@UE��3@T�%��@S��[<�@S_�f0��@R�A'�'@Q���M�@Q��=$�^@P��ĠX!@O���"�@Mؤ���W@M9Qw�-�@L����l@L�I��G�@N.�8���@O��{�]�@P�>��5]@Q���h�f@S�.���{@U��.�-�@V���f��@V���+@V>��`�@@VN��j9�@V��8_Z�@U��7��@T�:]�@T?}d�/@R6� ><3@P�G�`�@P(8�8,�@P�[=�@O��jG۝@N�m��w@M�����=@M��8�<�@P���@J��m��@M��j{@Mr-n�K�@H1�łN�@H�(%B�@D��v�$@@�����@A =�h��@E֙G���@L��wUBq@P���W@R��B�q@SS��+@TN��=ؑ@T�����P@T��a��@T}�0�:�@T����@Sܒ��}@Se@2 @R�,�@Sy�<74b@T�X(K`@Uv-�8˜@U�)3�D@T�J�1�@U����U�@T!kJ��@T�,+�1@UF�+�}�@U]��i @I�Y���@IG��g@NZE{2'@OW^�A�@P8��jr@P���2�@P�d�S`@O۞��[�@KQ���@D�o˖�@?�����@CGƴ,��@P�Y�M5�@T����b@V|D��m@WW� |M@WO	��@V��ȼX@V�w50@U�4$��@UVe���@T�_Jя�@U��b��@U��r��@Uf�w��@Tm��}0@T�O#�@S�P�O@R�}�G��@R-A9�@Q��me@P�,����@PS͊l� @N�tҮt�@Mq�q�p9@L���@L�36i�)@M��� @O� �p�k@PD�8�vt@Q�<�И(@S�_2�@U��ŉ�@V�^@�@V/���4�@V�M�h@V�$~��@Ud��S$�@UZ1�� @U��Q�=�@T���J��@S������@S����-�@R�=�ީ@P�]��VU@P[��m�@Pe��Or@P4����@M"d=�@L&�@J���.7@M���(@N��R���@G����J(@H�[��@@�g�2u�@@�AOۢ@Aދ���@E�̪p�@M$�Qް @M��ܥ��@R��fř@S��79
@TG�=#@T�-��@T`���@T=�d��y@S�b�+]@S�;*�0@S7#�� �@RR����@S|#�R��@T�Nt n@U�	��@U��6گ�@U�sp�r�@UxC�-�@T�畢@TޕT�K@UMC�3��@U]��i @I�Y���@I6'��@N���@N��
}@O�4��u@PMh�Aj+@P|��{�@OL:z��@J%g��7@C�;I��@>Y�:˩p@BD��b�O@M��{&g@TU��x�@V���r��@W�3��u@WT&���@@V������@UߝŚ4@U�����x@U3�7���@T���@Uo}���@U�����e@T�98��@TN�CRx�@S�
���K@S�2+�L@R�&����@ROD6@Q�+X��@Q4�hMZ�@P��9Ak@O�gX��@M���3�(@L�eFv|�@L;�i��@M(��9�@N���@O����@QvWb��t@S�~Mc�@UO����W@UvtȌ"�@Vȼ{�j�@W�l��@Vmr���@V����Ӱ@Us9CE܀@T�Ƴ%�@T4����@R�*����@S}`=���@Q��S݋l@P��=3��@Pz�����@QyR]@��@Q9�]�@N�xvIh@PX��l�@P�y��S@NHJ���@L�z�Pн@K?�N^�@H��#�7g@@oM����@?�#�Y��@B�����I@Gr�B��0@I`�J	%@N	/�"h@Qs���@R����Y�@TH�ׇu8@T��h��@T>�wsm/@T܆+x�@S�:��TK@S��ZJ��@R��.u�x@RuS��M�@S�O<M�@TC�K�[@T~'�/�@U�ьƄ@U�G�@!&@U+)t��@T�p�@Tާ�߿�@UH/9,O�@U]��i @I�Y���@I7N�EQ@M�ǒ�"I@N8�<7Pt@OQ	��w?@O��G�@PAފ7�@N�!)�q@H�:�dV�@CL7N>v@>�F��,w@B�9S@L@Mǰ���e@T]*�g8@V����$@W�\@��@W|�yZ�@V�+:���@U�8;�@U��=@l@UW�2�@T�"i n�@U��Q���@U�h|���@T�0�.�[@T%�`�ʖ@T"a$�@Sr���m@R�dZ>�O@Q��MA�[@Q�#���@Q~�Kg:u@P���%�&@OzRqͶ+@M�XP��@L�6p�-@Ll��S�@L�+{��@N#��;]@O?�T�@P�\����@S�ڵ�l@T]�^ L@U��[�-�@V�\���@U�=c�O�@U�ۭw	�@Tԯ!��;@TpPr�]@T&��k�@S��S��@S�֪8��@Rޯ�V�5@Q3yS[�e@O�M���@RP\�Ⱥ`@R܊�B1�@Q��vxE@Q��M�O@TNM��N@V]����@S���گ#@P"t=4t@K�99��@E]"��?�@C
\�]�S@@�)u���@Cj)҈��@FLי�c@H7��v�@NԻ�x.�@P�A�]/o@RΙ�FZY@TR�̼�@T�]���@Tb�i�7
@S��j3\�@S��r��8@S��+>��@R�GS)GJ@R#i.FQ$@S�&)Ǵ\@T)d|��@TuX��V@UB�ǋ�@V(��-�@T��?J*�@TFl{�e@T�1�q��@UM#\%�@U]��i @I�Y���@I=�|ZJ�@M���޽�@M���.��@N�&�"f�@N��p8�0@P"�D��6@Mi�c�@G�\d���@BT~%+�@=�qd,�@C�P�"P@N��[@TI"�/��@V���oq�@W����@W��� �)@W>B7�{@VB���5u@U����xA@U	�4��@U� ��@Vߪ蘹@U{��tP�@T���x��@T����u@S� u@SG£N)�@R�}�ߤ@Q�P�8�8@Q�~��ŭ@QD���(o@P!F;��@N|/Ȃ�-@L]��'�@Kj��*"�@KwW����@LC�vѡ}@L��"�@M�SC���@P7aw�_@RT�L� A@R������@T4E~��@T�ܱk�@T��	Z�@T��7���@T7_tO(�@T4t;@Tb�uB(@U��m��@S�C��-@Q��{�Xk@Q��w�]�@S�_t`��@S@@���@SW��`J@@R��xEǦ@S�jl&n�@T�sq�q@U�AŘ@T�c{=G�@R����Z�@M�X�G--@H�l<��@Dr�b?�@B���_�5@C?�'Rl@EM����@IA��D�@M����3k@P��
�d�@S*��TA@TZ�$�;@T�0�*��@T��H��@S��%��@S�L�j��@Sz�����@R��K�V�@R\䘩�[@S���j�@Tq�ۏ8@T$���@VO����p@V���0@T����F@T!ȸ��1@T��9�I�@UG�Qe@U]��i @I�Y���@I?	�yZ@MZܢ�X@M!��{@Mq0c�19@N'����@N���D�@L|��@%@G0��MO�@ASV����@=V�s�@C�y�dn�@P�I㉷Y@T�(����@V�EwN�t@W�<`A3�@W�`PbTC@W#�s&zi@VmΏc��@U}r��@T�J��"�@U}�I!@Vm�o��@UFYf��\@Tk�W�S@S��)�@Sͪsx�@Sd#wv�@R���ݯ@Rѫ��@Q���@P�Ub`�O@N�H�1@LyZlu�@J�i���@Iͮ��@IozOY�@J�f�
�D@K���VV�@ML�1hH0@O��S��@R[|�q�,@P/����U@R٣��@T����y@To$��}@U"{��JP@Tav�2�@T�IL�D@Tw\����@SF��|b@Tk#�"Yi@S��S?�@S�@#�5@P��+�I@P8��.@Q�!-��@RCC���D@S� ��Ӧ@T�0�ּ�@T�hd���@S�Nʃ�@Q��?q|�@M����_@H�k��@F&�ѭ@D���Wi�@C7�.��@E(���4@K�\x�W�@P���~�@Qk��'2~@Rl��c@TK�/��@T��0�]@Tct�3�Q@S�f�f@S������@S@f�G�@R�Y�T�@R�e�"@S�c����@S��@�7f@T��K@V��+r,@U�ؗ�@U-~��@T*:���q@T��(���@UV����@U]��i @I�Y���@I9���x@M"݉�W@Lj�>�@L��j�@M��gB@@N.Y(G�@K�o��@G
�O�Z�@@�(ⳓU@<�ۤF-@C�ۓ�I�@R��RLu@T�G�>ś@V��Zt3h@W�2�P#�@W�nS�L�@W��L�/@V;��@�@U��o� �@U$M��ߣ@UOas=�9@U�~�%@U6���ȡ@T|f8q�g@TB	D5+@S͹�	Ń@S?�N{�@RoD��p@Q{	�f'�@PY�����@N?XI
�U@K�b����@IY�o�v$@G6g�u�@F���&!@F�RUb�@G�b�RI@J{IR;�@K�Q�`9K@M���F��@P�?1�`@L�=:�44@RBFAؕ@THG���@Vf���)�@Uj�L�@T�Ъ��@U ��R�W@U�/��<@U ���$@T�+�@S��|�@@RŮ�5��@Q��1�JG@QT����@P�_�ߓ@Qx�.��@R�6�Gz:@SP&*ڌ�@S&�i��3@Q�`���@P�UnfK�@L�b'@IX�R��@G���eX@Et�n�@D=�^6]@E�T �Л@I�k�%a@QL�d0+@Q��\��@R���-�@S�qHE@TcX{�@TZ*�wi�@S��F/K@SX����@S.�A�+A@Rg�=��@R0vCe�<@S��^@S�r�@T ��M"�@V��4�V@U�i8�@U,�L�@T8���7�@T���Ȕ�@UE��}{@U]��i @I�Y���@I9��f@L�	�ʄ@KŐ��g@K�يIn�@L�C*�QD@M`Fc�4�@K�r��ue@G(��@?��/��@;��TV�@D��ā@P�ȷ��@U-ԍR�@V����@W�G9�J@W���p	@W�� e�@V#T+��l@Uc�F���@Uj>�zg@U��;K�@V���7@U1�:/@T{����@S���)Y@S�qV.1@R�/���|@Q��'bfW@PG�U�1@Md�.�@Im��/p@E�*h�T@Ba�d�ff@@�\#��@@~ٽ�/@A����4O@D>Enu\O@G�{R��@I!�8���@J�S�l�u@N�UC���@K�Mr��c@Rxz�
p�@V��2t>�@V�E��A�@V?h1T�w@U"_]�@U���y�@U�^f��]@U��	oI@TTp�l�|@S-���@R�h��G<@R��9Lh@Q��O3�@Pkz����@P��fS(a@R���-�@S9 �"�c@S�i.7@Q��XG��@Pb���_@M>�R�q@I��"�,�@HH�J��@E��Get�@D�"��@EĞ&�#@H�����9@OÞ��5@QL�/U�@Rd��K:M@S�����@T����W@TR��MM�@S¡�ʔ�@S<��v�@S���)@R[KV~J!@R�onB�@T�C��Z@TG7��ia@T�Z~+�@W��Z] @U�%�Ud@U;P���K@TG���@T��lt@UU�P}�@U]��i @I�Y���@I+�i۠v@L�3�;��@K9� ��@J�@���@K��O6G�@L��7@K>4�m�e@G�d�]@>�We��s@;o�U��@Eo/L��@P�ĥ�{@Ua��P�@V�3��+@W���[�@Ww�����@WEx1|Um@V|�Y'#%@UZ��OU@UR�.���@V��rC/@U�lۼ�@Ui�*�@TT���@4@S�>h���@S�m�;��@R�oVZ�@P&j\� @K�и{]@FGI v�@@�'���e@4��u @+W��)��@+�檢�?@2��#F`�@96y����@?�`Q@[@C�ђy^I@G��S(@H��~�@I-Fg���@K7�p��=@R�C��@V����@VǦ_��@V\N-@UP���@U|=��%@UZ�IP��@T��ao�;@T<��|%@S�m�l�@R���� @R���1��@R�eu�i@PU�y{0@Pn��N@Q?3��W@Q�~�ۘ�@Q���+��@Qº�9J@Q�Oٹ�@PL�f��@L��zG�@H�@�se@F��̺l@ES�K�@G^YQ�O@H�7g�V|@L���{@PFA4dnd@Q�,N1�4@S����@T�+Gm��@TW�H��@S���ַq@SI��B@S;�ORY@R�ʹzz�@R4y��L�@T#�y�'�@U,5��@V1��e�@W��HZ@U��߭<@U>%���@TPt���i@T�ݴ؃�@UE@��B4@U]��i @I�Y���@I�����@L��ʀ�Q@J��/3@I㼧�Ge@J�g�e��@K�G���t@K���8m@Gh�,�@=��]��@;��9@�s@Eq�ߔ+�@R�`��1s@UO K�]�@W8�w@W��|Do@Wb�7V�@W4��ҳ@V�>N��(@U�#r�H@U��H�#�@V CU�]@U�����@U��1�@T-��>@S��]_@Se@R��@R!�?{� @NtzJ6 @F���|�T@BI%5@4� W�![@+	ljڂ�@$ҳ���@!���Ƴ-@&ЈF�=$@2?bS�̧@8�Q�p@@��OC)�@D����l@F��uZK@Gh�ɭ@K����D@RFԸ��@UN۟t\�@V��j3�@V'�m�R�@U�B���@S�O/�(�@T�7lR/@T��5Wd@S�dx��M@S2�!��@R?�A�v�@R`�O�)J@Sܭ~�]@P�Yu�@O�����@P�9��P @QDr{#��@P��~Os�@Q�\�R@Qjm�5�@Q�oO��Q@Q�wi�@K S��Q@G�N�+@GZ��[Y�@Hg�ȏ��@H�bE�9@K���@ �@O[�#oʻ@Q�����<@S_�����@T�w��@TvW�=9�@S~_-l@S �~e�@S3�i"�@R����[@R��
6�@T(����@UZ����@V�jA�E�@W�,%�p@U������@UBջ�u�@Ti�6�@T���&xG@UD��߅"@U]��i @I�Y���@I�&�*W@L����8�@I�:�6 @H�}r��@I^��!�@K�Z��@@K�֗��@GOq��)P@=�/Q\�Y@;��C��@E��9݀@R�9�g�@Uj���$?@W��z�@W��6;[�@WQ+oE��@V��^��@V��H���@V3��?�@VS���(@U�#i��@U�Х ��@T��7��'@S�}�>p@Sz�x���@R�����@Q��s�M @MY���;�@E^T��3@<�>���@2㔗��@+�*$�3@(ހ5�(�@%�!�uT@#��zN�@/6�/+n�@6��,;H@>-Y�V�@C��7�@C�ҏ�P�@E`+�Ss�@JN��L�@O@��P�@R���S@U$�˰y�@T��3�x@T.�ߣ@T�@k@T\#&�?@SИ�'�-@Sz1�M��@R�/l E@Q �z��@QT7�,HM@RM�37� @S�%�@O�G�	�@Ps��<D@P�$Tl�@P%	�@Q �3�e@P�v�=�@P9(�I@N	4&<6�@L$���9;@G���Vt@H�ϧ�@H�L9��s@It�;$��@K�ƦA_�@P=�L篱@Q�LT>5O@R���DM@T��5R@T���@S>+�6�@R�Y)��7@R�O-@�w@RrSY�@R#�`�@T
�!��@U}�����@Vԇha�f@W0�g��M@V>�9��t@U_V* �N@T�q�2�@T�
����@U<��E5@U]��i @I�Y���@I	PS�F@LN�c�@INs�ØK@G�����k@H&��_8q@J.+i�@J�g���@GU�IQ�+@=�Bp8�@;��i�@E�l
@�h@SuZx�J@U��a�n�@W"�n��@Wa�4�A�@W0�R�@V��!�Q@V�}�+T�@Vv�Q�@Vg̦��Y@U� ��@U��5*��@T������@S�9��B�@SPk+��@R���	@Qbe�F@Kg�p�@C�8�}W@;^ /�w@3b�	�J&@0����`�@,T}Ќ @&$r���@$މ�07%@-E!�WJ@5M_R�6�@;�Km�)+@A�0�;�@B� �":�@F(��J�1@H�V[��c@OB���@RBe��د@S6�죵h@Sx�j��@SǮn~J8@S�����	@U6�2���@T+��<g@R`K,�@R=c�eGH@QX'��@NOqYE�@Qm���a�@P�_��X@Pp���X@P��U��@P�O�5�@Q��J(<&@Q��.qU�@P��/O�@N�Y�S�@J�RXĮ�@Hg���oM@G�cJUa@F��C�}@I@�!�qP@M��7|0�@M@t��@P@�h{�@Q�c��@R��gŘ@Tf�"e��@T���@SO����@Rw_�c�4@R�U��d�@Q�P5��@Q��B�@T=���@U�z-{�@V���n�@W2*
*��@V����L@U~cYC��@T�܂��k@TrF]pS6@U-�ټe�@U]��i @I�Y���@H�S���_@L*A���@H�g��@F�Eɪ(@F�8��H�@IeΔ�>�@J�*��i@G'���	@>���j�(@;ݕ���@Dٽ��|@S��n�@U���pI@W<U~�Qy@W_vquΫ@W�d�S@V�ƍ�d@V��yJA@V{쀓Y@VJ���ʃ@Uށ�4@U�)���C@T��Tp@S޵�s�@S@���@,@R�5n��@P�w�ciY@K��1[�@CG �&4@:��R5�@5�N+��@2%�/R�@,�l+��K@(#)���-@%�ԢS��@,���T(@1�&D;@9xI� ��@@��ZT�@@�i׮@EAr���@HTy�lvP@O�m-��@Q�=���@Qa򞾑@R� ��h@S�C����@S,����@T*��K@S�$jF3@S�����(@TA�i�@T���@S*�M�?0@Q�"�He|@Q���s�@R;����@R�oZ;/@P�$�o��@QQRde@O|�p��@M�R>��@L��F#/p@K��]ս�@Js���@J�`�1�@G�ݧ| �@G�5S:0@Kܚ2�wd@P	�)��@Q3� @Q�թ���@SZ8;�4@T��7A}@T��r�@Sq����@RKտM�C@RE�����@R�Ch@Q���B@T��y@Uڦ��gB@W
!�C@WF� +n@V��ы{ @U���"��@T���?�E@TumR��@U#�c�Q
@U]��i @I�Y���@H�kl���@K�|⛳w@G�&F��@Emo�t�@E����w@H���+�5@Jc�]@G	����@?�6�#0�@;4��^/@Cd�X@Rw��@U�;�G��@WU��5@WM�!�p�@W��5ѵ@V��c<��@V��E�}�@V����@Vf�S,�0@U���#<-@Um;��C@T�I�/@S����@S1E��C@R�*���@Q�\@LU�R[˴@C�zV'�@;�ś��@6�6�u[@3!��$X@/��->9�@+/��T�@(�Q�f@,�B��+�@2M����@6�.�v�@?�t��@AT+�i�@Cb���@I-�f39@N�J�[��@PK�0u0u@P��5�7�@Q5�K�9\@S[o��@S��-+0�@T ���@T5�/�hY@SA�޽@SHHD#@R��
Q)�@Q�
�tZS@P��/��@Q7QS�,@Qs�{�E�@R�|�މ@QZ=�}@QE�-���@O��Y�:�@O����@NC��/@K7C�e8g@Jh��$q�@K��>=l@Kn1#{�@L
��x¬@KTn��@M�}�%@P��]��@Qx�u�m@S:�N=@T��ؒT@TR�#�r�@S�m���p@R5E6�S�@Rm'�|�!@RK���#@QɦH�9@TQ��=>@U�:�'P@W'|B��@WK��Ѹ@V���C/@U�u���@T�D�-@Tm�w�V@U��ɹ@U]��i @I�Y���@H���+~@K^�#�X�@F�ݟ�[�@C�f���{@E�}�%�@G�l�
�A@Iy8r��!@F���@@�l�#�@:�'t�@B�{�L�@Q]$�>��@U�:̴�=@Wt?�>�;@WZka��M@W�5|h8@V��}���@V����@Vd/�>�@VTu���@Vg_,	@U5Y,�@T�Y���@S�'���@SHA��co@Rx"��@Q��]�X@L��m��@Cɥ?c�@:�Í�T�@7��]���@4��~@238Ș��@/*\�:i�@,�ey*�@0x�(;&@:=�h��,@6��(�@>�R�@@C]�oHQ@D
J7Ɩ7@J��t�@OJ���!#@Pq�U�@Q���25@QoQ�s��@R��ä��@Sk`�J�x@TR|�/�@S�e�@S��d��i@R�4��@Q�����@Q<��ji@Pm�9�5@PgO(�/�@P���`y,@Q�Pl���@Q��_u��@P��Gh�5@PZ�*���@MR)�a@L��|�`L@L��S��@KM�M��5@L)�?B�@L�H���P@LLQ|�W�@K����x@N�T�m@PIf��@Qc�����@SN�~9@TZ��U@E@Td%c�P@S�RM�e@R*R���>@Q���@Q���@c�@R8-Dg�@T3���F@U���1�f@WM煂��@Wod�-�@V�V��\E@U�Ƙ�{@T���1:@TvHɍ�@U�y(�@U]��i @I�Y���@H�Y�]�3@J����Y@E�?�?�@B�����@C�����@E�j6T�@G��%�@F[|e@@����9�@:E��Ǳ<@B���<l@RQA��H@U����˜@W���5@Ws�x�A@W�c� @V�ظ7V�@Vgok�N�@VI@�>�@V*׽�'@U���Ax@U�<��@T��'�@S��M�Wq@SW��:�@Rr�Ȍ��@QC=5i�@M�����T@EЈ�M��@;�L�{�@8m��s�h@6$#�(�M@3HƳ3�@1����c@0���+@5y#����@8�L��@7`��|@@t6@�@C`����k@F�e�&Q@L]��5={@P�t��kf@Qu��+�@Rr�h�@Q��9�@R�W:�+l@S�A��vt@S�����@S�|~��@S@Kcѱ@R����@Q��|��@Pю���Y@O�~�޸@O�i��	@P���@P�sN�q@Qmh��~�@RG� ��@QuǺ��@M��G@M��o�׈@M6��N��@K(᪠�@L>��m@MT���@N
�K���@N݊�ك@M�p.e�[@OǾ�j@QtN��@R��>��@Tb�Ē}@T=��@RՔ�:{@Q�c�lv@Q_4�33@Q;k���?@Q��.\��@T��E)��@U����T@W`�YNQ7@W����@V̲���@U�����@T�©+��@TwΜ��@U@��w�@U]��i @I�Y���@H�gL̢�@J��+ :X@D��f^o@AM��l��@A|� �k�@C���t"�@EՁ3Z��@D�08�B�@?�?Ε]m@9�K�?�(@ByS\�@P�z�]@Uw�tO��@W��5�8u@Wx�V�r�@V��!�J�@Vz
i��@V+�b�q�@V%@���@U�E�d�@U���!�S@U�6�0@ToV�3 �@S�𶿩�@SE���Yk@R_��@U@Q@���@M�G��@F����@<��Ü��@8��K�@6ͽ�f��@4.��I9�@2r�y3g @2΀�B��@7$c��ߝ@;�Z9ߓ@B��0	�<@A3W�P�@C�n9�m�@G$q��?@M�|g@R�v�Ӄ�@RI����@Rx&�2?�@R��'0Q@R��q@S9^'s�@S}�F9ѭ@S{���[@SF�xX�@Rk�J&A�@Q�i��`C@Pqu+@O*�m�f�@OM��7Y}@O�[�a�@Pv����@P��zg?@QFDo`�'@N��>���@O�8Z6�@O�a��I'@P_U�yo�@Oӳa��@J��9�@LZ��3R@N:7����@N2.�'v/@O�ae䭨@P���W�A@Q���K�@RβD���@S�D@�Vt@S��қ�@Ràb0�@Q�>3t�@Q�n!V]@Q�]��%@Q�-��4@T�H�D@V���|!@WgדMw@W��~g @Vƹ�nb�@U�!�n�)@T�!�߱.@Tn���@UG�
>;@U]��i @I�Y���@H�<,���@I��1��@Cv�6gw@?�Q+;�@?JW��	e@A��P�a�@DD���ʽ@C��\*?�@>���q�@9�� ��@A|�� A@Oh%�[�+@UJ�m�`=@W�����@WoJ��@V�yVg��@V����X�@V(�J���@V��q@U�;]��e@U���ƋD@T���yD@TX��E��@Sȱ����@Sc:@R5��@P�%�֠O@MF���#K@F�
o�@;��@�@7�ד��@5�_�@6۲��@4�C?W7!@2��[�k@5U[re�@<"9q��@B*͌8�@Bp���@EM��E��@K��
X@O���oQX@SUw762@S~�(X��@R�9�xg@R�t��{@R���I�@S`�O�X@Sw�QP�3@SY����@R�P��:g@R?G�\y+@Q�\��@P
�y@N���+_�@N���K�@N�j^�@O7?6�#@P�)���t@Q�S�h�@PE�mV@PW53@Q���P/@Q��'N��@P���+�@M�ۈ��}@K�����@N.�3�ϸ@M�)�:l�@P�����U@R<�]��l@RAŽ�iK@Ss7��M�@T9�x�@Sq�x�;!@R��}���@Q�(��W@Rw1�K�^@Re��-�@Q�T�tk@T�3�@V�.�4$�@W�g��F@W��4�s�@V�7�J�@U��J�@T���"F�@Td�JH�@T���V=�@U]��i @I�Y���@H�#VV�"@I��&:�@B;Io�N@;D���K@;�R��l@@�-,`q�@C%��\�@Be�gÜ@;�fEG�3@9c:3��5@@�p�̉e@P��O#@U)�؃@WgSƍ��@WV���]@V�fަ7@Vv,�x˘@U�L��@U�*����@Utߵ-@UwT����@T�?�d�@TE��%03@S�K�$k�@S��FN�@R0D�^��@Pm���H@K�>�LS@C��?�/@9�G\Ө@6e�3Be@4��[Ҥ@4�ф�@3���@3bV����@6�����@:���
[@>�>]��P@B�C-9�M@G��+@�E@L�yڑ;M@Q���5a@T��o]7@T�Y�G@Sm/K��@R���x@R�g6�ۋ@S26�@SY_Gp��@Sl�`&�a@SC�FN�@RBZ��@P��X5w@O�<e5X@N��*,@NL��S@M���� @N����o3@Pt�}d@Q'+u��@Q`}8��@O������@RB��[�s@RA�"�;�@PΪ���@ME+	ɵs@L�61~�u@N�Ր�=@N����߈@PJj���]@R��� �@R����@S����?@T}��W�@S�Ԅ(k�@Rs�-���@Q�)���@R4�G�=T@R+�YH�%@Q���
�h@Th�u�{M@V������@W���/�@W�#ȥ�@W��\�@U���@U@T�<�a@TzC�m @T�_v;��@U]��i @I�Y���@H��oH�@I���Z�@A�=�@8���D��@9� �{y�@@ ��K�@B!*�@@�kc�@9R<�fȘ@8e ��W�@>����&�@M�xJ�E@T��#�$@WX:���s@W3�l��5@V�Z��t@VA�J��s@U͸4��%@U��0�6�@UT�y�__@Ua7�A/1@T�FN���@TA�� y�@S��
S��@Sƿ Q@R�zݓ�@O0K8��@IB���67@A���	�@8Nѱ�Q@5���B�@3>d�U��@1�m@�ۇ@1Ƕ�K��@2E�;�!K@62�ɟ��@8Q��suu@<�lL��@DE��9^2@Io�Q��9@Ne4�{��@R�`���@T�n��@T�H2�9@S�:�p@R��FoS@R��e���@S1CC�� @Sm�bG %@Sm�jh�/@SUSn@Q� 9f��@Pݴ�F3@O@(��@M��q']@MH�O��@M+ď| @M�-�2�@O3��� @P��]��@Qu��m�@P"���g@Q�����@Rc�ϳ@Q(_��@N�_��@K��I�'@O��� Z�@P�zG�Q@P2�x- �@P��gٻ,@QG�r@R���X�K@T�)٘�@S��7C�@R�%{�@Q�s��@R׾��?@R'��JY@Q��X@T.��qi@V�2K��@W,!L�@W����&�@W%NF>@U�KZ,�B@T~~ƶUe@T}��&i�@T���u�@U]��i @I�Y���@H���8@H���:�@?����Z�@7Tq ��$@8G�S�X@>�6�(q�@@�b�=C@=��tˆS@7��0
C�@7�=E��-@=P��?@M���Ҵ@T�'\=@WM�ĥ�1@W7� ��[@V�1��P�@V�[�^�@U�k�-��@U���H1@U\��$@U^ه�K{@T�g�4�@T�I�@S�K�tH7@S!��@Q�)b���@NsĔ�)@H UP`��@@�����@8��B7k@6���X,@2�"�R�@0����@0�7��@2+��M5�@6� �7�@9�>q�ջ@AS_��;@F~�2�TS@JM�];_�@O]�t���@S����W@U⸐`�D@Tdi�/>�@Sކdn�@R�I��Ŕ@R�do���@SE�����@S������@SgE=�5@S��X�@R�މ�@P���5X�@N�iu�t�@M;�,�@Lcȴ�]�@L9Oz�u�@M=5d�+�@N�!"@-P@P^�J �@Q��}���@P���/@Pp9q��@Q��'�@R\�/h�@Q�0�$�w@O��kL@L�Z�q,�@P�>0=5@R!/�,@Q2�[]��@Qj�}�@P�-
c|�@S�1$�=@Rn�iG@Q�5�ds@Q���p[@Q��J�@Q����3/@Q��蠔�@T�m�jA@VC滓��@VE�����@W��L���@W1��T9@U�l�.��@Tg�io\@T}��5�@T��F&+�@U]��i @I�Y���@H�ЬBR@H'g�5@>�Q��<@5�4�2T@7:͛X�H@=;�b�@?0m0��]@:헂ԽE@5�CG��K@6��o}�@<��PZ�@O�بW�W@Ud!��@W_v2�ʻ@WK@���p@V�<�ۈ@U�>f-�@U~
�{s�@U;�� Q@U���6�@U��D�H�@T��'��@TAX��@S䗄c*�@S22��_�@Q�2��v@MA`i�@E��vnk@=c��i�@8L�����@5�֒��@2Ϯ��@0���筑@114�Ɔ+@1�o��w@4I���J@5W�Y�I@:�yv�`@C�|e��@I����@Q���#@V q'+@U����p{@T_,x�@S�e�>�@R���+@R�le�@S(�;���@S�!Ut@SjW^�{@R��_�@R�	��e@P��CC�@N�2"�@Lk��D}�@K�uM��@K�	>� �@L��g`��@M��m:B�@P3z�֔k@Q��'i�@R"H���@P� �v<@Ra0���D@R�ش#w@RĒ�Q|�@R7��׹@Pz��y��@N1Ƶ~V�@P�ަ��5@Qi�P@R��+�w@QF)�"E�@Pc����@P��θ�d@P�/��@Q����@Q6��f�@Q���R)@Q�.9��o@S�����@U�2t[��@V0�:� �@W���S��@Wn?��@Tv���d@TXE^�u�@T|����@T�|x�gZ@U]��i @I�Y���@Hv����@G��YS@=�F��3@4�칌��@6~�����@;̪ћEG@<��k�b|@8a?�,ډ@3�W�TG�@5~���q0@>C&�=Q@Q2J/�D@UNK��&@W{ȐõX@Wc�y$��@V�"�4U�@U�M�ݿ@T�����@U&s�$�@VC��o|�@U��%�k@U ��@T=?`#@S�hF�=�@R�n�JÝ@P�����@J�����/@DE���F�@=Oz>%�@7� ;��p@5=���@36���3A@11�t�0@0��Ѩ[@0�=�h]G@4��B��@6^�&] @A���@H5Y�K@L?��UD�@U ���0�@U�;W>�7@Ue��e8@TF�.y�?@S�:��@R�R��@R����@S�>�@S����� @S�7E@Rم/_��@Qņ*N+�@P�����@NAjׯ4@K�!��e@J��t}P@K<���"{@K��hH�@M��3�h@O�]H\��@Q�t#S�@Sc�v�@R�!K��@Q���-�@Q��n{]@R,j����@S<�-�@Q�=��}@Q'�V��5@Q�C�c��@Q�p�7v]@Sg�G�@Sa��7�W@P�&�@{@P1��ڤ@P��~��o@Q�*����@P�G`�ɚ@R'W�(��@Q�shr�M@TR��*hP@U�k�h@V �]�=:@W����+X@V�����@Uix����@TL���A@T|�-#Y@Tۿe7�@U]��i @I�Y���@H}����@G(�DⰭ@<Fy��\@47�?=��@5�%��@:�T�J4@;-� nܱ@6�.�Ϫ�@2�QJ��@4�tmO��@Cc����@R|+��|@U��5@W����@WE�ɳ@V���nd+@U�uݢS�@T��<V�7@U��a��t@V4M��D@UN�f�D�@T��J[d�@S��ױq@Rp�H���@QF��Q�@P-���0�@I~]��@C��g��@>�6�w�@8�J�a-@6ه¿Y�@5!H�C@3�d���@1��BP��@5ڜ� �8@7��.3>�@??t9�@GUd����@MHfszr�@P�t@�/@Tx,��@T������@T�����@TX_Й�@S}K�f��@R�5���L@S�f�o�@Sv��ͱ�@S������@SP�}�8�@R��G�1@Q��ާ�@PRIod��@M�t���@KE���O@J�։z��@J�.]N��@K+��n�@L� �A}@O=_��l@QN��ꋃ@R�h-G+�@S�����M@R怈�o@R��<�9@Q ��}2�@Q!ݮ�@QY���A�@Pe�yY'�@P��_@Q�<p���@S�ML(��@T�N��=g@Ru��i @Pg�I39�@R����o@Q��'+s@P����8E@Q��M�	�@Q���@T�H�g��@Vj����n@V���L�@Wt�Kf�@V���H@T� ��KR@TIi��@Tw�nl@T�e�@U]��i @I�Y���@H`(�t��@F���<@;��Z�y@3���K�@5t��@9�� Щ7@9��f��@5��i�9@1�D+��s@6j���*�@G�����@S��W@V ��z�@W��h��@W����-P@V��v��@U�+�] @U C�=o-@U���H�@U��TM2�@U���H�@T���Eh�@S��V��{@Q����1U@L�u}���@N�k�D��@H��Ҹ:G@D&�+�@@�Hh�`@<�O�H@9h��rZ�@8�� @7K�7K�@5�R&r��@<�,}BM@Db����|@Fo�S?@Il��m)`@M²�=�/@P��0�o�@S�҆��@S�5�dܯ@S��r�O@Sޫ3R�@S5�8��@R�ybUs�@Se}�v�@Sp����@S&�E!B@Sf�0�@R�0��?�@Q���X�@P/ݟ��B@N�ϫ70@K]�o�t�@J=��4�@J ���[1@J��o&"�@L`6����@OO���@P�Z &A@R�	Fz@S���ܖ@Sy-��7@S�|N\�G@Q���v�@Q�B�V�@R��� �O@Rz�/+"p@R��Yx�@T#c�S@T�=oR-�@U�.�q1�@Sd�V@P�j���@Q�ȼ"dm@Q��2��@P���j͐@R[R��9@Q�)���D@T�X�$��@V���'�\@V�n�f�(@W~�D7@V~� ^@T/h���@T@����@Ts�a�_�@TɌ��,n@U]��i @I�Y���@H`c��((@F�Bѣ@:��m���@3��:�Q�@4�2�U�@8�IHc@7�����@4���E@1|�YVc@8��=�XI@M~��@S��%�@VGzBKO@W�9���@W�ńx�@V��Ge@U�YdD�@VC����@V�J���d@U��F��@T�ghP@T�k5��C@R�9��}@O�P-�@L2f<��@LU���P=@I~f�c&@F
w��R;@B���@>�����@;־�o@=#ݶqF�@<��&���@=�T�zKu@@k�@DnO�Z�@G2����@J��\�/@M>|難@QG�n�k�@S��}Fw@S�$P�(@Sw�!��@S��3�l\@R�ر���@R�ߚ��@S,��@SYf��@S^�Eލg@SK��x�@R��%��"@Q�;���@P2�߯��@M}��-@J�(�|��@I����M@I�Ug�@Jq�M�<@L�9���@N�n�/�}@P�*ը�T@R-��d�@S�؊�b@S��T�>s@S��m�A@S	��{@S�j�w�@SWE���a@Sn~�DP�@T ��0�@Tɰ͞ra@T���Ӕ�@U�n���@St�ȧ'@Q< �O@Q�*b�!G@Q���V�@Q*d~�p'@Ro��<�@RC��گ@UQ����@V�H?�@V�s]��@Ws��?�@V^��u|o@U�қ�P@T<V��p�@Tn�E�"@T��釶�@U]��i @I�Y���@H\��pB@E��Qw"�@:�'@3ʱQ��@4��yF�@7�#�b�@6���3X`@4\��>ȅ@1���!s@;t���@N&aOGm@S�A;�1 @VW����@W�E,E�<@W�I��_�@V�c�A;�@V�:Q��-@W r��m@VlN_�@UgL���@T~�`@T*�~ �@S$w(>$Y@Pu����>@P[., R�@O�G�@I�8�h@H��h0�@E���>�@A��:��@@¶��@@6�ڐ�@A�h��I�@A�����p@B�h�U�H@D�d�1�@Hp�Ef�;@L7�T�µ@N��Y:��@Q�M:Q�=@S�+�@T0����@S>om@SJ2B��~@R�$�?��@Rk��c@R�1��@St�*0�)@Sr�R�@S3e��k�@RbX�#��@QS9��-@P�;��q@M`@���@JkE,R~3@I�t�1�e@Ip*�
�C@JI���D�@K����@No��SI@Py��4�@R�����@S�C�f�@T��W@T(�l��@S]S��}@R���b��@Tm}��C�@S�h�o@TX>Ȍ��@T�F�6i@UE��R�@U62y0w@S�81�'@Q|���͸@R�r��c@Q���8pa@R<eF�=�@R�iZH@R��|�)@U��V��@V�j���h@W��<�@W/$�@U��x��R@T���o@TX�ZNg@Ti�Y
��@T����X@U]��i @I�Y���@H^�rJt�@E0����o@9�GQl�a@4^��Э/@4�x���@6���I@4�DoƷ@4;�m0\�@2`,��7@>�'$�q@P��^�2�@Sѓm9��@Vcy�E�+@W��kg�	@W�C��3@WJ��Ę@V�q�I��@V�Y	,��@U܋B[h@U�]-l�@T~�[k�@S��`�]@S�9M�@Q�*���@Q~��"@P����S@M��R-�@J^���ޏ@H����t@G6	��}c@E n��@F	 �i=@BY��<��@A߉�T�7@Eb����D@FU��^�@J8q�Fs@NQ݌�@O�	�۾�@R�Mbp�@Ta�t�2=@T56u@SG��(��@S�R@RY���1�@R2h��|@R�u�!@SwY���@Sx�I�@S
mBR5@R%^P�:E@Q�O�@O�3'mI@L�y�;��@J@��\W@IU]��i@H�6~wH@I��#�@K�V�^�A@N$��gf�@P�����@Q�'سF�@Su�f��I@T=�y@T��1_��@T`rw��@Ss꣋�@S�"���{@Ty���Y�@T����@U��e�c@U@�t�U@Ud�JyRp@T!�?ǁ@R'��i@R��^�M@R�m�L@R�r���=@R��[r�@S#&&��k@U���?��@W �X�@WC����@V�y���@U�v�gi�@T�aZ�n�@TJ:����@Tt�t{2�@T���C�@U]��i @I�Y���@HX�4fn�@D�&"��$@9�u���@5�}.�\@5r�Ĥ1@6-5��"�@2�~|��s@4U����f@3>��
r	@@`�}�3@P�nߔ\@T%���G@V_���@W�A�ǀ@W�4�z:�@W^����<@V�4��a�@Vp� ��p@V!�ɝ��@Uf��C�(@T��6@�W@S���aX�@R�<t@RME`�#@Q�����T@P��d�
�@O�S�eM@N9s���@J�����d@HA�\�+@GL�6�C=@E�"=�=�@F� lڀ@Gy!g#@F����@Hm@���@Lka�\@PQ%���u@Q�ץ�@S�<����@T��cH@Tq�5�e�@T� ��@S�3�/�@QȱJE�Q@Q��.27�@Rx/!a��@S��%zm@Sas,{@S6����@Q� ��o@P�'Ŕ��@O_��"��@L�=���@J"�hI@Ir1h@H�����@Ij�-�7t@Kj$��`(@M�{\�A�@PwU8{x�@Q�#w=:�@SREv�@T���O@T��ӷD�@T�X[��6@T2�����@S�/ͣk�@T�nJ�6�@TȒk�O�@U��W�@UU�&ߣl@U\`��@T���fu�@RK�*��@S74�%�@R����ǿ@R��@�0[@R�J޲�7@S/dc��i@VDcX\[@WD*'4.P@W.��HS@VuLN�L@U�u4b�Q@Th�dg
�@T@vY5U:@Th�{X�N@T��P�h@U]��i @I�Y���@H^����@DgY�7�@:���jU@7}܌i�P@9�T��vA@6ᩡE'@1�}9*��@4���e3�@4,5��@@�*�l�@R2���@T�2�MtH@V�����u@W���WM�@Wۣ1��@Wf��a��@W���X@Vu'�9@V�
<OU@Umoi�@T��Orj@S��@�9@R߾�r�-@RK�ָ��@Qնe�C1@Qd�B@PFRQ,�m@O�/i��@L�3XeTY@Jk�c[@H��u��@G�sc!@G=`��3m@F���^��@G\j��@J8�@�˥@N�e!�e�@QY1mFB@SW�\W�@T+�@S�`Z�@S�t	X�@S��e���@R$����_@Q*��@Q;�{ �@R<�\�@R���q�@S=���Q@R���I@Q�`��/@@P�3�O>@@N��&�}�@L�����?@I��Q�X@HZA�tB�@Hc�[8@I
n�E@Kc���@Mo���%@P"�愮�@Q�g��@Sb�h�B@TJ|ɿ�Q@T�Ү�ˠ@U&L��@T޾Q3�<@T��JND@T;d����@S�mS#��@TuK'��f@T"]
L�@TD�cK�e@T����|@S2�ߡ�W@Ru�&���@R��t�a@R�pK%}y@R��v&h�@S$$��@Vj(S@WCMbMX�@W	��*@V���y^@UNi @T�c��j@TI��	@T^���@T��X�@U]��i @I�Y���@L�]��@D;�B�m�@;հcb��@:,���i@=��M���@7_�ڨi@2�i�M�m@5�`�a@4s: 4�@B�zl	A�@R�e���@T����Lk@V�h�X�@W���Q@W�Q���@Wm\���@V�9��@@V4k�[8@U�Ga2�@UDW��e}@Ta�o��P@S�jWG(@S�t�A@R�S�G
�@Q��'#�@Q!��wg@P�_��T�@P(E�(�M@M�ո�� @K�
!�y�@JYƞ�@@H��Ƭ��@Gw{q��@G�l,k�@HM/ોE@Lդu���@P#ȝ�$,@RB�@SU��R@S�w�b{@S{n1��@S���v�@Rx(� �=@Qmn:>N�@P��|_�@Q&�!b@R����@S(�)��@R�G�� @Rc,�w�E@QNF��9'@P9x��O@M�9�'�@K��!s�	@I��r��@H3ɟU�Y@G��$��@H�2'�{�@J�p�x@MMFB�PK@Po/�X-@Qj�=Qi�@R��6�@Tw�0��G@T��[�|�@UZLWA�!@US��5@U�A@T�̜�dP@S$�*c�@R��_���@SMh�BA@Tu:�L@TNЭ���@TWtKO {@R8nZp�@R�����@R�P��s�@R��-_��@S#�a��@V���|�@W0Z��HE@V�Гl�@U��$�Ͱ@U��td�@S��̩ժ@T<C#C�@TU�0|�@T�镞�k@U]��i @I�Y���@HyU�۰�@D8cH�.@<��B)	`@?*��23@EZ��A�@;�i�'@7���)=�@7UZ1y��@5^�����@G��r�@R��,��@U%��ơ�@V�W�?W@W�2����@Wճ�N�H@Wm����@VY`��@U���;u@U�A�+�d@UBC���f@T����y@S�	bD?�@SI
t�uK@R�4�`<@R��c
�@QW���6@P�ӓ��@PR)_<��@N�'�T^P@L���G�@J�kn�a@I&�G@@G���Q�@GM
�E:=@J&��w�@M�˪�[@P��h'@RC6����@S2Z�a�o@S"[���Q@S��&�@R�T��(@R)�N�p@Q��m@P>����@P�aGB�@Q���'@R�fC�tx@R�^?��#@R�dZ'@P��`��O@O�]��}x@M�Ӗ�;�@K��34��@I�eAL8�@H�����@G���K��@H���|a@J+mo�`@L�����@PD=j]�@Qj�2��@S�G�s@T`*?��@U6)<��9@U�[V"�@U�h7T�@U����a@U,;3"��@S�>�p"[@QH��F
�@P��+��D@S�\D_k@Tk�q��@S̍��"u@R-Z�,ڤ@R���@�@R�}C��@R�VzZH_@Sm��N \@V�e�L�@W9zW�M�@V�B��bJ@U�1�G�@T��jñ{@UW�@T"U�i@TEYex�@T�aJc�@U]��i @I�Y���@L��N�@D�c�@?X%s��@GP��!��@P�f[O+�@C��G�]@A} $7@:�L-�J�@8����@M����n/@Sm�X�7�@UyU�05�@Vu��H�@W�����@W��YfG�@W-�a�;�@V=$���@VB�ͮ8@U�Q>�v�@U)`�2I@T���=i@TD_��L!@SWׁ&.A@R�~���@R��9�@Q�da�H�@P�?P��@P}+�Y?@NƑw
�@L�;�T�@K-�'K@I��eeM@H��m�?@H
L��"�@J
hJ[�@N�d*-@P�}�<1�@R#�J_�@S?a�Ɋw@S�ë���@S}M(1@RQ 8S_�@Qz�w��M@P4w�·@N��\�� @P3�]��@QdWL$6�@RA6	��A@R|�̏@Q�k�4�@P�Ԭ��@O����x@N.S���@L/r�C�@J��pp9/@IC��,�@H!�  C�@H����Y�@J�1�@M"~=���@P����w@Q�Mބ:�@S+U�c�K@T�<�\?�@Ud�^60a@U�3�D�@U���ƫ@U�{�Mg@U�:㭐�@Ts����@R�vb�G@Q�C��u�@R4��Z�@R��j��-@T�椿@R���@S���T�@R�3Mp_@R�z-2@Ss�����@V�,��@W���?�@V�x��5@U�ΧD�n@T�
~>8@U/�,HB@T"�M@TA=sك�@T�mr�@U]��i @I�Y���@L��Ο� @D'
�L��@@A��e�@L�u��u@Qy����@Jn�Te�@N��%�c4@A���U�M@:��8t�=@O��mL�@S�)0X��@Up{�o��@Vi����1@W�Fh��@@W�/���@Wk�-�͑@V�kq#E@V����ݻ@V'/�� a@U9��'�@U��-��@Tft_�h@So+0���@R�5�e@R5�p{��@Qq�h+8@P�ۉ	}@P_�c�@O��M�5�@MEo��T]@Ksl�l�@J�O�k{�@I����@F+/�k@I2�ᯐ�@Op��m@P�?���@R�'��\@R��:'k�@R��= @R̵x���@Q�����@P��J�s�@O91���#@M�X�I �@O�����@Q4�\41@R#%�[�@Rn���%y@Q�W"а@P����P@O#���z�@M���l~@L�D�!�@KB��z)�@I�`�,��@Iv\��@Ih�%b\@K4˸�Ɯ@M���Bh]@P0���X�@Q���@S5��]�@T�����@U{��G0@Un�k @U���5K@U�V��ʕ@Uo�f�ރ@T�'�(J�@T!5��(@S�}1�@STf�>
@S��'��@S).e�@R�Ҟ���@R�g��sq@S�V�S@Rp���R�@S���9�@V��A�J@W��V!@V�_6r;�@U���cq@Tã�2@T�GV��@S���ik@T'w��*�@T�ǫ��@U]��i @I�Y���@I���vp@DĞ$�'�@@�H�>�@P1I �/@Q��
H!@OĖ�>@N�m��@H��h���@<lEY̠@P���A�@S�x>��"@U=U�� �@VTx�c�@W�P�w��@WܢE�}@W�!���@WySSL�m@V�C�|�@V�p$t@Uj��}�@U(UR8{@T:���)@R��|I@R��eP��@RpE�ԟ@Q{�M�.�@P��m��@P�.P}@O޷��I@M�Վ��@LQʾ��@K�cַS@I���]@IQ�k�7k@K��e�W@P/5I�@O����@P�N���@Rf�h	@R�=��K_@RHǱZ<�@QvF&JG@PF,��m�@N^�ԫq�@L�P�|�=@N����E@P�� �O�@R�AŶ�@Rk$ *��@Q�����@P�li�lY@O�*}��@N�q	
�@M3��K@KyT,�@J�v3�#@Jm�n�@J/�;�s@K�Ai/#s@N(��s�@Pxc~��@Q��-P��@SK|�'9�@T�v��8�@U�;@���@U� �Y`@U��^=@Uh�`3�@UOȟܝ�@T�$����@T��y��C@T�`f�9�@T��n'�@T��kvX@R��v��@R�!D�@R�[kC�@R�h�v@R��AYZ$@S��=�/@W �7�F@W|[���@V�>���@U��%���@Tٞ�9�@T)o0�@S憐�@T%9L��/@T���jV@U]��i @I�Y���@Mve�q@E�N� @B,՘�(�@Q��61�@Q�<�X��@P: �ļ�@N���,��@N@���@@j[�3�l@Qշ�Ɋ�@S��y'��@U/>D�C�@Vn�m��c@W�lJ?�@W����@W���ן�@WC�>7X@V�R.�@U�&�s�@T�[��3@T����O@R�us��]@Q�S��s�@RC�X���@R\ 'w�@Q���2�@QH�E�å@P1�D�@N�
��4c@NB�E�c@L���@K����@K������@L�S�&T�@Mo�U��9@O�D�{�@Q����$�@Q�t�s��@Rbw�$��@R9�!�-�@QƠ�w2�@P����@O�4�f�k@M�ǝ�+�@K_�)@M�48��w@P�L��@R�9�@Rg�d<%�@Q�j@@'@P��:o�4@O��@M��]�\{@M.v�� @KcEA@Ju�|�,@J/w�ӝ(@J���,2�@L
��O��@N-bԤ��@Pl4�=�@Q���ns�@SEE�臭@T�ַKU�@U�C˺�@U���2#�@U2�Q��@UF)���@U��|��@T�hʜ@U^�Q�.@T���43@UQ�p��@U5,2��!@R�͘�k@R�`�>�@R~~{>�@R�6ӿcx@R���3�@S�$�G��@W��	2�@W	i�
O@V�Q.�t@U{��&$z@T�Xֳ(O@T��~��@S� ���@T|�@T�4#�O@U]��i @I�Y���@M� �є�@D�5���@E�}G:��@R7 ˧��@Q��l(h%@R9ۛ@PQ���@N���:@J�$�i�/@R=�ڸD@T zJw�@U->��s@V|�(��@W������@W��@ik�@Wyk�o��@V�6�`@Vc~9e��@UM#@��@Tv�J�?T@S�I4��	@Q�l�{�y@Q=nR�m@Qú`�^1@R&.M��@Q���eA�@Q�H.�/@P����c@O���x+@Nd\O"d@MUMsF�]@L�gK'U�@L�{l�G9@M���Z�@OZ���/X@P�q�Kݥ@Q���
�@R)�����@R�T�^�@Q��4�ҹ@Qb�s��K@P�_�|X@N�w�L��@L}�ޙ�;@J���BV�@L�=�T-@P� ��@R)�}��@Ro���sj@Q�+dB�@Py�T�@O.����H@M�d4ݬ@L�y��@K�|b*�@JYZ��S�@JG��GN�@K���@K����E@N{"�>h�@Pr2��Y@R̪�-�@SF�2d�a@T|���@UqB!��@Uܻy+�@Uc���l@U��1@U^�	�a@T�Q��k@U,L����@UU�Ҡ.@U�%吕@Uo�ԛ�@SS����3@R{D����@R����@Rս�K`�@R������@S�""��@W�Wb�@W"�V��@V���հ@Up�])�@T�_����@T���J'�@S�Δ��>@T3GM��@T��qZ�@@U]��i @I�Y���@NC�.�Õ@E��\���@G�8�ƘY@RM�����@QӸ�=��@RV1�	@Q!zqi=@P0����@P�-h��@Rvua��@S��1���@U-#�H@V�>��@W��0'�@W��r��P@WT"GVm@Vy��_@V�7�GU@U[\|~4�@T��^I@SM�ָ�@QyMG@O]?`�]@Q�܁�c�@P�hG���@Qbrб6�@P�>��d�@ON`���@O�[�Ν�@M��1�rM@Mớ�A @MYPw�`@M�fd���@N��u@P�	o@P�sb0�@Q�1���@R���0�@Ri�l�@Q���t;@Q���ؘ@P=2�b@N�����@K�)s�o�@I��X���@LB�S�90@P`��@R7Sr�x�@Ro�F	�@Q|\Hz$ @PI| ��@N�r��@M\t�L�P@L]�j��@Kh���@JI��3��@J^�Ȳ��@Kbw6�h@LW���@N[͍�1�@PT�'?�E@R��K�@SK��E�@Tm��C�@U]��D�@U�`�z�@U���-?@Uqw)<�@U$���;@TףD�@U	�GH�@U����@U�\��@U�o�ʛ�@T]�G�d+@R���aԥ@SH����@R����C�@S2`p�7@S��N���@W-��`@W��#�@V��Bt�@U�`G��@T��T��@Ty�mr�@Sנw<�@T�R�3�@T�L�kK�@U]��i @I�Y���@Mz#����@EL�7���@J��+�@RJk��c@Q�	n�P@RU�ߛuL@Q�h�=w@P�<?��@Q�Cl��@Rߠ�%?a@Tt>�{o@U3�w6�@V䟅��@W�D��@W���
5@W"3h�Ky@Vk�b�8@Uеo�@Uf��(0@T};�]t�@Si�9@O�@Q��?e@O�L�C�U@M���͓@N��&U�@P��0Y7@QP�ӝ@N�0=� @O�nM��@NG�~�@M�2�@M�*\3Q@N�^#�&$@O��?)f3@P}׳�2@Q1տ1�@Q��~;7d@Q�;3�s@Q�%,�i@QR��ÅO@Pї����@O��yE�@L���t�@JL���S@I��_��@L�ϴ4�@PJ{6NU�@Ro�utP6@R�k3��@Q�lj'1�@P��$��@Nr6ā�;@Ml]ͽ@K�YK��@J�=�qn�@J��R@��@J��r`'h@J����y�@L�ω�@N�6o8@P9�1��@Q�*u�[1@SW;�S@T���*�)@Uz8���@U�l!��@U�O�+��@U\��=u�@U&�ѧ�@T��ޱR�@T��8�ho@Uz��>O@Uz}�@U�x��7@Un�o~e@R��:&+�@S�OV��@R-����J@R��Mi�@TIkҥ@WE{7��@W=�����@V۸�!\�@U�A&�8@Th���i�@SSAMWF2@S�t���4@S���P�^@T{l�y��@U]��i @I�Y���@O*���Y@E����nM@K�b��g@R=��lW@R�l�l)@RD&f�@Q�'�-A@Q���A
�@Rs>���%@S8��6+�@T4,m�E�@UJr}�9�@V��	�@C@W���)+@WLV��@VӅױ~�@V=���v�@Un "+h@T���j�@Td�钎@Sk����@R&�%�@P|E���@Nҡ5w�@QD|^���@QKh`B�e@N �2�@PD���@OH�2Ƥ�@N�2�ٳ�@NB��@N]l�9�@OS�Z2��@P%���R�@P�I\��@P^�g�o@QbY��@@Q��W@Qp.Gm�?@P�zK��@P��v9O@Na���D�@K_�Z*�@I�-���{@H�	Ed�@K�8�G@P��i��@R���/@S8`���@Q��GP�k@P+|ϳ�q@N:����@M�[��@K����@J��8'{@JE􉹸c@J�M��sl@K7R��Y%@L�v���@N@����h@P��޹@Q�P@!?y@S:k)RP�@Td$�/wt@UY3�aH@U�Y��%�@U�
k{�@Uh��@U4��Q@U/O��@T�3`��@U�爍m@U����@V?�e���@V7
�)��@S[쀃C@R�2s���@Qг���@Rh��>E�@T^e�9�@W?w� V@Ww㧕4v@V��?�@U{���@TU�MG�@T9�2l@S�l�CV�@S�:g9*@T����pj@U]��i @I�Y���@M0kqr�@F�t<�@M�и#��@R*�����@RT.��^�@R���=��@Q��4��"@R����@R����Q@S���5@Te`|R�@US�X @W,�(��@W�;aI.M@W7���@V�(�t�t@V�.?K�@U}Dt�FH@T� E�c%@T�`�U@S̯E�@R}���I(@P�2?�b@PQ����@M��ϥ�@M�>�{�[@O��֠@Pc����@O�#2�L}@O�Wp���@O+����@O:[�?#@O���M��@PE���c4@P�G�%��@P�����@O�6��?@Q��6���@Q�jo#y@P�j�:�@P�<�ې@M%87}��@Jx�DC��@H�u���@GI��G�@J&�0��W@O�:�k�C@R��B=�@R�y��'@Q�еG�@PO�?jl�@M���x@Lʇu��@L�0�7 @J�� ��m@J)A�0@J�z%O��@K���	��@L��Dv�[@N��}_P@P�M�*d@Q�ߘ
��@SE��X$@T�)��@UA�U}��@U���~3@U����ݟ@UQf7sY=@UP=�ӯ,@U__�#�@U��G��@U��W-�1@U���.�@Vu�`(�@V�u��@To�U��@R�4��?_@R�!O @RUE0t��@T�S���@V�F<�B@W��k�@W$O,߿@Uk"$�T{@TH;ZNe@Q�@S��X'B8@S�K�	2@T�լPEg@U]��i @I�Y���@Ne�eV�@F����k�@O��o
�@R=�c��@R�����[@R�g�1u@RR��If@R�����@S����@S�����m@T�y(�@U�;6S�@W^֨LA$@W��L��@WI��&�@V���)��@VZ�Z�@U��(X�@U5�]�@T���$n@T ^�3%@R����@Q�(�W�@Qj}�A4@P>*(	�K@N��C��@P[��I�@P1�ф5�@P3d%�F<@PB~U�@OҌ;O�@P�o�@P*����@P�b�"�@P�V��7@QJ�lR@Qi��E�@QU�3�@P��ƫ$@PDg�t�@O\�WS@L\��]x@I��"�E@G��:��@F���[�u@I����@O�s~`�@R��� N�@R�֒@Q�-c���@Pg-	?��@N0�C�K#@L������@Lx���À@KE 1ҟ@J#`���h@K�},e@L�~9��@L�1R�@NAc�;@P:���@Q�ma�Ђ@S+!����@T��nLM@UPy�\@U�$}{�@U����@UY�8�@UP	� #@UeJ�@U�����@U��
��@V"%��{@V��j���@V��\��@U�޳֛�@T�����?@R�)q�#@R�q.���@Uv�O�ǅ@V���Œ@W���-B�@W7w��\�@U�����@T\*E�<@Sd��f	@S��@S��*H@T��F���@U]��i @I�Y���@M�z~0��@G�J���@PnZ����@RO�F�@R��0k1Q@S.1�vu@R��@���@S���@S�=53��@TQ��N��@T�fF�@U�ߦb@Ws��@W������@W �����@V�|�8@V�E�#@VF��.�@U��$$@T����(�@T^}��Q@S�V u�@R�'��U@RAͥ5@Q���P@P`6��@PV\�r�@Pg���|@O�2q3p@Oztm��(@O�ꂌ�@PA�`�ג@Pohʃ�@P��T�@P�)F-K@@Q+]�g��@Qݔ.�@P̨���@PV[�à@P���
�@N��᪠�@KV���|@H�g���@G:�au�@FYX��@IQr��!@O,k��@Rx[�G�@R���f�@Q�k�?�@P��E�x+@N��ֶ��@M&�N4�@L~��� \@K3��k^�@J`%/��@@K+�P(u�@L��3���@MRx��	@N���*�@P5D_A��@QaHF�q@S�<p��@TzB�ǹ�@U3��81�@U\��%��@U]E��m8@U27�|}@U�hlw�@U\�DA)@U#���R�@U҇| �@VBk���k@V�U�{@V���9��@V��9�U@U�t���-@S��&7��@S�g�g@V��qI�@V��|��@W�M��@W)�J��@U�5����@TDdh���@S��&��0@S��y��@S�Z�wWH@T���z@U]��i @I�Y���@N~HV0w�@H&�8:��@P��8fz@RT���5@S?: ��@SJ��?�@R�$9
u@SJ��@S�a7�y�@Tf �!�@U����@U�p{(�@Ws2&Tl)@W�����p@W$�j��@V�p��#�@Vo��@V:d�t�@U���S@U����@U���b@T��-^@S8^Pk_@R�����7@Q�-��~�@Qմ��+@P�9��D�@P�l邾P@PM����@O����X@P(��H�W@P�LC�z@P�����@P�Y��@P�1�oٯ@Q�]��@P�7��|�@PzZa��!@P�q���@O���wM�@N���`@JR�S�]�@H+��K�@F˥I��@Eq0̟��@H��˭��@N^�ٻ��@RY�)�r�@S��專@Q�nå'+@P�|/g�@N���y�(@L�G���@L
�޻>�@K"|HkM�@J�&v��@KPaQk@MH��@MNXac@N�����@PvR�L�7@Q����@S�+�@Tl��A��@U/��+H@UqP����@Ud_X�]C@U����7@UYh��)@Uo}���e@UWoB}@U�(����@V( �B��@V��Cn8@Vr3!�
=@V�9^x�@U7	���s@Tmv�;[@T�b8sn�@W���"�@W��D�h2@W��w4-6@Wuwξ�@U��ha�b@T%*���@S�Ҿ�5@S��l3I@S���Y@T�mY���@U]��i @I�Y���@N���-`}@Hq� �g@P��Ju@Q��8 ͱ@St@�t�A@Sk���D@RЀL��@SR�MN�}@S���ϩ@T������@U�5�@V
����@We{�O @W��L[@W7m �@V��s�@VSG��D@U�i�j��@V	hp��@U�յH��@U��m�@T����@T����k@S4�,l{@RT��+=�@Q�S�8��@P�'LQ@P�u}r�@Py�â��@PQ�$�@�@P��g.�@P�7Pfd@P�-�;G[@P�d��i�@P�n�z�=@P�B���`@Pn��w�@O=�!���@O��V75@O����#@M���Z11@I�B��ct@G_n�α�@F1l$���@D�1
�]@H~{�@Mؖ���M@RB���$�@S�f�j@Q�?�[�@P�?ϻ:@N��nA]@L�0��u@L���֐�@K��Bb�?@J���@K�#8�^�@Lu��!H@Mr��E/@Ou|N�@P]`T���@Q��B�@S:��U�@T@��L0@Uqɿ�h@U�����@Uv���A@U%r���@U����@U�<'��@UiM��K@U�1(2�U@V.Kǭq�@V}аo+@VSO��#�@Vy�����@Tnʅ/x�@T����@U��Ј��@W7pPM@WĬ��^�@W����@W+
H7�@U��l�@T�vJ`d@S����+r@S��w�*@S�k��EH@T���p�@U]��i @I�Y���@N�D��@I��V�l@O�zd8@Q�Gz���@S�ϻ���@S��dL>@R����@S}����@T�~"�@T�zc��]@U(ǔS��@VL��+3@WTޅ�c@W�V���s@WM��MV#@V��S#�x@V8��/�@U�;�{��@U����$�@U��[ �@U�#��5�@Tqw����@S��>@Sxȱ�A�@R�c�D`@R�X
�}@QW���`4@Q���@P��in�U@P�����}@P�ab[	�@Q*%O�[@Qe6h-�@Q�Y�}�@Q#�����@P�$j4@PF�ʶm�@O�k�{��@On�x��x@Ok�읣#@M)���@H�A����@F���-u�@E�&��ϸ@D=�p@G-����@Mձ�@s@RT%�c�@S0�.�U @RỖ+�@P���:B�@N���x�@L�!b�%@L�=�:�@K�Nf{�#@J��:=@K�چ�@LD�N�@(@M}�s��@N�,Κz@P�1��q@Q���UR�@R��y"f@T�筵@U-��u��@U�=x�@U�
S�M@UO��!)@UN�,�@U��u���@Um��S��@U���Gl@V"��q�@V\4�V�@U���Ӭ@Vh�41{@U8u~��@T\0�w:�@VeMV@W1���@W�f@�N�@W���r@W￭Ɛ@U�L��W@Sࡳ��s@S���8H@S�jLYί@S�ឮ@8@T�.N�r�@U]��i @I�Y���@N�P�	T@H�=��h@N��jl@R{����@S�d�Y!@Sv���S@S"+�@S���XO�@T6$�`�	@Tԛ�2��@UKȠ4�@V 
o�*@WG8ԩ��@W�
xC@WH)8���@V��Ci@Ù�\@U����@Ur�w�C/@Ui$c/M@U<n{к�@T~;ў�p@S�{rR@SZ��5K�@R߫�Q\�@Rb ;� C@Q��9I�@Q.	���@Pߛ�@P��(�B�@Q�M]y3@Q%���@Q2�W�=m@QR�!q�@QS��U@P�ؠ,�@P���__@O>w@N=@N�u�=@NT��I�@K���WG�@G�h�0l@E�48��@E.��c�F@D��Όf@G��`��@M���)L5@R`�Nͯ@SR�F�h/@R���1@P��I��)@NŢ��$9@L�q�ǵP@Lɴ��9U@K�@���o@J��˥Eq@J�Z{�@K�H ���@M���G��@N垰�J@P���Q��@Q���6��@R��9��@T��&j@U-��g��@U�x_��@U��7(ܛ@UXql��#@U\�	hc@U�H:sq@U����+h@U��,T��@U�̵��5@U�=�~��@U��E�7�@U�(�O�@U�b�b��@U�S���@V.\��@WNՊ�!�@W�փ��@X8V�}�@W4�}�@U����'�@S�);�@S��m2@S�;t� �@S��wbe@T�,j���@U]��i @I�Y���@N��TV��@H�		o@M�ehzW@R�j�,�@S�5��+@Srov�+@S#gA��@S����Y@TT$7��@T���Z�@Ug��22k@V=��7�@WFk�5�P@W�?�ؠ%@WLzY���@Vs����@U�-p�5k@UM��Э�@U7��@UX��Դ@U'�4?�
@T�$��@S���@SJ�!�0@R�	���@Ry̌�n@Q�����@Qf�vAR�@Q��w��@P��&8�H@Q��4@QR�좊�@Q�F`+o@Q����@QDx�'�-@P��k��@O����@N����H@N?�7�HM@M��s@K�<�B�@F���'�K@D�0 �@D2c��p@CF�tju�@F�!Tc(@M;��㺘@Rx�y_�S@SpA�_�@R)cy��@P�����@N��HG
�@Lp�� �E@L��R�&Q@K�����@Ji�x��@J��]	@L>���z@@M�_�0P@N���?�@P���|��@Q��
q�j@R��#nP@T/���_@U3����@U�ͽ��@U�S���X@U��X���@U�D�.��@U�����5@U�8��:/@U�}�~�@V(��@Ub�ض�@U�l��;@U�F��XW@U�=��@T��}�[@UJ �#`@WM"���-@W�g��@X&lӥ%s@W"����@U�lQ4@S�]��@S��3Yu�@S���7�@S�=N�@T֑�{��@U]��i @I�Y���@O=C���@IG��c@L�R��e@R�rBU1U@T7|�m@Sp:�u��@S>�9V@S�҇�@T{
V��@T������@U�h+)�@VDx�6��@W/��˒�@W����@W]��ڐX@V~��Vı@V�i{ @Ux��)@�@Uq�2m�@U��hه�@T�پe�7@TP�'��@S�<9�4S@SM��4�-@S���@R���Q@R��@Q�s����@QQ4v�-@Q2xm�*�@QN7-�m�@QeX��d@Q���	o@Q�%C���@QKc�7�@P}e��3@Obt/��@Nc���}@M�[i�@M?|Z'�@J��d#P@E��Ț��@C����O9@C�xbfI@Bx�TTu@FZ��Ŭ@M:O"F;@R�/��,@S���4�@R5Ἁ�+@P�	b	
�@N�f!U\�@LO�Bz�#@L7ka�i@K���r�@J���d�%@Jі3'@LS�I�D@M�z�>��@N������@PI�,zK!@Q�O�+��@R�Kԃ��@T0Fƺi@U;�E@U���i�@U�y��N�@U�9�D @U���9@U� "�U�@U����HO@UH"f0��@U�H̏,P@Uo2=�@T̺C�c@T�`�v�@S��L�s@Sw��R�7@R� ��@V���xx@W�hJ��@XOZ)&9@W$��MHn@U�I&�+`@S�i��@ST��;�@S�՜�2I@S��Sڱ@T�$�~-@U]��i @I�Y���@O�]B��@H�P�2h�@I���ݕ@Q�U��0^@Rl�ŚG�@S����@Sh�v-	@T#�}�@T�{y��s@U�ml��@U�LHT^g@V+0R��/@W&�f�x}@W�@�*�y@WN�+-U�@V��֪}�@U�@Xｹ@U��j��!@U����@Uy���h�@T�e󡏋@TJ\H@S���W�@Sih:��@S+���'@Rм_��@R1��j<@Q�^����@Q�29�#@Qd}�L�	@Q��/���@Q���n7@Q���@Q�����|@Q*b���@P(m�W�@N�Nu��`@M���0��@Mi�	�@Lb,a͏@I�Ci�w�@E~<N�@C�Y(�U�@C��Ӯx@Aڅ�N��@Eҹѱ�@L��*���@R���tE@S�k�UC@R*����@Q	bn��W@O	<��p!@L���]@K�u��@K�����L@J,a33/$@J�x�i�@LJ�Q@M@����]@N��)��@P��?@Q}}
�X@R�i���S@T��+e-@T�N����@U~���PH@U�,(0�@U���~-�@U���*8@U��?��@U�]
^�@T�-�`�e@U�0]8�@UX�	��@T� ��a@S���$m&@R�J	V5I@Rtt��a@Q>�<�a@UE���-@W�ӁR��@Xe�:�@V�kt�1�@U����@Tq��h@S,����P@S{�����@S�l�@T�b'�@U]��i @I�Y���@O[�GQO@HιO�x @G`U'�@QNy|�<@P0��6L�@R�
hE��@S�v<�5@TLU��7@T��"��@U'�Cy&@U�����,@V���1@W� +�P@W�C��P@WU�j�>�@V����T�@Uι��@U��M^'@Uf����@UJ�f*�@U-��=/�@T`�f��@S�mCr�@Sy���@S5X��c�@R��l)Q@R[#.L��@R��lP@Q������@Q��5�SS@Q�<��0@Q�|���@Qۉ��!@Q��V�B|@P�=��I@P%ӓF��@N���Ym@M5����?@L�6S0�@L����(@H�x:�i@D#�W��@C�o���@B��K,`@AF�
��@EW�7U@L�C�D�@Rw�l�@S��eR�$@RL�~�!@P���
�@O����@LE{��J @K�4�Ɲ�@KC.�< @H�qO	@I�`����@KBC���Q@L��� ##@M�:���C@O�菵G4@Q5ty^`@Rx󵍡�@S��]�@T��,S��@UlՀ�@U�h��B�@U�S@U�O��T�@U�R:Le@U����.4@T�Mk�@UK����@T��|��@S�ÜJ��@S;+��@R���XP�@Q��R��@QB<U�@S��~?1@W��:��@W��RQͼ@V���2��@U���k8w@Tv���@S*��j��@Sxu0�1@S�,�j�@T�ݙ'л@U]��i @I�Y���@Oow 2{	@I��ĩ�@I&l�<~d@R����V@Q^;��@T#�αM@S�(�
'@T{�E���@T�(l�@U+�i�	@U��[|��@V^�~@W�cc�@W�Dt��k@Wl�j�@V�%X�!�@V����Q@U�:�2d�@U�k�Jռ@U����q@U8S����@Th�&X@S�3|�dG@SJ#Ϳcz@S>O�t_�@R�[+�q�@R�z7�z�@R+pa���@QэS?�G@Q�<��[�@R[A1�@R�A���@R� ��@Q�Us6��@PΎ}�@O易��@N=���@L�G��e@L{�PKB�@K�sHȫ@G�**�(@C=��@P�@BzU��4�@B���@AJ�%�O@E6�T�G�@L�n��o@Rl6i�@S�L�_0W@RY�����@Q#2RȘ�@O�3�@L2x���x@K�$Թ@J����@F�[V�N8@I��>Д@J�� ��@L�|*�@M�n��@O3\-���@Q�� p@RF�vv��@S�91���@T���\H�@US`�ӕ@U�L3��G@U��ڒ��@U���O�@U�wjB�y@U��?�@T�V�e@T�:�&W@S�v<�@S�l�.q�@R�i��A@Rx:����@Q�&��o(@Q��ޅ@S�LEb1@W��tǒ�@W��.4�8@V��6ي@U~Uɼjj@S�D�B@S��(E@S���J��@S�GsW�@T�쪟�@U]��i @I�Y���@O��s� @K��e@E�)pU@R(fa�e@S���o��@Q�T��T�@S��ѻ��@T��}��_@U wU�@U,G5*�5@U���
28@V$��O]8@Wb�g�%@W�=_�@Wt����@V�h�g��@V?�7�@V!}"��@U�QF���@U恄�/@U07c�@Tk��X@S���@SU [��\@S���#�6@S<�K���@R�"̅�@R����@Q��Da��@R�p\��@R�A��@R7Y���@Q�I��W�@Q�ay�@P�,CW�@O��PS@M��r�Xc@L�kDTJ�@L\��ż@K�F��`@G<?�3@B�1$�s�@A�{"���@B7~�2g�@AlH)e@E�J,k�@LÊNw@R����z�@S�ø9n�@R�]���M@QfϦk�@P�P��@L%.1��<@JcX�W4@F���H@G�|��Bo@I��W���@Jڏ���@L@��@Mx���@N��b�Bc@P���L�@R1��S_�@SV��r7�@T���gh@U^s�[|�@U�W,l�a@U��\[{�@U�Q�4�O@U�Ի���@U�9����@T�-��[@SC�����@Sk�6��@SgC�f@S	����a@RT4z�{@QYb�i9�@R
��R�+@S��ϔ�@W��f��@Wm̑꺟@V��h1@U,�ɟA�@S�����P@R�SW��@Sp~[��@S�81���@T���O\�@U]��i @I�Y���@Oi��� @KI��ϒm@Bm��'1@Q+�n��M@S��>!]�@LJ<ق[@S��aE�@T�SWL@U6���@U:�����@U����b�@V;.-��@W�TRH�@W�I�m�@W|�A�@V����@VvI���@U��P��@U�̊�@UȄ�%@U����@Tb;fO��@S�la4�@S�ݧ���@S��o�@SS�[@R�?��@Rz,�h4�@R#�:��5@Rv���@R'����@RI��v�?@Q�D��e@QB���@P��(!�@Op��l�@M�O�"��@Ln_��3@LHI��RU@K��U�9�@G)r�#�@B����@A��|��@B=\�[G@Ak)��C@FY�~1�@M�ߵz�A@R��
��@Ta��,�i@R���(�@Q�^
w�v@PQ��w3h@M A���@H�[N�Ga@G�n�8@I\[P�@I��D�@J�|g���@K��J�@MgiuQE@N��t��@P�u�D˅@Q��QmVa@S��h0�@TXZT��@UV���@U��ċ@U�0���@U�0/�@U�g����@U���Ɨ@UPd�(d�@S<2YL��@S��gІT@SE�}QU@S���@R6R]�@QZU�B@Q�0�	&1@T>kF<�@W����^@W%\�`��@V��ye@T��z�&�@S��T��@R鿮�#E@Sp}8w@S�&1���@TۑGw �@U]��i @I�Y���@O��b��=@J����S7@B'E���@IYW�z*�@R�� ��X@H�"B�P@S�B����@T���O��@U"����@UU�7!�o@U��	� �@VN�M
@W *��=�@W�[c[�@Wso�p��@Vܻ��@Vh�.nC@V,'�ˣt@Vs�[u|@U��7�d@U��w�,@T��+�@S���O?�@T�C@S��#�-@SZ,%-��@S�D��@R�	�28�@R��
�@Q޺�/(y@Q��,��@R"�@���@Q�v��cn@Q$tcj�@P|�7��m@N�t��K@M�GD�@L,��(�@L�'�ٸ@J䀫�t@F�jBoy@B{��@A��C�8�@C(����@BAPO��@F�?lq�@Nc�V�@S!��@T���z�Y@SZ:wՓ�@RkN�8@P��t�S`@N6CMf�@KyĮT<@K[���.m@Jsm%��@J���!m@KaA���@K��ۣ��@M|(u0@N�_�@P�2��Q�@Q�̸[�t@R�+��1@T6���J@U%���\c@U��N�@U��B/	M@U�@W�?�@U�'x+�@U��s�@U���l@S�K�I@S-��D@S�I�V;@R����@RǕ{a�@Qh���p@QQu�DU�@TDs���5@W�6��@V�L53��@U��j�<@TӾ�� �@S���Q@R�6<�C�@Sws7�p�@S깠���@Tͺ�݀�@U]��i @I�Y���@O&FA=�@I�HҎr�@Bb˦�7@C�N+u�D@R2I'��@I���}@T9|A��@T�C���@U2��<@Uuq~72�@U��@<R�@VC��E8�@V����$@W�Z�G0@W��M�,@V�9C��c@VYf�,@VȌ��(@VR�ڞ�@Uڅ��n�@UK��#h�@T��$o��@Ts���h@T�t1��@S�>mY�4@S4֌�˵@R�'0�C�@R�ֹ�R5@R2�����@Rx�a&�@Rnާ@R�$�,�@Q�1�ŷw@P��M��@PV���@M�����@LLB���@K��9p�@Kt7��X@JL��^��@F`KO/<,@B�I��Q�@B+�՝ջ@CSD���@B~>�6�@G���&#@NR�U��@SSa�儝@T��x�1�@S���i��@R62m!� @P���>l@N�Nj0�@Lke��M�@K@Hױ�@J�O�A@J)�}�@K6����@L_���@MF䬤��@N�C��x�@Pe^�_I@Q��a�=�@R��,�Ƈ@Sᜰ��\@T�(	²h@U]�jj�@U��R��@U�*]�̠@U�Hvi@U���-�@Uw@�'�@S�?�A@R, �s�@R� W�@Q��,7�@R0�{���@Q��N���@QJ�\��k@T�-�@W����D@V����@U�/���@T��3��P@S~u"[^@R�5<rN@St��gw�@S��|e�@T��e_}�@U]��i @I�Y���@N�Z�8�@I���b @B��i �{@B��u�B�@MtJ%@J�
�j�@SJ����@T�s֏�e@U?�Gs�U@U�$講@U�c�C�@V>��K¹@V��o�@W}a�3�@W�Q�wU�@Wdg�R�@Vp��h@V%���ל@V����x@U�A��i@UhZ��q�@T���[�S@T��kk@S��S�@S��j��@S.�ǣe@R�
�P��@Rí���@R}d�+�H@Rg�;?��@Q����Г@Q޻�uu@QAQ>��@Pt��ٰ�@OSULnD�@L���C@L~<��{@J���.:�@J��?һ=@I���q @E�\��@Bx�%j�@B�o��@B��-Z>U@BQ�-�|@Gu?�}@N����p�@SXJ[,�@T�g#[�A@S��$���@Rkr�=�@Q#�>�[@O���X�@L�L�QJ�@K���ʣ@K.(�}3@J��9'Ф@K��Z]��@LX�!w�@MA�a�o�@N��\j�@@PhBA�3�@Q��"B0@R�E�[F�@S�W��E�@T��� �@U=�ۂą@U��i�S@U�f���@Ut���X\@UtZH�;+@UW��sE@Tɠ��� @S+���a�@R���Zq�@RV'��C@Q�E�+@RB�=n�O@Q/
��m�@S�;=�F�@W���+Z6@VA<��I@U�Y�LQ@TNS�EY@ST����:@R۔���@Sh��sE�@S����A1@T�Ź��,@U]��i @I�Y���@NP42�-@JRҠ*�g@B�]��(�@A�|�@Fmp<-��@Hi�.��S@RJ��p�@T�:p۴e@UHT<"�@U�4̻�,@U�&(�'@V&r��HK@V�ctUx�@Wg+4�Ҁ@W�y&h��@W,س�H}@V��J7�@V�Y��4�@V�Q�QD@V�?%D@Uu�#��@T�O%��@T e����@S���G@S������@S����k@SBj��a@R�Lh� @R�/H1�@R+{v9w@Q��~�:<@Q��H��@QO��x@PT��R�@N�x�u�@M(���m@K]�{*�@Je0��@I���Ę@H�[���@D�����I@Ao�
�@B) ���K@BƳM�c@B=5m@F�'�7w�@NCVV6�@S*ؚC @T��m/w)@S�����w@R]�X{�@Q4�X� 	@O��^��@@M$��y�G@Lc@��@K��� ��@KzM7�w�@L<�}J�@L�'��_�@M�e�bsk@OJ+a�@Pb�p ��@Q�~��1@R��۟K�@S� ̔4v@T�_�N�L@U8#6���@U�p���=@U�g��@U��W��c@UoY/ڞ�@UM�����@Uo�,�X@Tn��}@SGu:�@R4�
O{�@R$��F��@Q�)��I@QK*p[�@Sb�x�@Wy�þ5p@V 
n�?@Ul�E'��@S��i5`@S���Q�@R����2@S���5`�@S��|N�@T��@��(@U]��i @I�Y���@N�h��@J����̠@C̂B]�@BA�<t�@D_k�@Hg2al�t@P�:BD�@T�����@U^;g���@U��b_@U�tc '@V��,N@V�Y�C@WN@{+�h@W��u�@WE�Z+��@V�(|�@V��W ��@V{��hX@V2�z�n�@Ud�`��3@T�u$@T@St0�9@T๿�@S�|a�HO@S��8nAU@Sy�Y�UT@R�Vd�?@R�u����@Rg`�hU�@Q�ul�3@Q�7ҏX�@P�]���@P<	d�K@No����@LN/���@Kg�A�@J)(i�@H�$���@G��Ab��@C�`d�HO@A2��H�@A��8d�@C���@B$|U�~�@F�5+p��@M�D��a@SXի�@U�$>:@S��~&�@RW"�r�@Q- �j`�@O��c�F�@M�Ce�]@L�92���@Lh�>��@L��ۡ�Q@L���~�@M?wLgO�@N$��@Oj�ڟN�@P�-����@Q���E�-@R�cO��3@S�f�b��@T��&m�@U#`]��%@Un�ʘk�@Uzǖ��@U�����[@U���X@Ul,�C`@U%>�Q�@T�dӪ�@S�Īmm@R�a�f@Q�KxS�@Q[�?�U@P��D19@Rˋ�t��@WO��A�@U���PQ@U$)���@SW-oL}i@R��J_P�@R����1�@S����{T@S�r�g�@T��;��@U]��i @I�Y���@Mۃ��x@J �x�\�@CE��F� @B4��Ȼg@DY�w��@F�J���;@MN�!���@T��n!ų@Uh��j�@U��EU@U��syk@V!���s@V�	Ig�@Wk�Sw�@W��w�˜@Wp�����@V����M@W)m���E@V����@VB�j+�@UK���M@T�`���.@TdG�I{@T8���S{@TY��T�@S�ZX�[@S��q�[@SD)A���@R�}����@R�W���%@R;���c@Q��'H6y@Q.{U�@PT�Sd@N(S��K�@L>���@K��|��@I��'�&_@Hpk0R�=@F�-�|��@C3�7�@@�|4ܮ@A�$gh�@B�Xq/JK@BSؼ�m@G�sTР@NE�M)!@S��
�@T�!�9R�@S�&jѫ�@Ryx|�"�@Q%pFy�@P�s+@N,Z�Np@Md�����@Md����@M����o@M�����h@M�8��C@NQ�k��@O� �Q{�@P���@Q�f�~�@R�tfB�@S�U��o�@T�E-��=@U఺��@UK�~�Y@Ub`��61@U~��o�@Uo?�u�@U��m��@UJ��-us@U7�f� @S��r�)@RA�׺e�@R%��~{@Qd��kR@P�a��>�@R�C��@Wr�[�x@U��r#ݞ@T���%�p@R��w�@R{�l��R@R����@S{t�;@T-&���@T��9��-@U]��i @I�Y���@N�1���@I��?2@Cc_�5@Bs���Ӂ@D��'_@F�!�@K�&���`@Tƈ�\�]@U~?�Z>-@U�/4N�@U��Yw�@V-+���@V�:�f@Wq�X_ @W�4�|L@W����@WUR�o��@W 9\%�@V����8�@V-^����@UIrݻ@T̙fP	@Tu�k<R�@TzƓ/�@TV�
��E@T��JG@Sܺ���@Sn�$#�@S����@R��l�@@R���&�@R7j=,@QH�l)��@P\V�U@N;��@L�W�~�@J�l���@It5�^��@Ho$W�@E�p��:h@B��� g@A��MY�@Az��(�!@Bݔ��ؒ@A�<��8�@Gep?���@N!h���`@S4��=@UI�WB@S��
��@RiG���@Q'�8P�1@PA�X���@N�P��(@M�9f�@Nw��Nu@Nb'�"�5@N���?�@Nc��
�@N�J�*�@Pi��Y�@P��C�i@Q����@R�G _�@S������@T}���;@T�WR&L@U9�a��S@U;�M^pO@U^�"��|@UL���@Un����@Ua�tk^�@U�rs�@S��`���@R7��R�@Rq���@Qn�e��@Qe(��@S?㈲��@V�n`�a�@Ua'%�S�@T+G��@@R�w���@R���ug�@R���<@StQ ��@T"�?L�@T�۸��@U]��i @I�Y���@M�H�E�@J8�e Z�@C���(�@B����^}@D�K�g@Ec<W�H@I��ɋ��@T��y�([@UzDβ�@U��ܹ@Vu�6��@V7bnT��@VƔU��@W{���^�@Wܚ�9l�@W������@W�!(7E@Vܪ�3o@V�h$xy�@V=���@U]��P*�@UuI��@T�v�&V3@TmR_@TM9��0	@T"ZC�\W@S�ڜ��w@S~ps]�@S��o�@R�N��?@R�;e�@R*@�9@Qo��[NV@PTS��i�@N���-@K�.s�[`@J0�M$@H�� ��M@G�ٯ�@C�k; @B��ͷ�$@@ـ�c}@A��x�@B��N
�@B��}r�@Gcc7�v�@N Z��@S�f��@U�P ��@S����@RK@��8@Q����@P1ٮԢ@O��4�@N��I���@O���=�@O����T@O��K��@O�8Ҫss@P	Rn>�@P�e����@Q;i����@R8�d@R�#&;��@S�5��H@T{pʟ��@U*ί�v@UH�r�@UK�P�q1@UW�X^Am@U[���U;@UaR�fr%@U3>Qԯ@U �_���@R��Z��=@QBD�zi@RGG�@[@Q�9�N�9@Qͱ��Ր@S�"zc@Vn�.![�@T�R����@S��r!�@R�W��k�@R��]��d@R�_$F@V@Ssk�9��@T8�f%a�@T���5@U]��i @I�Y���@NZo���@J�2���G@C��Eܯ@B�G,��@D{�Fb_q@D��8Sl�@Gn0��$@T���h�t@Ut39�9�@UѐLC��@V$6���@VU�gi@Vև��@W��e)�@W�կ�@W��Q؏�@W����@V�V~��}@V���Q�@V `����@Uk˭��@U
�7ǥ@T��ܻ�@Ti��c�[@TN�p�;@T?5���)@S�TAU@S��iyZ�@S?C���@Sް�,@R��@���@Q�� c+@QcL����@P!���}@M�H��rS@K(���hK@I��ŏq(@H��@G�#[nh@E�Rł�@B�Z%v@@�0�=�E@@�Э)@B�����d@Bvo��@G�X��D�@N� ���X@R�5���z@U�kܷy@S�U���@R@FG���@Q/\GG^D@P[ڐz��@P�%:@P2BQ@Py\
�@P�s���@P����5C@Pub!5��@P��pb�@Q jG@Q��C��@R)�A;��@R�	;@S��)	@T]� �F�@T��S+g@UA��C��@UP�l|ب@UY���g{@UnK�h�@UG9I�N)@U�45v�@T��)�ݼ@S)��*@Q�d@���@Rf0FA1@QÃ���@Q����9�@T�Я%��@V*�D�9@T���y9�@Sz�L@R�6��@Rs�3v�@R�����M@Si2�hFo@T:V���5@U�"N#�@U]��i @I�Y���@NvQ��]�@K����@DB�࣏�@B���ם@DobrG��@DjVN`@F�VL�ܓ@SP#:Kxa@UaK��{@Uյ�@��@V0�/	C@Vb��ˬ1@W� �a�@W�48��@W�x`H@W���A@W���S~�@V����@V����g<@V=��y�@Ubd��J;@T�����@T���x�@T�J����@TA��H΁@T1����@S�O�;��@SlRVQ�8@S?ĀI3@R�8�a@R��S-|�@R�T�W@Q*�A��@P�Rʩ@M��r��@Jڶ�qz@IklQ��@H���ɸ@GV���@D�-Ϻ%@B�����	@A�ZM@A?�a��@Bj���h�@A��#�@H�P��3@N�Ib��@R�̾��@U�񯖹@S�\@ޕ{@R]�h�e@QR�[?�@P��ub�|@Pa��U@P��V��@P�6V4,@QR���W@Q*%A@@Q�D�t�@Q��Qc@Q:���E@Q���ض@Q�o%�*@R��2���@SV�Kw�@T���'�@T��t���@U����@U)n��@UR
���u@UY�x�D@U�V�$)@T�m��g'@T�Pّ��@T[AT'@Rk�C�@R����p@R �-@R��ht�W@T��C	h@U�*��@T)}�Û�@S˅.��@R��٪�@RP�K�t�@R�sU-�L@S_߀�;'@T<�+�0_@T����@U]��i @I�Y���@N�(e��k@KP��f@D�ּ��#@Bփ+�
@D&�	{�@D	�j��@F���>({@S���p��@UM��d]�@U���-,�@V9m�h�3@V�\;��@WE�iv�@W���@W��e�@W�vx��%@WT�Ą��@V�O7�fK@Vއ��h,@V���&�@UWm�U��@T���(��@T�J���@T�T�@TVxޞܑ@Tq��)�@S�Y|`@Sk�e�@S6G.Ȝ�@SZ8�I�@R�rfD�@R'۶e��@Q�����@O����qI@MX��CA;@J��$�+@IB=�y0@HV���<@G
�����@DxޓKY@B=l�}�@@ˣ9�O@ATk���@B%\ncWJ@B5�Er�W@H}[V���@OF�_�eh@R�:ȧ�@Uy�#�&@T�1��@R�5g�%�@QT�'K@P�f��+g@P�6�-�[@Qx�%h%@Q��΃@Q� ��@Qi�CP@Q�Z/K�c@Q}Q��h@QpYPC��@Qԙ��@Q�@�� @R�Ϊ`�@S$^�L�@S��]y-{@T\��^@T�tvm!_@T����@T�7a
��@T��l�d@T�7�@T����9�@U&�O%K@S��J�x�@S�[�n@R���k6@R%�#��@R�X��3�@Tdժ$;@U���VO�@SԲ��A�@R�;���@Rp��`��@R,�+wG.@R��9�@S^�̔@T?�.$�1@U
�r��@U]��i @I�Y���@N���<@Kd����@E#q�I@B���G7@C�j� �@C�g��@F�����X@R����<@UEp���g@Uڎ3L��@VH��DB@@V� �[�@Wvs�-�%@Xdz��h@W������@W��M�c?@WSasar�@W����#@Vܑ� �@Vw�k�3@U[V�Ù@U�#���@TΓJ��@T����S@TN��_C@S� ��P|@S�ܸ��@Sf����@SK�P�{;@S_�ɯP@R�`��P@Q�'U�@Q�5��@O,,���8@L�eʹk@Jx�)��8@Ik�s�8@HX��ѰW@F�?�-3C@DW���@B|�_I9@@��TՈ�@A�zf���@B
E�cc@B��\���@H��Y@ON��&m|@Rү�x�|@U!���@THX)lk4@R�����@QE��3�@P�t,՗G@QFU�5I@Q��c��@R*Uls�@R�����@Qަ�i�@Q� �"�@Q�=)��@Q��Tm4�@Q�aL�ո@Q�
�&�@R)u]k8l@R���/@S�����@T
�<�)@Ta�<��@T��^/�@T��E�Y@S�i��p@S������@T���S�M@Tt�|I�@S�q[H�p@SEč���@SR��"��@Q��ő.@R!��M �@T8�V�*�@U����6@S��|�t�@RJ�5뱼@RK��@R+���)@R���P�@Sv�4]�,@T1}��@T�LffJ>@U]��i @I�Y���@N�-�Y��@KQ8�@ELM~Qk�@CP��2'@C?X�c�@@D(@sb�@F�x~��H@S�3n �5@UO��|?�@U��;a@V?���,@V�4�V{@W��Xғ�@X'�,�V�@W���� �@W��x�l�@Wf��^�@Wd�|@V��P�@V�w@Ut�6a��@UT�w�@T�dRn�@T�֖�O@Tj�LU@T����@S��)�	@SuŻ��=@SW����@SR�Ʋ�@R�f�@Q�#֨	�@P�����@N��0R�@L$���@JxA����@I(Sur��@H"9��n�@Ft��*��@D��
��@B`�I�o@@���H��@A*���@BHr�<�i@B�+|Oh@H�G�[��@OL����@R�uh��H@U#3�qf%@T��qϹP@R���/�@QIpc���@P�t�[�@QM�J�@Q��^���@R���
�7@R���G��@R~?���@R,��!�y@Q�ı��@Q��Y-��@Qe>HC\�@QS�:A�.@QV�I�G@Q��FO�(@R��
M@Sa�5}�%@S�E�z(@Tť*�`@S��@���@SE
U� �@T&U �"�@T�>�[��@Tq8 s/�@S��ٶ@S����#@S `�&@Q�vᓥ�@R�ԖW�@T�!e%v@V8�L�|&@S��Q}8-@R!E&�@RZ����@R]^�K
@R�Ɠ�|�@SrF��̻@T(S@T��u���@U]��i @I�Y���@N�NpL�@Kz�(;k@E���os�@C��]�?�@C'A6�H@D�Γ�@@F[u�NnO@SI%��@Ua�$@U�c�e��@V1�U�@V���9��@W�Ә��@X$&�d�e@X|�؇�@WԨĦ�@WvBm�A@Wg�a�[@V��8ax@VE�O U@U��Zc�I@U!>���@T�V)���@T�D�+�@TT���b�@T�;��@S���Z,�@Sr�E���@SD��{ߔ@S��2w@R�6M;@Q�D:�@P?����@N�#r�@K�ۯ���@JT��(ܻ@IL��~�@HA����@FI�!�\@D8n�c�@B1��� @@�����J@A���D}@By5k�@CT
�~;@I�X3��@O�ɢ{*h@R�+���h@U�����@T�`��o@R�P3pP@Q���	,@P�S6�w@Q8�挗e@R,�����@R�c��%,@R�連��@R׃8�+@RY�#	��@Q���ߘ@Q�-�Y{�@Q-cՈ�@P�謀ï@O���3��@PE�+�U3@QJ ��k[@R]�ɯ� @S	�44n'@R�؏O	-@R�E+�É@S�t���,@Tx�O�Pi@T�c��x@TޣT"�x@R�R��k�@S������@R(�OU�3@RwT��@R����@Tj�xT�@V�&|U�@T-+�^,�@R3���w@R`E����@R�c��X@R��'�8@Sq��@T#�%h �@T�<���@U]��i @I�Y���@Mꒃ�(�@K�Z�.{7@F<����@D)�~��@C1|�,I@D�:W��@F��5�@Qڷ&��@UPXk�`Y@U���.@V)V#�@V�����O@XH���@X#���Q@X���@WѲ_߬@W��c�	@W7�9�c@V��J�@V"?��@U�t�`]�@UVf�,@U%A��7@T�&3zw@TS��l�%@T�����@S�G�I�@S��D@S[ڧp�?@S*��-@Rt{�c3@Q��(�$�@P,~�VQ{@Ms��-�$@KW�F��@JQ����@I��꣄,@HR�YfH�@F5~L�4�@D�� ]@BXDmT�@A8ոƑ}@A�^M#@B���!��@C���~�@J,��4�@PY�|L�@SZ鳾�@TԖSR�@Tz���@R���	��@Q�w�}�@P�qn2m�@Q�	*�@RZ�0�Q�@S��i#�@S.�C��@R�Hv
P@R��g���@Q�t���@Q�{&,�@P�1Xx�@N����os@L��t�U�@M縨l�@O����@P�	?�u@RV����@Q����*
@Q���P�@SY�iu�@S9 ��H@T`v�\��@TԀ����@RjJ��m@QGSr��S@QA�^?S@R���Bj@S1G��!�@U��,�@Uނ��:�@T�S4B�@R_^����@Rw	r�%@R�t��Κ@R�W��py@Su �t��@Tmr��@T�����@U]��i @I�Y���@N���=?@KM�Ր�@F���@D����@C���%�@E�"$\�,@G�T��@R{��h��@U/�4�5x@U�DyQ'�@V6�Z�3@V�G��@X�;@X4�a�`�@X��C�@Wү�(��@W�-���@W�3�@V}�.R�D@V�W&�w@U������@UjD���@UG���+�@TԆ�P$@TN�/�@TR���@S���5��@S��M�q@SfV��r�@So1���@RGUU _�@QM_��@O��'U@L�;>��@Kt#���@J�16���@I퐀�G[@Hl���@F�%|A$�@D_���x@B��Q{�z@A��=�֛@B���.�@C@��I�@Dz�Kl@KytO]HQ@P��81��@S�()�p@T���t$�@Tp34O�@R����C@Q��KV��@P��w�s_@Q�)�r�@R4`��M@S.�l#�@R�a�v�@R�� ��@R��W��@QD[��@@O����k@M�3�m@L� ���@JHQ)w@G%�H�Y�@I������@N�#>@P�O^��@P���n�[@R
�[g�@Q����@R��H�)@T&��/�@R���X@Q��8Т�@Q*,`o@Q�u˥I�@SJ�_�'@SS���A@U�~�0@T^���}@S�-�R
�@R۵ؗ��@R����I�@R�Z'c�\@R��$��@Sq�C�*(@T��O��@T���%�@U]��i @I�Y���@M�,	���@KE�IS�@G*�9}�Q@D���0�Y@D��=Q@GWR��'�@HrQ��U�@QG��/z@U.I�ѡq@Uݖ*4�@VLX����@Wc��-A@Xb��@X#��P��@W�Ak]Y�@W�{�*��@W����Y]@V��,��s@V`���]$@Vѻ�f@U�T�hso@Us�w�O@U+�k^@T��x�2@Td��Gl@T$�M�@S�ź��@S���̶�@Sqy�T�@R�e7��@R19#�z@P�d��&�@N٨&�J9@L_� �\�@K}��c��@K���+�@J2���@I�%$�$@Gd�M�@Dݑ�\�@C$%�R@BT�<���@B�A�Q\@CgTpλ�@D���b|@L��e*�@P�~���@R��#�G�@T�2����@T^�/��@R��� ��@Q���-c�@P��ϴ�@P���@Q�3�cU@R�l�|��@R}]Y�@Q�`*��@P� ÈvQ@P;xFj/@M¡�C@KPjc�@F�"�m@@���4@@���k�@Em�op!�@J�ON@�@O ��Z��@Q)H+|�@Q�Ʊy\@Q�&�ڏ@Sx�m�g�@R��ׂ�@QUV��=@P�2]��@Q�Pk��@R� DU@S����s�@Su�rB��@U�Ļ�L@T�����@T	����@S\1:�Z�@R3�˰�@R䞍��p@R��}�h@St���A@T���OH@TݿA�ǘ@U]��i @I�Y���@M*a/��@K,{1ň�@G��<^-@E}x�u�[@E�+���@H� �D6s@H�&g@RK��@U3�I�4�@U��6�'@V]j�d��@WC��OBc@X
��U@X�݌@W��ms�@W���ܟh@W^+W���@V�,ԴL}@V;�!�߉@U�ݺ�E�@U���.@Uc�	�m3@UI�X�|e@T���%�@T���4߰@T6�<� �@T	��A�;@S�(��\u@S��h^�}@R�0WL@Q��t@v�@P�Y��i@NVM�oZ�@L'8&׽�@KG��n3@KQ�#t�@J�B)���@IƩ�v��@G�_����@E�}Gm@C�ba� s@C[��M�@CN:���%@C�gG,�@ED+�tt�@L��EļH@Q:���0@SIDu���@T~g!W2�@TC��f��@R�f{�@@Q�#��v�@Q�GM�"@Q	RW �@Q��?�]@Q�A��+@Q}�NiL@P~7

c�@ORi��Ƙ@N	/�ߥU@LX~;�@C�����@<�zHv^�@?Y'k��M@A�d���@Fx���qe@I�#5k�@L�t��@N�֢�O@Q?M�U#`@S9ɞƆ�@SK5~(}�@Q�0M��/@Q(MT��D@PʃoaA@Q��"�@S71b\�s@S�,@S[�;�TP@UaqL�Y�@Ub��q�@TVl�#�@SӖ�}�>@R�S�Rk�@R��gm�@R�.�wk�@Smu�g��@T��r�x@T罄��@U]��i @I�Y���@M�����@K
3L�R�@HX>}�D�@E�7����@FI��5S�@I�9%�@I�)�U��@Q�)��Y@U(�,_�s@U�3�^@Vlv�~�@Wc��3@X��qgt@X&��{k@W�uiU�=@W�;
�-@WE��}[@V����@V ��E�@U���;�P@U�ӭ+�@Us�`i�@U]���`@UEx���@T��)�R�@Tf����[@T1�2�{@S��=��@S�K�@R��p��@Q���#u^@P+�b��@N`�=:�@LcL{�@KA����x@Kr�Gy�c@J�ͨ�{�@Jj�tb�@H����@F��05q@D��=í@C��{�@D�Lx9@Dv���@F���ǩ@N,R@�"}@Qӫn@,@S�p�m_@Tw�0�@T0�̼�x@R�3��@Q��"��@P����y�@P��J =�@P��x�@P�^>�@P5
�r�@M�����[@K%��A��@K闝75@H�u
�5�@;��T�l+@7���I�@<o�tu@BXL���<@Ff�v���@I�j���}@M��36�@N�ٖ��=@R^|���@S۷o���@Q������@Q�c/ yL@QC��mo@Q*���@RHd�w_�@Sr܂8��@S�v(�8@Sɪ$y�M@U�l���0@T���(@T�0���@T��uL@R|{��@R�,�U@Rڳ̹_�@Sh
��@T`4|Ir@T��Ok@U]��i @I�Y���@MW�{@/@K�|{ō@H��ߢw0@Fu��a��@F���@J��b+�@J�Ҥ�n�@RPU`�0@@U?�"�wS@Uޠ���k@Vn��&��@Wm`��=�@X�@˝@XPa��@W�ɊA�l@W����@W8-�9�@V�e�C�m@V(SYPx@U�q�k��@U�gGQ$�@U��R=�@Uk_qb�x@U#<�@T��o|7@T�ԛ�@TH�8̻@S����!@SY~�x�@R{Q�zl7@QS�_J-@O�#r� @N �� ы@L=3�@K����O1@K���@K���0��@K\�%�f@I��s�W@G�.yFc�@E��� @Ea��s@D��8a��@Ef��$@G;�|��g@O��E���@R^�|��@S�J�bR�@T�e�9�@S�����@R�����@Qov�1�W@P���)@PCx�Da7@O۞o��@N��'���@KѥMw�@Ij���l�@G��#��@C*:%ʲ5@69f=.�@3���v��@6�����@=��.%X@D!�R\e@Gj��G|P@Jks���q@N��G���@P��ԃE@R�5�0@Q�~Ї@Q=�?Y@Q3ֈ�o5@Q[Ъ�]b@Q�����a@R����C�@S��JzL�@S뉫'�@T1��V:p@T�F9��@TAQ�RG@T�q"�!6@S�?��@RgHX2E�@Re�	:��@R��[��@Sv�߁��@T�ӊj�@U�2B�	@U]��i @I�Y���@M���nhW@J�P���@I� +�?@F����j@G��'��@JO�S�@J��C��@R���m�@UY�4"�3@U�P�>�@Vj���P@W{��ɜ�@X���.l@X���3�@W�e�J'%@W����e3@WE=!X�U@W�\ӷ@@V�V��W@VrO���@U�g��@U�b�
�@Up��%!@Uc���@T�8r5@T�f��7@TH�@��@S��bV�E@S����@R?8,�>�@P�lP|��@O������@M��{�i#@LW��8x�@Le�q���@L�I�@B$@L��{�<@LqG<S@K!�Ŗ/S@H̟�/;@Gq����@F^�6 (@E̗��@EڞU��@H����@PU����.@R�^V��s@TA��!E@T���R�@S�2j�@R}�l�v@Q]ٛ���@P]k:���@O{��(@Mn.�BP@J�[�V�+@GQ�w��@@��C�A@7�Ø�+�@2?�扞@2+ӽǗ�@5-���@9@���[L@@k���@E�z��9@H_D��~�@J�@�t� @Ow�ٸ�@Q&xag�;@P_Q��@P܌��@Q��ݡ��@Q)Cs��@Qw��G�@Rd���@S�eyRN@S�~���@Tk�9@T�U���@Tx؝��}@T�x�o�b@T{`�/�@S��~�p@R�%�od"@RN��̨@R�-��?�@Su!�i$G@T(c��6Z@T�	MZf�@U]��i @I�Y���@M�YZY@J�"&�k�@J
���x@Grm
��@Hn��@I�d�^C,@J�ۡ�g@T�#�@UDC���,@U�&���3@Vu��i[@W}��A�@X̀Օ�@W��N�X�@W��O�@Wz��7�@W=
Ý��@V��G;i�@V����@V6-�3��@U��V@�M@U�����@U�h���@U)�%P�@T��y4&g@T�'�z��@TI��g��@S��zf@@S(d�j�@RA8@�U�@Q���]�@O�����0@M��W-D@L��Xy @L��e�}@M-JT/�k@M�=��@M��;x�@L�7�bCS@J94&�v�@H�@2V�c@G�3c��@FQZؤ��@Fm�
DQ@It��a�@P��C��@SR��fi@T�!��5�@T���M��@S����r�@RWq��@Q�. �@O����<�@M�1`s�@Ksȵ�qy@GC�vI@A5&�}�@7�Y�:O�@6��dA@5ouiǅ@5'h���@8�O�g�@<%s-�&�@Bm��vċ@F�՛�?�@In"���@L~�(@N�l�,�@O��d@OհI8@P��V���@Q���7e@Q�/#ߝ@Ro:�v6@S0)��@Sr/<�o@T+��ߏ@T�[���@T��a@T{"�ԏ@T���7��@T�����p@S]M�@R��A��j@R@5ضI@R��@�A�@SvZ�*�2@TO�K�%@T��l��@U]��i @I�Y���@M-ȁ�RO@J�,ڰ��@J��X�@G�t��O�@H�g��>@I��fv�@K�5u9 q@S��(@T�w�^��@U���
�@V����C@W�4��@X�/��@W����*�@W�:���{@Wix�F��@W4Ly�7�@V�.ɵ$<@Vr�@�m=@V5'���d@V����@U�rg=@U�C�
�y@U,�>͙�@T�3�Q�@T�za�@TO�� @S�Y���:@R�)ޓ��@R+�:~�A@Q:d4c-@O����+@M�<��@ME����@MF���Ӊ@M�M��o�@O��(��@OG���ֽ@M�/`@K�o��X@J��)�6@Ioİ4@G�6�pyl@H�`�o�@J���I��@Q���İ\@S���2�'@T�F~��H@T�PYaW@S�{�U+@R���M@P��V
��@Oj�u�@L�L�[]@JE�IP@D@�&��@>��($��@::gJ%(�@:c#��&�@8���>E@9bA����@<��L��@=HS�Fw@@#�9v�@F��*��@I�I�}@N ��ɧ�@N:q���@N�T���@N�d���@Pu��{a�@Q����;e@Q׌���6@R��F��a@S|An��@S� >|�@T,���@TWG� @T�ݺ11m@Sn2��o0@T���8�@T�s�ME�@S�����@R���
{�@Q�E���@Rg���[@Sq��3�@TTP���@T�b���@U]��i @I�Y���@M�c��4�@J~�I٧@I�\�;j@H'午�A@H�G+��@I�̄�@K�`��
@S���(��@T�p��@U��{@V�^�(�/@W��ӹN0@XxLe��@W�㜓�@W�/�4@W{pɢb�@W0�R��@V�/�H��@Va��M�Y@V:hL�E@V^��S@U�Ud-p@Uv����@U6��a@T��N��$@Tt;�b@T0Ly��@S����D�@R�K�	�@R 1�@P������@O�jn�$@N���	@M�4j��@M�y+�Jt@O�����@P ��1;�@P6�փj@O.D'R@M����@L&�yp:�@KLr��@Ipp�vL�@Iw��?J�@K[v���s@R*����E@T(YbE+�@T��Af@T�q�WO@Sqޙ��`@R��p@P�8wN�@O]���@L�+�/�@I�aAX�u@E;iq�js@A�jf�m@?�ְ�g@=L����E@:�2�A��@9U�p�@>��Q��S@@4�J���@E��z+�@HRx�5�E@H���1@@J�)gBi{@L��(�@M�R�t�t@O1���@P�i#��@Q�E.s�9@RnA#��$@Si�,���@S�&��u@S��ō=�@T �P��@To�D��y@T��Pj��@S7�T�#@U�4���@T��<@S���dB@Q�� .kp@QΥF���@R:����@Sp�|<��@TH��<4�@T�Q[:�@U]��i @I�Y���@M4J,I	�@J}r9��E@I�����-@H�ȮU@H_�<z��@H��u`z�@K��g�@S��Q<ۓ@Th��l��@Uh!��2�@V��RP�@W�����@X�:X��@W�W��X�@W�q>��@W�?]�C@W����|@V��	}t@VK$����@V'���@V�`���@U�*�߂�@Uh�F�%@T���|�`@T��RGi@TZ��??p@S����@S�z0��G@R�II�m@R�18@P�'�v�7@Oy.�J��@N$�;x��@N@��@N�R��y5@P�f!s@P�}'�K@P�ٖ4�a@Ph���P�@O�<��@N$��C@L�*�͌�@J�!�r@I����@L�BT)��@R�O�uD�@T��5�>@U1�����@T̛� �<@SZc.z6�@R�;���@P���ޠ@N��sĻ@L�(6o@JBDy�L@EY�a�@C�����@@�2��~�@<V�wh�@9�ݚ(@:�f0N�@<���ۯ�@A`WuSSe@D�)
��=@J(rY$@I�:eB�Q@I�-K0]@K�#���@M�4�
�@O�񙺯�@Q2X�[�d@R�Y��@R���W@S�@� ��@S��=O�5@S�1l�@S�e����@T_\�W�@T"Q5KWC@S}	����@T�~�2�@TvgX��x@SH=��J@R+�o�}@Q����T�@R#����@Sk���@T9~)"��@T�PyN5�@U]��i @I�Y���@M҅��;@J�b����@I�Ȅ��@H�z���@G�zrOq�@Hm��1d�@J����h @S���U@T���%�@US-2��@V��*$Rd@W�6��MP@W�<P˗�@W���,3,@W�d#ұ@W^��î�@V�wQF��@V�}1�@V-���I�@VqXz1�@Uգ{L�@U�zjr��@UE����@T������@T���s,)@T]�7�C|@S�+�[�@S�ۇ\�7@R�>j[��@Q�/�@P��I$�@OM����}@NO�w��@O܇�}@O�nh��G@P�է��@Q\����0@Q�����@Q'��q�@P�%=�@�@P���@N�t�LT�@K����Pm@K3�X�Ep@M���2��@S���]@U�8	O@U���N�@T� ��@SD�LP-�@R^�V�@P��y��[@N$��{rI@K��OPN�@G��]XQx@CI��@A�93ȁ�@<��'@<�KA!=7@=:�6/�@>�r�@>���w�@>����C@A�=*1B�@DS�v�@H�*��@I�7�BB@Kb6�# @N1  :�@P�O�L�@Q��.��-@RJi`�Q�@S22ꭎ�@S��f�@Sۓ�kZ�@S�騌D,@T���B@T8�G^_�@TR)Rl�@S�񽀡�@US&�i@T��?�j@SƓd��@R��:�@Q�vaTR@R���<�@S]0��@T;�B0�@T�ש�Uy@U]��i @I�Y���@LW��b�H@JF��`3�@Ih�B���@Hq��|C-@GY1��u@@H� p�P@KE��U��@Ra�w��@T�HHu�@UV���,@V���DH�@W�p��e@W��iW�@W�o���@W����=@W9b�U@V�L�@V��-Z@V0�^��@U�R'2�@U�����@Ur�䷬@UG"��m@U]�^�K@T�=��[@T\�G��@T$���@S��ת@R��2p*@QȜ3*�@P�}�C��@O��$���@OHYMP�@O�d � @P���ճ@QBW��#+@Q�p� �@R+�c
I@Q���r�@Q{RfL�@P���@P�d��@M2�R��@Lg��~��@O	CYC�@Tkq۪�@Uv�}_;@U�z�m��@T�@�?�Z@S3x�(��@Q�#��e�@P\z.�?@M*�I� @J��Þ�<@G ��۽3@DW��C�@A�K��@?8�zx�8@B���K�@CekE�R�@B9D߾�@A�8�>�@A��6��@C*�W���@F.�ve�@G^�J��)@JF�5�@K��Ɍ{�@O'wZ�@P٢���@Q�����@Re���ػ@So�P��@S�O�(�@S�o�/�!@S�ä9��@T(CG	u@Ty�O �H@T|��D@SvEO[�L@UgȪ�$X@U4��r+@T�'T�@Rߕ�K�@QZcU�*@RKS�(@SB����@T,�=ט@T�{/m�@U]��i @I�Y���@L�z�-��@JL���@H�+ =D@G��`�j�@F͙��-@G�9<=�@L��nh�@P�#���@S�ڹ(�g@UU��m�@V�ӫ��@W��`q,c@W���C�@W���|@W��k��@W61ߘZ�@VՍG��y@Vk�sW�@U����@U�ӏ:�@Uf$r�@UG$@U!Ȝ
�@T�:�l2�@T��k���@T��HnqK@T+�i	�u@S��{'<w@R���p9u@Q�c�3��@P����e@P|���@P0�g�"0@PY"r�%�@Qi5P�@Q�'Q��@Rtڶf�u@R�q@G�E@R��|iG@Ri�8�'q@Q�����@P�v5
�@NnI�⿋@M�C4��@P�	.w!�@U�>�	@U��JJs@U��q�+@T��i�@R��:�L�@Q^��R(�@P:j��'@L"\��c�@H�}��L@GP�9*py@I[[�"fx@D�n�f�@G!�W�� @H�0}.�@G������@D�k2v�@D|J9�ޖ@D3�<bLq@E��d��x@H&����@H�1t �S@Ko�eC�[@M�6���#@PL"4��@QZ�k�d@Q�ڴD��@Rs�����@Sf�o��@S�>$�}@T�C̑@S����X5@Tv��ĥ@Tj���D@T��|o�@S���_@UD\�@U+I�B0q@S�:v��@R��M��@P���@R)=��@S2��(2@T*���,@T��}r�@U]��i @I�Y���@LdNJ�;@I�n0��@H[��y	U@G���X��@Fa�@!D�@GL^p],i@J���&+�@Lh��69�@R���N�|@UWs�	(@V������@W�(��}@W���Mx�@W���}�@Wu|��@W0���8�@V��#r�@VU/XD@U�N�m�@U�DC9@UE�+;@U&� ��@U�h�@T��,8�@T���Vd�@T���)a@TS�;��@S����@R�����s@Q�Pàd@Q���C(@P��Fg�@Pb99<��@P��ƫ�C@Q�-<'�0@R\�B���@R��d��@SX"Y=@SZb��?@S�i�ԫ@Rw�v[�@Q6'�jF@OLl`���@O�?��@QbR�v@U�a�Q@U�j��@U��ʉK@T�����@Rw��l@P�H��H@O�+~& �@K%�{ z�@H�رꅠ@Mg	�4@N����@J=�n�@K`�EiZ@J����@I�Za���@G��@Fǫ���3@G�
��5�@H)�����@I�f�N�@Ky�a��q@Mf�F;�@OL��B-�@P�Mu@��@Q����@R��Mm�@R���r@Sjo����@S篟q8�@S�L��@S��2S�g@T*9�lG@T~)���7@TU��<�\@S�3�y,@U#-s|�@UP�6�@S�BՔ#@R�}r�/@P�P�]B@R+�Qo@S.���@T7D�1�@T̰�U[�@U]��i @I�Y���@K��A��@I6]}�@G�	�?�)@G3T!�x�@F�b�w�@F� �Eu@J��)�~�@L�&��@S��2��l@U9M=�K@V�+%�m8@W����@Wǜ��}@W�.4WR�@Wl���9d@W%����@V�f�9p@VfB�6k@U�ʠ%s@U�_��f�@UL~���y@U&�9�y�@U4l��@@T�*vH��@T��b�B�@Tv�If�@T%-���@SJ��e�)@R�J*��@Q��J�@Q+ցZCF@P�Xs��@P�_t��@Q���K@RC�Ѱ�@S�.��@Srx�:7T@S�/�0�@S۹�6{@S�ұN�G@S����@Q��E/ӹ@P`�FR@OY��"�@Q�M��C�@U���d}@V8����@U�A��@T^�_�a@R_H��!c@P��@.@O�5��@L�)A6�}@Q�'��_P@P�,�@O+M+�@M���l@K�%Y��@I$/�&�@K(O�Qg1@H����\@G�����@G���,h@I/3E �@J� x[y�@L��GA��@N��3�@P�Z@Q5��΃@Q�{�}@R����I@S*ؑ��@Sj��7�x@S�l�Ov�@SCj:Q�P@Si�Kd`o@S�=�;��@T�i�f@TJ�n��@S�0Uǳ@U�Ì��@U���?��@Te�e5��@R��a�Z@P���E@R 	*��i@SV1'U@T#���@TƄ�F�@U]��i @I�Y���@Kd_��V�@H��q!�@F�Q&]�@F����̅@F@��}i@F������@J�P�X`%@L�<'��@T�	�/@U����@Vm���{S@W�:���H@W�Z�*�p@W������@WDF�6��@V�g��V�@V�#��X�@VYC��)@U�Pe�@U���!�@U_�<U-@U5��@UL�{@@T�v#��@T����m@T�A�J@T����@SB�5��@R���(��@R;����@Q6yV���@Q��)�C@Qy&���l@R/�,Q/@R�j���@S��K�"@S߱w>�@T%T`���@TH�B�@S�����@Sf=G��@R�V���@Q2��|�@OH�bWe�@Q��M��@V?-U�@VU(��I@VG�E@Th;��@R���M@Q�ￇ�@O��lE@Mk�y0��@Q�6�b�@OV��H�O@M������@L����܁@L��&�P`@I�F��7X@G���}�@H3�\��@H��2�@HeG1��@J,�ĢN<@KȎr%L/@N3v�KN+@O��F���@P@F6�@Q\nD��@RK�oc`@SVOGz9�@S|y��*@S��0��@T�i{@T��9W@SG3��(@SI�S��@TSӀ��g@Tt�i>[@R�_�@�s@T����n�@T�f�,D@Ts���Ș@R[�$DN@Oe��g�t@R<f�9l�@SZ{ ��@S�L���@T������@U]��i @I�Y���@KiN�VI�@H��n���@F+�B@F))Z�&�@FF��� o@FdʌC��@J��hM@L����p@T��ǳ@Ur1�lk@VU�o|E�@W��4�M@W��픴@Wu$�گ@W3�(ч@V��M� @V�_a���@V-Jm/Z@U�~);��@U������@US��v��@U5%dig@U�Y�a@U)0�3�@T�9�lk�@T��.>C�@S�����@S6��)B�@R�JR���@Q�n�|@QpoƉS�@Qo����@R�:��g@R�rc��@S�U�/�m@Tؠ�ii@TP��4�@Tt�bu�@T�l�@Tg<A�@Tm�}}y@S6g��O�@R%5�	�)@P�6���@N!�	�@U�>yd;�@V]�T�n�@V0ɯ�0�@S���/�@R'�&�RS@Q��3��@M��qL�e@P�cM>@MnU^�30@H��7J��@J�c��[�@L������@L�S��@I�h
1�P@Grѵ�@H9g�c�@H�uH�@I����@I�.��I@L#��O@Oa����@P`G�¬)@P��\-��@Q�&�Da�@R�<�a@S��,n�3@S�6+=��@TI�?t@U-Hq�@V *�sF@T��88@R�e%Ei@T�z
95@T��Q;Б@S�{G�/@Ux�!�@U"��s�@T87�}�@R�ɮ��@M�" @R?��k@R�>���8@S�k���@T�$q�z*@U]��i @I�Y���@J@�N�L@Hq�Ω, @Eؒɽ��@E�skv�5@F�F }��@F����<@KI��� @L�-h1c@S��Z�@U�����@VF���@W��s��@W����@Ww�.�/�@W6? �@W�����@V���E3@V$Q��,-@U�}#j�5@U�;���@UaFo4�E@U@D� @U��D��@T�?_U��@T�Ѫ�%�@To��t��@S���9n@SEQݔ3#@Rt��4�@Q�P/F@Q�S���@Q�u�ؾ�@Rv����@SAC�(��@T)�Mÿ�@T�=�к�@T�3[��@T�1M@U*��@��@U�}m�#@T�5C��H@S�Τ3�{@R�i���@R���s(@R~���@U�yܺ��@V0*2%xt@V�j&Q,@S�b<�|�@R'��' �@PPK,��@N_��
�@R��NA@P�B�~n@Ks=b�=@G�v�AH@L�̔�@L���nVP@Jt��a��@GH��D��@H��(��@I�(�U@K��u�{�@KR@^�Y@M"�����@O��բt@PӮ�G�@Q"�X�e@Q��dʳ(@S0"
��@S��Nq[g@T+�FO3U@T�}�XQT@U���j�@V�\aƀ?@V[����`@S3*�j<@S��M���@Tr�B�f@T`!���F@U�UCqY@U:��{�+@T:T��@R:8̾^�@O�&���@Rj7��@Rכw]�_@S��>@T�3��~@U]��i @I�Y���@K.亩@H	q�� @EB��7p@E;%�@F�N�N�4@G"L��@K�]�+�@L�c�lu@S�YP��@U����@V9�F��@W�|��}@W�E�+�@W��d]�p@W@�)G�/@W"�;c�@V�y�u��@V�yV�@U��![�@U�g��Am@Ub��ذ@US=���@U!�*��@T�)(c&@T�`d]�Z@TR�T_�@S�&0Dgl@SS��`�@R��C��@Q�6��@Q��Ǣ@�@R�����@R�>Uܧ@SŁ�ph@To�+�@U ��aW@UD�%[˞@U������@U������@U��� k�@T��И�U@S�pb_ö@Sp3��v(@SpF�ci@U�Vͱ�@U�9�҆3@V"ΙI7}@U�P�c�@T&"!��@Q��X8�@L֘�T�@O}�Ty{�@Q��ʥ@P��UL@O��ۜ�d@H:?�U��@KO�B(�@M����@L�|�e�@G�Qs�n}@G����@I
��v�=@J���qP@MV��|@N��y8�@O?��H�@P;{��'@Qu�v�H�@R?9���@SQ��a�@S�`�%[+@T9E@�<@T���C@V1�D��@V��KR��@V�_b~uK@T�FF��@S��Ǐt�@Ty�mi&x@Tr�Hh�@TZ8�^��@T�K���@TH*�=F@S�;�@Q#��3�@Q�ѭ�9@R����0@S�$��a@T�`�8@U]��i @I�Y���@J���f�@G{~9�@D��l�{@D��.��9@F�~B/�@H0�wʤ�@LZ�m��g@N~��I�@T >/�@U8�&?b�@VQ���2�@Wm�)@W�6`�м@W��EC�A@WW�(�@W ZY��@V����k@V���:�@U������@U���Y`@UVU�Ǝ@Ujp;=
0@U%t���E@T�w��1@T�Y��@TJ.��'@S��M1�@R����Lh@Rf��W�@R��)��@R'����@Ro��e"�@S [ �L@S�����#@T�ء�L@U��@U�K5�/h@VZF{<�@V� Mp�Y@V%-�Ӿ @UT�V�A@T'ԓ��@S���1�@Tw�%�0�@V<�� F5@U�([�uS@VEi)��@VRu�E@Uj���@R�<$�h@Q%j1���@S�`�@Q�/Z(@O���;�+@Nkn�{�@KH��f>@MY�r�A�@M���rԯ@L�����@Gֲ��Q`@HN���%@I����$�@K[���@M��wZ�@P!�G�=�@Pt��U�@P����@QJ��u]�@R���|@Sr���%@S���
�@T(��y�@U,�~��@VE�����@V�0��5�@V�@qʫ�@UG�3Tz�@T7;;!@T��5,ۯ@T&�3��|@S�6�&�@T���-��@S����"@R.@s�@Q���Rv�@QKBj��3@R�T�!W@Sޖϧ�S@T�7��e@U]��i @I�Y���@I�n�ɜ�@G1R�=@Du�ٰ��@D����1Y@F.3�H@I�3���@LZD�x-+@PvjEt�@TQ(4p@UG`�^�@VR/�J3@WR� �@W��F]��@WWwݨ@WWm��r�@V����@V���Pg�@V�ŚsA@U���o_@U��-�m�@Ucm�� @UH�PM�4@U�p�� @T����@T���T5@T�{�@Sq8Q:w@R΋m�`@R<5���@@Q��W�I�@R>�p=#@R�_���e@S0xh@S�G�95@Unā@V&���x@V�bjL�@W��eG�@V�z�I�@V5JH��y@U#D'S��@T�Qԣƥ@T�2w��@U�T���@V�W*���@V�	�/@VAO��x@V
�AH�@V�D�@U�'��-@Uj��|{@S�Y{=-�@QL.�ac@O2�*��@NYr���?@JuV3&�}@L�(j&�7@K�,�]�@G�m[�@G�=����@H�q�;�;@H�O�fx @J��� �@Mj��Q�@Pw�5�8@Q�^}�h@QP��@Qq��q/�@S����@Sv�h��@S�j\zh�@T$�t߶k@UL�$��@V��+A��@Vހ���@V�X�6t�@T�u��@Tv�}�E@SB�A[�@Sb����x@Sv����-@Tj3!��,@S
l��Ar@Q�h����@Q|���:@P�wA�'�@R���3A�@S�#Gz"�@T�v��z@U]��i @I�Y���@J6unN�@F��f1�@D�L?	�@D��w@Ga�e���@L��	�{@L�*�G�@Q#s���$@T%�����@U9"<C��@VJ9R���@W#��U@W���u@Wi��Y�H@WHsZ�k�@V�+w�W@V��׬ƥ@V��ב@U�3�`T�@U��M��@U���
�@U8���� @T������@T���T6�@TD8�]��@S����e�@SL���"'@R�G��@R�s=�@R2��V�@RG�L��1@R�ƺ�=3@S?�)�=�@T	u�jO@Uu�2���@V����%@W&H�u�@W3�:7�,@V�YF��@U�X폱�@U�${�h�@S�̥}�@P�P��Ԧ@VB�J�@W:��c�K@V2�11�@V;�~TQ@V=�I�@U����@U���@Tot�G�9@R��+fq@Pa�O�@N�\��}@N�q�C��@I����\�@J6|@��@G��A�2�@K%*:��@Ko{`Z�@I�e.�=@HZ�HC2�@Jy3#�	�@L���zl@Oّ��@PF�hDr.@P�m���%@QXȾQ@S8I�X,h@Sx5�]Ϲ@S�0�e�U@Sݗ�J@UxSc��{@Vn9�@V�2�@V�vx���@Un�*�K�@U���?�;@R��>=�@R_���T?@S�3���@TI@R�����,@Q���6D@Q� �1�k@PW�/��@RI�*� }@S���"S@TȂs���@U]��i @I�Y���@I,�h'U@Fhpc���@C�^�@D�`�	@Ii(��@LLL[oȔ@L��v�a�@Nˈ���p@Tv�h��@U.M�@V1��D�0@V�~)�@Ww���R�@Wa���@W7(���@V�S��@V|Q�v4�@V<cZ��@U�+�2�@U�rֳ�@U��� @U(Ѱ��@T�ڡ��@T�{O��@T�1���@S��	��@R�+��o�@R'#I��@Q�$/��@Q۝@���@R" ����@R��P1�a@S<,-�ͣ@T`�F(Ly@V �k�@W��k�@V�&j�HM@V��L��@V��γթ@VkpŒ��@Sf����@O�Oݒ @Q3�|�@VZ���u@WW_(Z�@V.�7J@V�{�Q{@V����c@U���o�E@U�m�,�@TCI"	�@Q�IN�0@P�6u@M@Ŋc�K@L�Q:dig@KH@�5@K(}R��s@L�ZWX�O@MK9!.յ@M�m��؉@JN��O�@IRO����@J 3��vL@L��X�@P)kF���@P��5#�@Q����`@Q��{�Э@S�l�ʜ@S����q@S�JcI�@T�P�_��@U~qo_�@U��L��@V�;�h@V��5H�@V�f%)2�@V���Ζ�@U9ng-E@R�AD~��@Sw*w�@T���p�D@R��9�;�@O��ܖ|@P7q���@P&2�sV�@R�e�.�@S�rp��@T�w%y��@U]��i @I�Y���@Je�-��+@FF�HI�9@C|U� �U@D���@I��{�^�@N@�Bj��@M�����@P��z ��@T��p|�@UV���@V'���e@V�>"(`@W{z�'(@Wm�G��@W�Js7@V�oB~=�@Vw�&�3�@VQ����@V<���b+@U���0�@U~�m�}@U��i3@T���br�@T4mF��@S�kʐ}@S�`���@RA��ŰG@Q����A�@Q��1WT@Ql�
�t@Q����#l@RIHF��@Sr['�.@T�|��7?@V���fa�@V�ǐ�&A@U��V�@T�`���q@Ud�bu@N�4���@Ploke�@T���-$�@TUS��?@T�m�>�@U��i�(w@V��o�@W��!@W 'J6}@V �,�ϯ@U�+%�7@S��6�u@QC��o@O�ϘEXe@Ku�x%��@HY�#�t@J�qw��=@H�
0���@J�~��a@N*V7��@O�ԅt�@@PZ&I�5@I��"^�	@J��c��@K��Ăn�@O�8���@Q��E&�@Q��A=@Q�T-�RU@S7����h@T[�`@T�9�m@UUIb�@@UgN��D�@U?�8�3�@U�7��My@V'���@V>@��s@Vd�W؟@U[B�8�@R����_@S��%m�@UDi̖c6@T��Ȕ@OV�(���@P9����@POl�p�-@Q⃯Ab'@S��F^�7@Tǉ6L4�@U]��i @I�Y���@I��n²�@E��K��@C�ė�s�@E'��Ay@NH��@Q!���Q�@Oc ��k@PF��4I@T\�%�@T��'�J	@U�rK��|@VՏ���k@We@4R�@Wc�Ӂ�@V��9 &�@Vߣ�_�@Vt rx�@V~�����@VplHCj�@Vd�n�C@U*�i�ո@T���E�#@T �c��@S���iw�@R�W'��@@R	-h�@Q5AZؕ�@P��@�!v@P���@@P������@Q2ٽ���@R^�T���@S��@U�R����@V��O�@VO1ضO@S*��y�@C�g�V~@L��w�A�@S�;uĿ@S]]�es�@SC��49e@T�8J9@T��N
�W@T��m"�<@V��ݯy@Vi�,�x@VD:`�@V�Yސ@T���@Sg���<@QπS��@Ow�,q,@M�`�=�x@J�7P�Ӑ@J�]cQ@J��m�O@M:O�X@Ne�@Ogn탷@P�P�s�@O���?�@Jy���(@J���^H�@N�5��u�@Q?���@Qa �
O@Q���Jo@S*�\���@T7k���@T�K���!@U2A�O�@US)Y��K@U#Z��@T��]�n�@Uɋ�*w@U�
Kj@@U�4P��@T-10L�@Ro�1�\@S�(d@V�����@U�� �|@Q֟�O�@P6]�/@PZ�Ŏa`@Q�G�wMV@S��y�.�@T�\�t�Y@U]��i @I�Y���@I��YUQ@E�J�B��@C��7i@E#��RdE@Q��B��L@Q�N�@N�2[�K@Oi�o���@S{�V��@T璖#��@U�2͔@V��P���@WM"��@WS�r�<@W ��~[@Vޥ��0�@V����@V�1�ͤ�@W<�}@V����س@V��q��@Uc�Pт�@SU�I���@Rq	�']@P� `4��@N���~�@J�d����@L�nk@M��	�Ę@O-��c�M@Q)6��@R�:\׋@TԖ�f�@Vb� >�5@V���I�@V*���@H��	@GC�J�a�@S�l����@S%����e@R�A�̬K@Sk94��@S�n-/^=@T ��v�@Tzv��@T��1��@U��+w�@T_�&�LO@T{V ᄖ@S�b	' n@P�&-*�y@Pb:�e�@O�A��=@J�]���@Hm���<�@JHi���@LR\	V@MnB�D��@N< ~]�%@N�����@P}�d�@QZ��@QP�Nlt@M��t���@L��y��@O��M@P�k7�=@Q�݌���@SJ;�	l�@Tl�G@Up�T}t@U\dK@Udr���@UF�p�OP@U ��|G@U����/�@U�4o�W�@UexW��@S��ʂ��@Q�ڙ�@U*�n��z@WR�2�c @V`�}
�@T�)��@P�� �=@P<��&�u@Q�W @S�[���@T�|6�`�@U]��i @I�Y���@J2Jaħs@Ev�&s�w@C}᜽Z�@Eo�L�u@Qly�@S�h]�@Nl«��@O���=�@RH�u�܋@S�4���@UL{&{��@V_���?�@W+f��@W*W���W@V��v�?@V䙫숨@V��7,�K@W�T�H�@S��|��Y@Q.��F@R��A�כ@R��D=�6@S�@��A@R�L.�$y@Q6�w�e�@L��<jt�@G{���@F�hЕX�@IJ�d&�@L~�~k@Q0a�з9@T@�B�?�@U�ٙ�H@U���.@V6���u@T.�QYW@;��R(@Mϳ��: @S ��8@R�"\iT�@S7�	Gy@S��f>�&@T�%�@Tu2-s@T����@T���V@U��<�,h@U ����@U*~��@S1Y%�o=@NȚ[��<@O����8@O4���%�@I�|�v�@I!t���X@JA� ���@L@�=�@M n�-q�@NI���j@N�0l�;@Pxd�FQ@P�Ħ�a�@R3��P6i@Q��bL�*@N�CU��c@M6Z��@P�"UZ�4@RL�0@SD����@T|����@U-���	@U}�:J	�@U��2�p@Uo�*ˣ@T�$�K�@U��
�P@U��d��@T����"g@R�ʕ��h@R:�F@U�vo�@@WxȽ�9@Uܝ�@�@Q�)�k��@Q��t/(@P�?_�I@Q�Lhч�@S�s"���@T��X��@U]��i @I�Y���@Iv��V%@EC*�+K@C1,���@E2nQ�_�@PZ.O��Y@SSX�l�@O�LS��@N�¯F@Q�v�x�@Q2����a@Tڍ���u@V�/�5@W����@W~L@V��o��7@V��D~�w@V���k�K@U4p���@Q�4�*@Pښ:M�@P=�V��u@M�أ�:S@ND��xM�@K�<�腛@G߽���@E��`��@F~���4@F���,h�@?@����@3���c�@-��eE*@2��¦�@3���t��@>vR��$=@A�6�J�5@:�h"��@AmG Ă@QFƋ�]@Q�bj���@Ru�(t8�@S8WC�@S��Z1�%@S����r�@T���
�@U�k� @T��u�@UX�c�7%@U�+O:o@Toj?*�W@S�]�p/@MϏ�ō�@ON�Z�"�@N�[w�@M��V9�5@K1KE��@KV�?�Q@LJK2/X@Mbk�@N^�a�,@@OPIt�_@P��y@Q"w�/��@RP��@R��u���@PT$@M/�V�_@M����#@Q���M�@Rq�E\��@T!"�+7@U#��$۰@U����^�@U�U���@Usop�%�@T�'9ٱ�@U/�hDJ�@T����@TR�w
�3@R�)1�t@Rޭ�0�@V���U��@W�v�ޔ�@T�q
@O����F@Q�jn�g�@PM���V@Qx	�?�@S�L�j��@T�� ��
@U]��i @I�Y���@J���8@EDX�8 �@C'�j<��@FH����D@R%��)�@R�(|���@Q/죂�4@Mq�3$9�@R���nM@R��Dy@S�>0gM@U�]�2�@V��JL�@V��'��P@V�l8�u@Vy-����@V,�2L�!@S���Э@Oꑪ5�@O�!1r��@P:�#vֻ@M���͇@M\C2�L@LM<��ӳ@G�ϙb��@E�0U��@Cw���k@>/�I�;@7��|D�\@4۷/y]z@1]u�W@ �|\x��@�qu�f�@"6зD�@-ːb�@9���D��@NT{���@P����t@Q�} ̢X@S�A�X@S�����@S�{����@S��Щ�@TeM�g��@U1
�a0@T������@TQ�G�
�@U	d�&ݝ@Sc ap\�@R�1�W @N��	kd@N���"�@M](��N�@Jk��S��@K%�h�@K�S(߅@L
�u]6�@Mp8���@NC��Z�@O��?+@O�c�H�H@Q&���7@RI�q�@SS��S�@Q[�W~0�@Ph�wD�@Nx�'x��@P��\�a@Ro��pu@S1�����@U;;�Q�@U��B%�@U�ZpZm@U��E,@U�D����@T�\�N��@TQn�|G%@S��g�;p@S4ȯI�{@S������@Wo�`�`@WW!�Ɨ^@R��\2@L�>���@R�a�2{�@OMԐ�L�@Ql;]8c@S��ۑ7@T�˩��n@U]��i @I�Y���@H)��GY<@ED�M7c@C���@Jp׆��1@QL0��Ȣ@TP;�@R(x�^�/@MF��u�@Pi�x���@P]=�&'�@Q��t�?�@T��V׍@V��4���@V�
��@�@V��/M!@VW�Kc��@U��M�;@Q��!_�@NO�	�b�@L�H}���@L�͙/�@H�9�݄�@K-K�ظ@I��_�D�@F�s�ʅ@E��[uz�@Do�iհ�@CKK�@=�Y!mK@<d�K)��@?9�M���@:SM�9@4T��ǯ�@1�=Z��O@7�
��Z�@D�D�P��@P!ڸa�@P�$E��Y@Qh�9�~@R�5�N)�@S�^�]@S����`Q@S��[�@Ss=X��@T�!*�@S�7����@R�K)�X@R��s�@S�{���@P�L�i2�@K��念@MF�#A�@L�[椳�@K�X��@C@J��/@K�%��z1@L^UN�r%@MA�'�[@M����BM@Nz�"lC@O�e�yQ�@P��_��@R%&�Y8�@Sl��P�;@R�[mED@Qw#p�x@O�
6���@P~�JD@Q��NS#@R-�4�@T��U���@U�Ƙ��@U����1;@U�e��m@U����@T[R���l@S��$�H@S�(�:�@S��(��T@VH�l@W���;�c@W0�@Q�E�a��@I�y/) �@P�_\G]@O��%r@QVw��'@S�v�ь@T栋�pL@U]��i @I�Y���@Ie�$1�@ELb�D@D.ή%�`@N�"�X�0@Rv1���5@T^���@S�V5Cn@NF����}@Pq�Up�@OfBB��W@S��	�y@R��a�[�@VF�\�#_@V���`��@Vw.#^L@V;�D�@Ua��W@R҆�� @P���3ZG@MKJ�Bb�@J�t�KoI@H�� 8�@G�!��=@G���{�@G��hʂ�@H_ ���`@H�
��
�@H[�i��@E�����@CB{�@D
S[��l@EX�V.�@G��%�q@H�^�� i@G��p��@Ko�}s�@Ọ�	�@Q ��Q��@Q��2�!@S���)@S]&x��@S���@SL�e@S�p�Uy@S�}����@S�!�-�@S<�i �@R��@S��^�e�@P� ��@J��1��#@Lo���S@Jͨ���@J�H/��@Jw��z5�@K�qoS�@L9���Np@M v��҃@M���q4@NAd�7��@O�%�3-@P���8�@Q٧X���@S{	�+�h@S�~�Ά�@R����@Pu7C�m@P�ݬw9M@P����T@Q��"bW@Ts~���@T�2��k@U"�7¾�@UqF�ޓ@U�{<��4@Tؒ'Jj@T|N���O@Q�:X��
@T�j���=@W�ʆ0@W���@V�n�ʯH@Q����c�@D�|dPI�@I�\�e��@P?B�B@QB=M��@Sz�#~X@T�X���d@U]��i @I�Y���@G���Elw@E�P1�@Ds��b:@QTqс*�@P��}i��@Tz��e7@Up�V�@P�h�#@P����T?@R�;)L@T9����@RK*���@UTe"?�@V�u���@V�?FN��@V+0!=N�@U3m�@@S^/{�@Q��5��t@OF�����@L{:w;@I� Qgx@H��5Y"�@Hj�ꎠ`@I�{ݔ�@J�J/�&e@Iz���Q�@Ip�H[@Hav�9�@E�G���i@E�Ԧ�~ @E�\2���@G���N�@IC��\@I�O�:�@M��|��@PJ����@P��Ua�@R�'�@SBX|r|g@R���.�@R���jD�@R�xmzs@SM����i@S_�^��@R�o�<f�@Q�����K@P�FM�p@Q�U�M�%@QE�7�@L��E��@K8x���P@I�?�W�@@Jp ��0@J���9G%@K:�1�@L��t�@M"�:�@M�����@N(��j@N�nH�@PF�[���@Q���]�@S���$�@S��6Q�@S<�� '�@Q~�Hr��@Q�@]L6�@Q��,�9V@Q30�:�@S�m1�q@T1Qh��@S�����@S�|���@U����:x@Vjw�.{�@U��(l�@S(x��%@V�
7@W���x�9@WR�,�@Vm����@Q���u�@D�Eܩ͜@HQMWG�@P�n�'B@QJyjq�L@Sl�RӴ	@T狓�"@U]��i @I�Y���@H����@D�Z�	��@GB΍ �1@Sl�Z�@P/[x�{0@T��+�a@Uk�.&F�@T9/��|=@TLB�ӟ@T#��@S�Za*�M@S���?�i@T`�i�=@V��		;@V��G�/}@V@�{�k@U_��U�]@S����T�@R`YH�@P5LѦl�@NbK���@L'�5yR�@J��r�d@I��`�]�@I�׸�k@K�Զ	�@J�ȖAL%@I�*����@G��A���@F3|�n%@F>:��/s@G�<��@H��j:@Jc�v��@K]�J��@Ml�τ�@O���#O @Q�3@A@Q�~D�*@R����@R��/�@S9?��{@R�iu@R��+�`O@RSU̴��@R�=�(��@RK�k��@R��#9@Q#�����@O����@O! ��e�@M]�7��@L�$�@K &���@J� ���_@K'���#@K������@L�X3�	�@M�ӻ|"s@N\�[��{@N��W�A@P'��\@Qnxs^�@Rո�b_�@S����{�@S�>��ن@R@�;@R���@S4�`��L@Q� U�,@SD�6��@S�k <_�@S�_��@T�U�ҁL@V���F̈@W)n�k��@Vh�ak[@V�D0�@W)���(�@W~��R�S@W�kDz@U�<�el@PY�	�rN@E���zI�@F��9�@N����V�@Q�-�-@S`��S��@Tܸa�@U]��i @I�Y���@G���Y�@D2���H@Dl^>��@SI4b�ڈ@Sp�,��@T�`Bd,@U<7aۋ@T���
�@Tqvվ��@T{��@S�l��`�@SDK��GJ@S	q�;�W@V����a�@V��
ɵ@V6��4!�@U��@iV�@T���"�@R�Z��@P�*"b@O�9�V@N,�XN�@Mni��@K��Hq�@J���4� @LF>	�W�@K�G�`��@IW�h(�@HKV{�|@G<6�;@GDgC�H�@H\����5@I ̭�@JlV}�@KuL �@K�O��`�@O���Z�@Q*{�Sx@Q��]�ϸ@Rī!&�%@R�/-m�#@S�H	20E@R�#�NX@R�L��@Q@V�A�!@Q���P�m@Q
�\f�@QZW���@LӨ���@O΍�Y�%@O1+�}�(@L�>d�� @K�(��I @K	`�\@J�|�Y�@J��U;�}@K�7ђ�@LuoD0��@M�.��@N
��T�p@N��b�K@P(��*@Q"n���@R�7�M@S�s����@Sٰ&�ܴ@R�Ҩ�@R�r��ӓ@S>9~}�@@R�5	@R�P����@Sl>���S@TN���)�@VZk�i�@W/�8B�+@W_�)�@W���!@V����|@W9&�Fm@W��Z�@VH,e��@T]���@J����@F%�T�7`@B� N}r�@M�XTK��@P�ł@S\�>Αz@T�ˀ�u@U]��i @I�Y���@GԁM1l�@C��\�c�@C��wj�@Q�	��@S}s���[@T�O�(3�@U���@Tu ���@Tj?	?qD@TG`���@S߹[��M@ST�n��_@S֪�0�@Wq73�@WU�P�e@VLs�o@U�f�o�5@T�h��D�@SB��$@Q���X2{@PɼX�.�@P����@O��r3gK@N����@M�[N�Q�@L�g�S@JS����@KST�1`@I��yr1@I>j��@I/����@J5�-5D�@J�/�I��@Jŏ��1�@K{���M@L��LX�@O���U�@P�*��H@Q��$���@RY�ET��@Sf�����@S����_@S��0 -@PG}Ğ7B@O�Ik�zD@Pʇ��}�@O��z3[�@GlO��X@L�<,C{�@O!�&��_@N|Q'��W@L����c�@KyW�p9Y@J���L��@Jbn zI@J����@KG}��@L9��Dk�@M�(kt@M���5�P@N�f���@P���@Q�?��-@R�5����@S�4$,�@T*���$@S�&@�'@R���gg�@R­g3�@S���Q@R����<I@S�A���@U����3@V��5U�w@W5��M@WN���U@V�p��@Vv)l��S@V@@��7@UW����@S[�����@O�����g@FO��$	N@Fw.����@B�q�YO�@L�H�rr@P���P[@SR<�2�B@T��"�hW@U]��i @I�Y���@G.����@C�i�^�@B�.�&r�@O�����,@Q���I�@T��@T�~R�S@TiߍL@Tp  �W@T]�1��@TWM�}@S���>��@T�??B�P@V얐��@W7k�rx@V�>hd@V�+�մ@U��z>�@S�$� �@Rf���I@R2�U+!@R�&-s@Q�^s�c�@P�� 2��@Qp_�N�@Q?�UW��@MڿU�S�@Ll�M��@L���	��@K�  �@K����͍@J��"�~}@JҳKqC@K�MK@KĚ���@M��+֣@O/�:��d@P9��G�#@O���Mu@Q4��L��@RN�Q�@S�K�q��@TӋh��@R ����7@QKUH-��@Q7B@O(��t�X@G�8e7@�@L�}��-�@O�M�8�@N�NgS�L@L�9��9`@K���� @J�*2u�,@J�!3�a�@J��ۣ@K38�S��@L�Pap�@L�E�Hy7@MW�]��X@N��>q�@O~�� '�@P��\�(@RzP��i@S���$��@TA�R#D�@S�$"4MS@R�Pk;p@R�hr�,N@S*����@S�E��?@T�e���@VAz��c�@V����Ä@V�~	0��@V�z�1�@UlQ�&�a@Rp�]D�@S���!@Q��o�@Oʕ#et�@G07�S�@E���/0@Fa8RaŐ@B�C>��4@M���Ͽ�@P� ��[�@SB�גd:@T�-`J�@U]��i @I�Y���@E��(�[@Ck����@B_,[��@Nj?�N��@P#����W@T¥P.�}@TVY0U�)@TI��@T� ߩ�@Tm���-�@T��W�@T�J�s{@Tƒ���w@V�>"�@WY'��@V��xH@VM8��B�@Uu�j6-�@T&���	@S hr�E�@Sk��£@R� ���@R�J����@R�򏉇@R G�7}k@Q6����i@P�F�)p @MR,��@M���@Mኴ�P@L�>����@Mgw�@K_l$ɫX@JB�[\��@J})�:h@Lξ�$�@M��$:@N�%���@Pǲ�@Q���� @Q�:3�k@T��|<�@U��v��@SH�l+8W@Q�uz`�@Q�L��&e@O&��wG@H��fAK�@N�|��+�@PF#�d�@O'�N�X#@MQC.�p@LE��@K���@J��R��@J���\C@Ka�O��@L&����@LǩN��@MrC'�@NJ�l�s@OmȺx�@P��m�#}@R`��rj�@S������@T��'�{�@Ss�3�+g@S���@S3~e@T�y_1�@T�n[4��@U��n��@V���	�e@V���e�@V�:bۤ�@U~XNx`-@Q���%@Oa�~��@Q���� �@R9�l���@L�6��/@Fz&�N��@F��'�@F���a�2@C$��Њ�@Mi&��]@P�ؠ,/@S7l4E<@T���H@U]��i @I�Y���@F���tf@C.��X�@B��e�W�@L�d+ �@JB��M@R��-a�k@TdL�_8@TB�_� �@T��ɤ@Tx u@T7$��5(@TR<a(Y@U�)�9�@Vz+nR�@W\�u���@W	�z@V��{��4@U���.1@T������@S�g7h�@T#�&v�W@SL���@R���B�@Sǘ�@S"ѷt@R�d� �@Q���@Q Ț�@P8����@N�@`��@P���ɝ�@Qs�G�V@MrWibjL@JO���nl@I���l@J��d�X�@Lr�r�@MTm�1տ@N�Q.��@P����K@R{p���_@U0l�N�@U�b���@R���}'[@PU+UȽ�@J"���@EV�oZ�@K�.�J�@P,{���@P�j�pcp@O�Ý���@M�Z0���@L�� ��@K���K[@J����@J{��]�@K!bч��@K�_:���@LV��L��@M*�=-@N*�p�@OdR�r@P�M!	�@RsNh�@S�o��@Uh9'"t�@SQ�#R�@S�zK�O@S�b�>s@T��A/��@U��Gt�@V�ܳa@V�ʙ4�E@V��U8@V%dE�U@R= w���@O:y��m�@M���G@N|:�Y}�@MR�&ߊ�@Iã��'�@GY�@Hsm��Z@GM����@C���<|@M���A@P��
_��@S>b��x�@T��	���@U]��i @I�Y���@F����{@C
�I�_@Bc>�!�m@LrY@�@Ij	c<@O���w`�@S�(5��@TG�x�G@T�%�?�]@T����T�@TiM���@T�Ԇ4C�@US_1t=�@Vv�R�)<@WL�((�@W<LA�AM@V�1"r��@U��2�@U	��!W�@TP��y@Th��΋�@Sr�c&ɥ@R�|���@Rl���[@R"a�G�@Q�����@Q/�*�9�@QC
اQ,@Q|�G�@Q�^t�%@QV��(@RS��-@P�8�f�@J����G@J��߉�@J����@K��~��@K���)x@LW+����@N�{H�)�@Q������@S��u�/@T�5}@S���f@K���q�@D�? k@G0��/�@M�F��n@Qoj�g�@QrO�˗@PX���ڊ@N�ɼ�Q@MS0��@K�&���=@J��"�S@J��_I{@J�?��@@Kk��@K��s��@L�"�˩,@M�h^�@N����E@P��u=m@R=8�ك�@S�Mz�9�@T��	B�i@T��p�@TN@�^N@T��-���@U���Q�@V��7���@V�Ѷ�*�@V�g��P@Vx��-�@T�wV��@L;�:n!k@JVi���P@J,��r�@JHi��Y@I�%�C�9@Jb� )�@I��1���@J0X���@H0�B�(�@D� ��-@Lb��Y@P��t\y@SH�,K�@T�T�@U]��i @I�Y���@Cc�Om8�@B�}�	�q@Bp�
C�@N����[�@I����-@N���H4@S� |��@TF#��9@T���ul@T�/����@T���K@T�=Z@U��%�ߨ@V|Dx�s@WG�C��@Wg�b^X`@V�t��Zu@V@����@U3pP.��@TG%uG�@T��;���@S�\*@R"�iٖO@Q�X[�c�@Qߌn�@Q�%�I��@Qb� vn�@Q[��+Wq@QG�G��@Q�E��@Q��^)}S@Q^��@P�2�H{m@L��_���@L	SrZ�@J��UH�5@I���=8@Iگ0��5@I/�����@I�����@M�:��@Q�{�ϼ@TZ����@T(j�*@J������@FD
�N��@I*��@P.��w׭@RK�_m�@Q�_P�ES@P��%��@O��ڃ-@M�B�A�E@K���@K3���G@Kb���@J�!����@K)�u�@K�>�@Le:ӝ�m@M��E�B�@N��/+@P�V�䇳@Q��"`�@S4ͅ��E@Th�fW@US�̞[@U�M"�@U��,�[@Va�o%�@V�Xk��@V����='@V���,/t@Vr�9@Rk����@Jq�0�s�@K� �]��@K�Q/�(�@J�M �.�@I���v]@KM���@K�1q/A8@K��+��@H��t�@ESUF-�T@L�����Z@P�$S��@SK�Su��@T�xQ.�@U]��i @I�Y���@G	�E�y�@B��F..K@B1�A=�@N�ٲ�DU@L�5��@Q������@S�H� �@TEάa}@T�h��h@T��,�ӵ@T�dk@U#�J�x�@U�zJ��5@Vf2���`@W!���h�@W�d�i!@W*|3���@Vv5�CT�@U�?�@T���H�@T���@S���oG@R��@3�	@Q��O�8@R;��(!@RA�S���@Q�� y�G@Qh���3(@QKI]�m�@Q]<N�>@Q>����K@Q>��~�@P].��@Pl���W�@N��/�'�@K��VS�/@H���4)@F?JLk@E{� -@E��F�8@H��[2P�@M�+C��@PF�lPT�@Nv�Zk�@H����@G�c�_@K�%�x@Q#%ޮ=(@RO~�h�d@Q�j#��M@P�� ���@P )<9�@NBߌo�@L�l��@Kx�.A�@K�1�w`@J� b�C@J��Z���@KvZ��F@K��k��	@M3~�Q@N�_��E@PW�$�`@Q�Ҵ��@S)-��G@T�L�g�@U�a*D�@U� ���@U�a{��@V�%��>k@V�U&*NE@V�O�Z[I@V�ۀ�	K@VGnggƓ@Q|�5��K@JwZ\9'�@J�����@K�)��1s@K��:�c�@Jet(&p@Lʿ-o*�@MJ���c]@L l���@H�����@FJ�ܨ�@IiX	�{�@P�(�$��@SQ6�x&�@T��@�g@U]��i @I�Y���@C|r(�@By^� d�@A�����@H]-��fs@S	�x!H@Sb/�P��@S�j���3@TBy�*l�@T�L�a	0@T� �F;Q@T���8@UC��c��@U�3l\$@VY,谭�@W���/�@W���s@WT�\v/�@V��W��@Ve+خ�@U�B2��@T��\F�@TDYl1�@R�`��@R�t���u@Rܾ<7�@R�T�8�m@R3B��#@Q��B�o@Q��)"�X@QUTB�-�@Q^])[�[@P��J�@Op�òG�@P��N�n�@Q��p��@Q����@L�:�L;�@HG#�؍@G�pu�@B6j�i{�@C���gI@F`�}�s�@GQ^mŏ@C�4���@Itk[zLT@J���0K�@M�-�T�@Qo��5`�@R��6@R��ȴ@Q����@Pi�b��@N�7�j��@L�����@K�\^&P@K[�.eK@J�N��qX@J��$w@K<v&G�@K�4L|�{@M����@N�
<�%0@P^V�@@Q�=�@S��m�*@T;�s�Zx@Ux���R{@V.�b8�p@Vm��2�@V�9�˛�@V���7�@Vw���8Y@V�3��S@Vxكv	@S�ӏ,n�@R.��v|�@Lp��H�5@I:�ʢa{@K��p�@Kt�d�E�@N5j�@N_?����@K���|�@Gh����@F���%��@H��ۣ`@P�Ofp-�@SeyrI@T��Л�@U]��i @I�Y���@E@�AN�a@Bc^��aW@A��?d�@C큼�ť@S�
I��@SS���<@S��|+=�@TGĝ@T�L��a@TӪ��F9@T��d|�%@UPr�N3@U�D����@VBU�1L@V�](!�@W� �zzI@W����5-@W�^Sh@V<;��a\@U;��H�f@U��L!�@T��F�-@S3�j�|@SGa��@S����s�@R��eL�@RWl৫"@R ̈́�SZ@QՌ�'��@Q��˽׸@Q9ג��G@P�+���@PK��@N����@P����@Qv��q7@RbJ����@Q���%�t@Q��ӆQ�@Hi8��0�@B�+���}@B�ا�E�@G���X�@D�~g�[@IΜ����@Lm��W)�@O�щ��@RV"b��@S'f'�(p@Rn��@Q�ќ�$x@P�M�<x�@OPI���@M�)Yx�@LGh��Ul@K��AK�@J�R��G@J��eࡕ@Ks� �@Li3_��@L�u*��@Ne���@PF���KT@Q��pA�]@R�J����@Tj���@U¢��i@U��@�@Vgk+�Zc@V���ńc@VNNBp�0@VWF�;�]@V�?�J|'@V+)�!i�@T�M K�8@TX�R(*q@SwH	�Յ@LbPj0O�@J���n��@L�V���,@O"��DTh@N=��	@I���G4@E��"�@@E����@HQ�3͡�@P�m���#@Ss���/�@T�ބ�C=@U]��i @I�Y���@G�tj@BL���@@���'8�@B�a܊@Rn�m�.@S@��2�@S@3�-c�@TD�u[@T�#q��)@T�帏<m@Uzwռ@UF*S�Z@Uđ��@V+�|;�@V���Y@W��0�,�@W�+��S@V���T<�@Vs���M�@U�̥F
@U�XO�X@T�n#�]@S�D�rt@S�\�@�@T ���T@S3�M��@R~�YIO@R:����@R )��;@Q����]�@Q��(�@P���m�'@P���@N���T��@M��N��@K�	h���@Kl%@0q@J�Yh�,7@O�Pd�p@ND yq�@A��%�@A����@D7\0Y�@H�����Y@I�6��e@MO�6��@P�T��n�@R�T��:�@Sa*K�@R՞�}��@R
e9�2[@P����@P7_��^@N9u)��x@L�S��@K^�O��@KO]Ji�y@Jr�gr]@J��{�@K�����@M42�5��@N�&��@PE����@Q{���-�@R���vNx@S�Τ�0@T}�4jH!@Ua��s�@V;�ֵ@V0-�'�@V}z5M@V^]fT�@V�\�f�4@V�p�RB[@U���@Ut���$�@UC�]V�l@Q6�租�@J��]��@M�$Z�D�@Oᆎi�'@M�e8@I����@DM5�]�8@D��Uk�r@Gl��G��@P����Y}@Sz~�w�4@T�!�͋@U]��i @I�Y���@B��A#�@B1��ش�@@�5�=�N@B���C��@QP�E�}@P�^�W�@R��4�^�@T?�;o�@T�����@U["�;@Uh��@UZ�]�)@U����W�@V ���K@V� @W�)b/�=@W�7�'h�@T�|����@V_��@V/���@U�l���@U="V�@S����!@Td;����@S�bO�+@SN��ɟs@R�%��@R��ﺫ�@R%*ɢQ@Q���/�@P�mA��j@P_����@O��d��M@N^�9�S�@M/�8�@K|�΃�@J*�d�i@H�e@���@G�`��@J�gU#�a@N�S��@Jn:y�\`@BZ7�>��@Gؼ�x<@I=���[#@N�&ֶTx@Ql$8��a@S4)дW�@S�Ei�a@S�ѡ�@R>�Rm}�@QqG�2��@P����]@O+03�3@M���ys@K�g%��@K	�;++@J[��|��@J�;r]"�@K��P@M�"4w$�@N�j�� @PiD���@Q{����Q@R�w�:�@S�4�%�@Ta���T�@T�TK@U���	@V"��@U�PFmՉ@VVd�Z�@V�����@V��pZ,�@V'��]@V]|�0;@V�ډl�@R��х@J���-;�@Ky�B*�@MVFzA@M�l�8l�@H��Ł�@B� �@D�!�@Jt_�~�@P��90x?@Swt���@T�wZ[@U]��i @I�Y���@E� �$hE@B�}D�K@@���.'�@A��(b�@O��[E��@JJ���@R��zЇ@TA�=tY�@T��T
(@T���ŶL@U!"�I@Uc5 �Y�@U�^8�6@V�l��X@V��=�@W�-��ɛ@W�spA4�@U���Z�@V��i��@V]uSg@U�s��Gp@U2���@T3ZC�e�@TC�, �@Tٞ�H@S��*Mg@R�(T�z�@R��8��2@R/5�/S@Q�%�iqc@Pѩ�T�9@PI ���@O��Tֱ�@N�0��@Lay-�5�@K;A�qI@If����@G���4@Fi7��u1@E5��!�@E����H@E=E~�p�@E�P��@G<�9c5 @I�d;k�@O�N�B]@R�����@S�{�_uH@T]�oL�@SV�|Dc@R�n�q@Q�MӠK�@Qյ;	@O�{���@N0����g@L��[(k@J֒kz8@J_��ĵ@J��8ɇ@K��6SFw@M�����@OW-��nX@Prsz���@Q�>���@R��=�B�@S�7Q��@TSa+<@T�*ϒ"�@Us�^�,H@U�O���,@VP����@V?(4�?[@V� ��qy@V�*3��K@Vi�6*�@Vc�pf@V�;�X+�@U�*M@J�6���@H�v_�Z#@Isq-k @L!����@G(��&��@B��P�p@C��neÃ@L�"�p�@P��zE��@Sn����@U �S�'�@U]��i @I�Y���@E�=a��]@A����%@@�즻�@AQ�Ǟ�]@M�|<W @GEk �"�@R��,�u�@Tqd���@T���l��@T�!}R0e@U�F��:@Um�����@U�Ҡ�&�@V����@V�L�3;�@W��g8#@W���/@V�R�$��@V����@V��S^��@Vo1��t@U*�n��d@T�8
�;@T|T��T@Tp$z�q�@S����i}@R�6k;�@R���@R\;*�݇@Qq��l��@P咅���@PF*�L��@OX�̊�@M�ԇ�1`@L�Xb�f�@J��
@�U@IO%!]�@G�H�_�-@F/:�n-@ET���$�@E	��I=@Er�?V�@F�;=ړ@GA�)���@H��5�>@@P :��@R�O���@T���I	@T-� � )@S��]���@R��� ,�@R@�27Q�@Qyh�ϵ@Py�5�?l@N�����@L�����@J��]��m@J*���S@Jʪ�+k�@L8D+l!@M�HNƛ@O�aA;��@P�H��e@Qi�I�u@R�7*~M@S�A�M��@TT%�mQ�@T�W���u@Usf�)@Uˍ�S�@VKۈ�C@VH��?-�@V���)@V�����@V�	ئ�@V�2�-@V��g@Vn�y��@Q�]z��@G���?@G1;�b2�@H��[�!�@FA���7�@A�V��r�@CR��K#$@L����2@P�_�}�@S`,ԏg�@T��V@U]��i @I�Y���@BΤ�b3L@A�cUU@@�R��M@@��^un@ISደ�@E��l#�@Q_���} @S߉@�WT@T�
�d��@T��X�`	@U,7U�@Ueɥ��@U���p@Vc�,g@Vb����@WaAVݬ�@W�'D�@W�t7��@W(`��@V�n��^�@V.ؿ�@UwT.��!@U����@T��K1��@T�����@S�,N5@SH	{GX@R��3�0z@R����9@Q��*�u�@P�JN�H@PZ�r���@OB9d^�@M��4V?�@L�V4){@JL�R&l@I1h���o@H1E����@F�#�y�@FF�#���@F�[���@F0��v,@F��L��@Gx��x�@H����7e@PM��,s@SY���
�@T`#��@T@*ء&�@Se�u�ă@R߱����@Rf�7�m@QĿG��-@P�Ο�7@O_��Z'@M!�%�@K8ѿ�@JK:�X @K1�h��@L+�;;n@M��3t��@P#��x@P�I�Z<@Q8�	�+<@R���ZM@S��=:@TF��N�@T�7��@Uc�ښ�@U�'�n�@U�.�z�-@V70��O�@V�P��%@V��}�s@V���ܰ@V����@V�;��O@V�ԥ��@S	B
�f@G����q@F��a��t@F�,aJ�R@D����3�@@��L�rW@B�H\Z&@L�s!r�o@P�[��<�@S[^��#@U XwN(a@U]��i @I�Y���@EƎ���@A�z�W@@�R�K<X@@G�m3C�@Fi��GEE@D��%�?�@Prf!eY@S���m@T�g�,�@T�f���*@U<���D�@U��֑�m@U��y(@V�4�z@VT�c�@�@W#8��9@W�U6N"�@We�;M@WE',��c@V��-e@V1����-@UfZqِ@UE�R�@U���@p@T�	Z��@S�O D�@S	����@R�r���@R�(Y��{@Q���}�@P�b�_@\@PE�w�[@OA�9��M@M�/tf�@L�"답@Jq����@I���L#@I׷Cu�%@H~�D��@G�[�評@Gw����@F宸ۅ�@G]�mU�g@Hu���@IН6܈=@P���y�y@S��>�I@T��	�;�@T]�����@S�֨��D@Rس����@Rz�.�27@R��@QV! $�@O�8�q��@M����@KiK�p��@J�-~���@K'�Λ@K��nʕ@M�Jk�@P���@P̍NVn�@QBd�n��@RK�[�@Svz`J6@T*#��H�@T��ҽ�@UAc�;(�@U�h�i��@U��>�0�@V�*M?@Vc��]Z�@V�v��@V�-7�@V�m ��'@V�ךr�@WuCa	��@T�(�<�@K�_�@Jw�bO@Hg�;b�@C��4�5b@@z�3�@CPƍqL�@L�Ʃ��@P����O@Sf���P@T�4�C�@U]��i @I�Y���@B���Ϻ�@B*�]֚e@@K�l�-@@?���T@E5�W7(�@D���+@N^&�`D@TO� �d�@T��W#�@T��!�@U<9}�@U�b���@U��U��@V��f
�@VZ�{A@WAC�@W��c�d@W����@W��F�c�@W���+@V:�&���@U�� .�@U�zlj#@U5Z��dK@T�>�>@S��wX2m@SC`�-��@Sj�@R|�H@Q���d"@P�AM�*I@P$LBȬ�@O4�e*T�@M�Kp�	@L{8�ۄ�@J�Z�ٞ�@K;��	=@KvPʼ@J����a@JbĞT@I �u+�%@G�����@Hd��z�@H�j��@J彭@P��~� @S������@T�O��R[@TK�ۓһ@S�1�bU@R�B:��`@R>�=.@Pꍄ�-T@Q!ͫ(��@P7�ɵ�@N<�_��/@L:���H@Jcb Z�@J��<�[!@LS�'�0@M��V�0@Pw|��@P��'��)@Qg_�44@Rd�wW�#@Se����@T4i���@T�P�.�}@U'3�MW@U�����@U�4�@V�ר�@V[R�\�@Vx{CQ��@V��	�� @V��ǻ�+@V�/��@W$�xؼ@U��R�@M��<Y@MN�Y�T@J���Ȇ"@D����@A&���;�@F^����A@M�E�ie@Q ��:zT@St�pN��@T�q�%@U]��i @I�Y���@F�W�1@B_Y�0V�@?�F%��G@?���]){@C�Ů�j@CX�xd�@K����y@T�T{��N@T��8�fJ@T�|;��@U8Rn+��@U����p@V �**�@V�H(��@V�t��M@Wd�*E@W�6ʐd�@W��W�$�@W܀e88@W'�K;�@VQ��|�@U�z�A;u@UƝ���@U/�-~+@T}��\@S��2��@SF�3��@SD˘)�@R�k�3'k@Q���%�5@P���\@P�@0_�@O�j�	@M�iJ�Y@L��;�@K�����@L�����w@M;<�2�@M7��5`@L��"�X@K7��"@@I>�3� @H��_��@I� x�@JlJL�#@P�8!��@TI� �@T��`@T��!�@Sgm����@S�\Y��@Q��ȁ:�@P�z/�@Qgq�
1B@P>���m@NF��r�@Lc��{|@J�����@J��2	U�@L�I6Hi�@M�$�8�@P �w@P�j���@Q�B{��@R�m���@SA qa�@T&��I�g@T�N>'�@U7:ڳY�@Ua7�D�@U�'����@U��J�K@VE��`vk@Vv&dB�%@VnbR��,@VeJ#1�K@U�%���`@Ue@V��W��`@Q�[�!e@O�V�d;�@L�ê�@J�58�q@Gz� t�@H����^@N��� �@Q5C��!�@S��|�h@T�y���@U]��i @I�Y���@B�f�Ǭ@B�bϘ�@?��{\�@?]K&X�@B)�$���@B�W��@J�Ժ�y@TK9�@T�1�lL[@U5� H)@U?�5e@Uڪ��s�@Vd��@V=�2o~8@V��GV@W��=B�T@W�Q��X9@W���;��@W��|H�@W�ܩ�@V��#X�t@VCf3��@V/�'}�@U=_��W@T��,r5@S�
�ٹ @SL�P��E@SU�% �@R�O��@Q���}@P�/o�n�@PF�C4�@O*^���@M�Μ��A@MZ�j�U�@L�r�r�@N�*���@O�ni�@O����@O�k\�@M%�3�С@J��Bq5}@I�ΐO��@J
�ړ�/@J�;��S@QS�Q�H@T,�7�I�@TT��-��@S��m�@S���t@R��c��o@R�T
��@Q�RP��@P�]z0�@O�V���@N�q�s@LI�w���@J�z~��x@J��!�	p@Lz��1@N���k@P"���	T@Q��y��@Q�n/3i@R��F`�@S6]�j��@T��w��@T�b�G@UEf��k@Uo���Ȼ@U��@pf�@U�^�8Tm@V9�׾F�@VT�m��@Va7 ֻ@V<��tqc@T9(k/�@UXײ^�Y@V������@S���
s@Qdg�%��@N|$�+�`@Lc��?�$@K��!��@JW��~bR@OB=�N@Qv.(��c@S������@TϬ;�i�@U]��i @I�Y���@H�� -@CJ:n�h@?�q�lFk@?F��]@A���(��@B���֚<@Iu|�m&#@Tw�7�@T�6�]w@U��GM�@U]@��3@U�����/@V�%Io@VI�����@V�i�ͳ@W�Ps�w@W�/��e-@W΄V4�@W�G瀨@W{���@V��1�v�@V}���t@U�'�TE@U�W��8@T(d�@S��[`5@Sy�� @SZ¶1�@Rv�`Pf�@Q�n���@P��&ʚ�@P5t$�h�@OV��7@N"�t�@N"��Y#@N�c�(]4@P����?@P�0�^�@QC���@QO�'�s@OJ����@L����@J����@J���$��@Kz��@Q��ն��@TM2���@T�h{߬@S0O�bc�@Ruqc��[@R���@Q��̽p�@P�ך�@Oaz�Y�0@L�-��-�@K�~�כ@K���g�@Jd%�`��@I��k]q�@L*l"��@N'ƕ��@P=f±�a@Q+$�[1@Q鍦�A�@R��@SR%=_7@T���h=@T��[�G@U]s�e'@U�M���@U����=@U�Y����@V�ڗ�@V8<�~�@VE�bz�@V"pi�#@SγX��@U>\ϐ,�@WV�`��@V>!�@T6uv`e@Q'����@PNq	/6@K�`:qK@M��;�H@O�;9r�@Q�����_@S�X/�9@T� y��x@U]��i @I�Y���@El�o	��@CT��J�M@?��m�M@>�+�f�u@A��Xf�]@A�r8���@E�
�&��@S����@T�����c@U���{@Ug{}���@U�Ľ.�p@V,b�LX@VNk�f��@V�'�y�@W�6�W��@W��w�-@W��6�@W�;��@W"���@Vʡ�As�@Vm����@U�����@UZ�x�&@T}�G��)@S�G�=D@S�����)@Sx��7��@R�J��Fw@Qt	H �[@P�>1;�@P���o@O?d�ễ@N����@N��g)�@OwD;�X�@P�Tzc5@Q��Ss�4@R��7R�I@R5he���@P�>�46@N	�2�w@K��0��3@KJɱy��@K�Az�6s@Qڪ���@Tzp*Lc@T ty#�@R��ш@R.>�9@Qp�]��@P���%�;@P,�&Ǐ@L�J!���@LQ�q[�e@H�F?��}@I/v�9�@I����$ @F� <dY@K�%��@Ln��@P,��|h3@Qx	��@Q����h-@R���\�@SsdA2)�@T,��=@T�N�� @U)N#}�@U}�qj�@U�h7��@U�$'�u@U�ݹ��@U�Wg@VC}�d�@VGQ9�@SK�+�*�@T�[�*�_@WA�S�8@W�3�`@U�1��@S@>1�=T@P&�{x�@O^���a�@O#�񬰌@O}&Q�!8@Q�I��@S��{+#Z@T�H�	�@U]��i @I�Y���@BȚ�@<@C��CO�T@@2rt4@>2GR��S@A���O@A��E@C�a�e0@M.�A�@Tx�.k��@U���	@Ux̢J_@U��9��x@V&��|�@VVn���@V�L��8@W�G��@W�M���@WŇ�f�@W������@W-�9(Y@V�%#
Z�@V6�?bO@Ut�z،t@UF	I�Q@T�*0�տ@S����7(@S�R4M�@S� ޤl=@Rq��#�S@Qv	$��@P�^��@P$�U3�u@OT���@OYK�U��@P�M߽@P}'Ld1@Q���'�@S�M���@S��^���@SZ����@Q�Dzy�@O�=�@L��&F��@K��}�?�@L�����@R*�R��@T~��=@T<�u�5�@S�����A@Qq.Ϧ�H@N�7��@MN�ި,k@I�k� @EK�-� @?�m!@�3@8̦6a��@BI�[k@G�nނt{@G��7��@Kۆ6�Y�@M�te1 @O�N��=@P�9*�r+@Q�(M��@R��iا�@S�Y	p�@S��<��|@Tn�U��(@U�,N�G@UM'���t@Ul�	ߓ@U���0@Uwh�%p@U˲�[�@V�bV��@V3- |��@SĻ0�SW@T�g2��x@W]����@W�&���X@V�(y@@T�lOG9�@R���@Q O���K@QX�'��8@OSEL�B�@RQ�L�@S�c2+'@T�2��@U]��i @I�Y���@G������@C�O�4%�@@2��g@=�Z�$Q�@@�P����@@d[�/@BUF6�z]@G����@�@S�f �#T@U1{-@U�4���@U��H�3@V"?ӔM@VT�)�P	@V�K�l�l@Wp��,D�@W�
�[@W��.���@W{ce���@W;���@V���
?k@U�\1��@U|B�Ĵ@U��k%@T���o�@S�rARa @S��$g@SQ���cy@RKU���N@Qf�ٶ{�@P�!}��g@P.�i��@P�6��@P��S�@P{���S@QLv�iC@Rɏ<��#@T	�h��D@T�W���@TWή�@R���!â@PlbO��@M��vd��@LB�#J�t@MW$��@R[p����@T�v��z@T�y�T&@Sw�J�@Q�F�m{@P%9���@K�$�>�@FBn|h��@;�����@7L��k��@56�6��@5�����@?^��%9�@F7c�~>�@K'�=�`@L�X���@O"���@P|���@QJt�#�@R ����w@SI����@T�a�?'@TH4x�-^@T����1@T�M`���@UZ
��@UfY|g�@U�6���#@U�-�� @V&>��]@VO|�*0@T�烝�%@UY�J�]@WZ�n���@W�~�M@WH9t"@V�R}@S���:��@R���"j@RN�Q�~@PF/_�e@RAn'�&8@S�86��L@T�/����@U]��i @I�Y���@E��-X:-@D8�a�W%@@��Sq@=�y��@@"�S!�@?��z��@@j";gr�@E5ƛ&Z�@Q�N�-�@T�ȅ��@U~�!U��@U�Z�� 7@Vdn�6�@V]ƴ��@V�}[��@W`��Î�@W�7�Դ�@W�AfA�=@W��R���@W?��H��@V�5MV�)@U��>nX�@V�ȃ�@U�8�+@T�J��*@Sꊂk@S� fܕ�@S,Q�g#@RS~>S�}@Q`����@P��v���@Pkӑ�@P_�GgVX@P��p���@Q��m�@R5�m��@S��W�3@T�❍�i@Uu��.S@U|)�J�@S���]h3@P�xΞ��@M� g� u@L��ޣ@N6�1�@R��(2|@U#�V!�@Unǆ;�@T��~«^@Q9|�@MhzT�-�@J�0����@E"@�9�@:&����@6�)�n�@5��_r� @5%�
���@6?@�@Ab���VE@Iy�r6s@J�X�"�@Mԝ�==@N�i���@P_�{��@P�|��@Q�Y�3o@ST(�Z��@T�>�2�@T�׈�V!@T����@Tɇ����@T�Ѐ�c�@U�9��3@Uꍟ� �@Vʴ���@Vz�3^�@VJ|v
VP@V�Q!�q�@Wz-�J�@W��j�\@W�T����@W���A�@Tɶ�P�X@S��U�ۃ@RˋZ��@Qo����@@Rg����@S间Q C@T���QZ�@U]��i @I�Y���@C ��jm@D�hԌk�@@\���@=�/�Z�@?"�Jg@>���5@>��Ƨ�@Cs�M/�@I����W@T��i�gI@Uiz���h@U�⏵n�@V�����@VX�D�߃@V�*���@W[��^�@W��Xe@W��᪜@W��]՛�@W+���@V�Ỳl(@U�)��g�@VP���u@Ump��@Tr��[sS@S�eJ�@S�%���X@SL1��@Rc@�ܙ�@QV��@X@P�bY��9@P�9�$@P��?�@Q/Z�@Q��}��@R�>>�4@T0�����@Uy�eԞC@V<��,�@U���UP@TmX3F�@Q{_�i�G@N�LU��@M�d!��a@OG��3�;@R�e��.@U�%�Q@U�sc�gc@S�G0���@O�D�m3@KJ@��x@G���	�@D]m�SxQ@8r��k�@5 ϙu@4!XS(�@45Ҍ�� @4��=�o@6L�B�t�@B�R���%@Ej8��$�@K(<w�+ @KE�����@K^�@	@L;|���@N"%����@R����@S��&P�w@T	�,�@S�F>-�8@S�7��=@TB�͕^@UDC'��@U�
)ac@U�Տ8��@Vq��ؽm@V�p���@V�B��[@W����=�@W�մ@W�!��x@W�I���@U�-�\J@T�,/��@S1�Ղ@RJ��O@R��4�~@S�a8���@T� O:�@U]��i @I�Y���@F�O�z�C@D������@@�{��;@<�h��@=� w�V`@=e��Q�w@>숓[@A�Qٺ� @I	ɻ$ّ@S��O�mx@U`�����@U��\��@V)\�'@Vr_�Tx@V���I7l@W\Lx��/@W����Y=@W�I�/�@W��	�g@Wj�P�@V�J���@V�_�Q@Va\G G�@U[M�Uk'@T}~�vP1@S�_�
�@S�-��m�@S�M�X@RN��g@Q`�Y��@P�T�� u@P�A��;@QA�Py�@Q�'��@RnMG�@S��>u�0@T���-�@U�N&J:1@V��^@VLPQC¨@T�{��?�@R5Ek��@P�I���@N�X�_G@P?�q�R@R�Q����@T��1�@U�ĩ�Y@Rpk�#�@M�j�>_�@JTn�N�@F�=jp��@A�\��*k@6��s[Ws@4%�^Tt?@2��3�@3?��B�@3m�I4@@3�&�Z�@7�s��@?����7@F����@GQ�5k5�@G��	@IIk�>�@LL[��@Qa+����@S��Y@SN�H4@S]܆��@S}>=5M@TQ
o���@Tq�K5aD@U�eS� @U��Mj��@U�����@V�čH�<@V��F���@W��Ɲ@W�Ea��@W�Q��Dd@W�h�j� @V��J�@T~�F,K@S��g�N@R��̏�L@R���x6L@S�8s�r�@T�Ct��@U]��i @I�Y���@C0G;B@ES���0s@@�����q@<��<^��@<����	@=� ��@>S�E��+@@m��-��@E�v,@!k@R�� h�@U.��;@UƬr��@V7i�XU@@V�٬���@V�iL�ߣ@WN�g�&@W�䬍LK@W�6�s��@W�D���@WU�a��@V�!E#�@VPZi`@VKt�X�8@Uaᄳ%�@T����f@T��4@S����k�@S����@Re�|@QiE�p4@Q2϶V7@Q%�[���@Q�*�93@R1T��=J@S���I�@T4��n�@U�[�@V`F� @W���p@V��NNL5@UF�o�}@R��o�;@P���z:K@P-	+�%|@Q���x@R��0�@R�����@VF��P�@S�%i���@N��{\'�@I�輐%@E���ia@>[���͝@4�z���@3J��J"1@1�&X��@1�h���P@2Sx
O@2r�k��@4�7��d@?�Q� "�@C�t��ګ@G�����@Gq�L��@H���w=�@K!bYc@Q::�U=!@Re̢�@Q�s���@R�ϧ�#@R���@S���c�o@TL���@T�N�׵@Un5�@U�i �9�@Vmx�Z�3@W��Ѕ@W���`@XX�Ҹ@W�9y3, @XD�|@Wv~�t>t@U��J�@Sb�-y�8@R���ێ@R�Gt��@S��ĥ�@T�`'��@U]��i @I�Y���@CR���@E�^�lu�@A/�- �h@<��HS�@<�E1W�@<�n���@?t���@@��7���@Fe�<N�@R���h�8@T�]��3@U˧c��@VC'�Cd�@VLFq1 @V���,;q@WC��@��@Wǭ�p��@W��X-`@W���[]�@W|@�L�)@WM.��@V���[@V:i�\�@U�;���0@T�J'��G@T �U�@S�����@S	!���O@RR���@Q���u{@Q=DBL�@Qg�;0@Q�cKݸ@R�+�!s@S��í@T��][�@U�0ɖ�P@V�BC�'@Ws����@W2Ԧ�@Uu�Ӡ��@S�qK��@P��c��O@P�4����@Q�ɣ^��@R� z�4@R��t�/@U�Z��V1@T�^ۺt@O%",���@Im,��@Do�H=@;���XՀ@3j����S@2���0}@0�Y���@0�� N#c@1���<!x@2	
,?=@3]NT�n,@9��İ� @A���z�@H#k�� �@Gұ��_�@Hd銋�5@LᏐ=�c@P�YN.}�@QAS��@Qa���h�@Rr����@S���~�n@SP��L�+@T�����@T.\g�u/@UR��q4�@U��D�{�@VcoLe�}@W<���p@W�*Rd��@X��؜1@W�)QP@X"�'�@W�%�"@V�7f�8@S�+g�%@Rֶ{�d(@R��%1d{@T����%@T��(M�
@U]��i @I�Y���@CiF����@E��]�@A���t�@=6}�A�g@=M�W`@=�4�1@@5:{�k�@@k9�A��@E΂��8�@R�'��@T�jL<�@U�ڎ�V�@V@w?灭@V�;�*�@V�U��D�@W1b��_@W��;�@W�B�Z�@W�뵰@W~yV)�@Wm�y��@V�`2�Q�@Ve뫩E@U��#�53@T�@ԗ?E@Tȍ|O�@S��6��}@R�K|q-@RZ�&g�.@Q�8�E�@QR��%��@Q���###@R;�(J�@S/ݫ�W#@T)(�=@U��9!@V3��z�@W*nCyz%@W�F)?R@W.-D���@U��X��@SR�F�@Q8�$�N@Q8_�Ce�@R���y�n@S�훷�\@R���	E�@U�]Ԋ�@@S<�t�@N[��H�@H�B!7�u@CP��'�@8¢ׇr�@0���9��@/ݗ֊�i@0�&#=�@/;R3�@0\l�I�\@1Rz�@3�K���@8��еu@@ezL�}8@G1��a��@G���Ym@H��`��@M`C�#��@P,�6Z�@OO	ԁ�@R�~�1@R[x�_[�@T6�lҹ@T>����@S/:-��@S�A�wY�@T������@U���j�'@Vt_ִ�@W�>5�@W�)�EHH@W���@W�O���@X*t�z@X�3�@W\�5y,@T< ��J�@S�nl٩@R��5�J@T�s	~�@T�F��ڠ@U]��i 