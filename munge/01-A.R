# Load project
#library("ProjectTemplate")
#load.project()

# Example pre-processing script.

# Data set 1 

enrolment = cyber.security.1_enrolments
# viewing data 
head(enrolment)

# dropping unknown values 
df_clean = enrolment[enrolment$gender != "Unknown" & enrolment$country != "Unknown" 
                     & enrolment$age_range != "Unknown" & enrolment$age_range != "Unknown" & enrolment$age_range != "Unknown"
                     & enrolment$employment_area != "Unknown",]

# view cleaned data 
head(df_clean)
