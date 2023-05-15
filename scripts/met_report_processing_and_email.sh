#!/bin/bash

# KM Hall
# This script retrieves met data from the SEV Field Station Google Drive and processes it through 
# the R met scripts
#


# set to path on computer where you will download and process met data
cd /Users/kris/Documents/SEV/Projects/Meteorological_Data_Processing_GDrive/



# Runs the R scripts --------------------------------------------------------

echo "Running R program 00"
Rscript /Users/kris/Documents/SEV/Projects/Meteorological_Data_Processing_GDrive/programs/00_user_setup_met_processing_gdrive.R
#Rscript 00_user_setup_met_processing.R

echo "Running R program download_SEVFS_gdrive_met_data.R"
Rscript /Users/kris/Documents/SEV/Projects/Meteorological_Data_Processing_GDrive/programs/download_SEVFS_gdrive_met_data.R

echo "Running R program met_raw_dat_to_csv_files.R"
Rscript /Users/kris/Documents/SEV/Projects/Meteorological_Data_Processing_GDrive/programs/met_raw_dat_to_csv_files.R
#Rscript met_download_files.R 

echo "Running R program 01"
Rscript /Users/kris/Documents/SEV/Projects/Meteorological_Data_Processing_GDrive/programs/01_raw_hourly_met_processing_gdrive.R 
#Rscript 01_raw_hourly_met_processing.R 

echo "Running R program 02"
Rscript /Users/kris/Documents/SEV/Projects/Meteorological_Data_Processing_GDrive/programs/02_filtering_hourly_met_data_gdrive.R 
#Rscript 02_filtering_hourly_met_data.R

echo "Running Met summary quarto report"
quarto render /Users/kris/Documents/SEV/Projects/Met_Reporting/quarto/SEV_Met_Report.qmd

echo "Emailing met summary report"
python /Users/kris/Documents/SEV/Projects/Met_Reporting/scripts/email_met_report.py