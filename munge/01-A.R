# Load project
#library("ProjectTemplate")
#load.project()

# Example pre-processing script.

# Data cleaning from 1-enrollments
enrol = cyber.security.1_enrolments
# Displaying data and its dimensions 
head(enrol)
dim(enrol) # 14394 x 13

# Dropping unknown values from the data set for Gender, country, age range, employment area  
df_clean = enrol[enrol$gender != "Unknown" & enrol$country != "Unknown" 
                     & enrol$age_range != "Unknown"
                     & enrol$employment_area != "Unknown",]

# Displaying cleaned data and its dimensions
head(df_clean)
dim(df_clean) # 1286 x 13


# From the video stat dataset
video_stats = as.data.frame(cyber.security.3_video.stats)


# From question dataset
ques_resp = cyber.security.1_question.response
