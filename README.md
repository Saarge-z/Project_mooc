# Project_mooc

Welcome to MOOC Data set analysis.

This file introduces you to ProjectTemplate and how to run the analysis and generate a pdf report.

ProjectTemplate is an R package that helps you organize your statistical
analysis projects.

* Install R language and Rstudio.
* Open Rstudio and follow the below instructions


To load your new project, you'll first need to `setwd()` into the directory
where this README file is located. Then you need to run the following two
lines of R code:

	library('ProjectTemplate')
	load.project()

After you enter the second line of code, you'll see a series of automated
messages as ProjectTemplate goes about doing its work. This work involves:
* Global configuration file is contained in `config`.
* Any R package required will loaded automatically from config file in config folder.
* Datasets are stored in `data` or `cache`.
* Data Preprocessing  is done using the files in the `munge` directory.

Once that's done, you can execute any code you'd like.

*To generate pdf report you have to open report-syed.Rmd file from the report folder in r studio and preferably after running the above commands you can press a blue button called as 'knit' in the top bar section of the file display pane in rstudio.*


# Folder Structure

* Pre-procesing script are in 'munge' folder.
* Data analysis scripts are in 'src' folder.
* Pdf report is completed through r mark down both of these files are in 'reports' folder.
* Datasets used are inside the 'data' folder in .csv files.
* Graphs are saved inside 'graphs' folder.
* To manage global settings global.cdf file is in 'config' folder.

For more details about ProjectTemplate, see http://projecttemplate.net