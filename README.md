# SEV Meteorology 7-day Report

This report provides a summary of precipitation and temperature for the Sevilleta LTER meteorological stations.

The scripts:
1. Download most recent met data from wireless
2. Process met data
3. Generate 7-day report
4. Emails report to SEV IM and program manager

The met_reporting_processing_and_email.sh shell script is a pipeline that bundles the other scripts to be run. Several of the programs in the shell script were written for general met data processing and they can be found in the [SEV_Hourly_Meteorological_Data_Processing GitHub repository](https://github.com/SEVLTER/SEV_Hourly_Meteorological_Data_Processing).