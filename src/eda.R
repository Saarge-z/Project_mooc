library('ProjectTemplate')
load.project()


for (dataset in project.info$data)
{
  message(paste('Showing top 5 rows of', dataset))
  print(head(get(dataset)))
}

# plot(as.factor(df_clean$gender)) # calculating enrollments by gender 
gender_plot = ggplot(df_clean, aes(x = factor(gender))) + 
  geom_bar(stat = "count", width = 0.7, fill = "steelblue") + theme_minimal() 
gender_plot

# plot dependent of country
country_plot = ggplot(df_clean, aes(x = factor(country))) + 
  geom_bar(stat = "count", width = 0.7, fill = "steelblue") + theme_minimal() + 
  scale_x_discrete(guide = guide_axis(n.dodge = 10))
country_plot

# plot(as.factor(df_clean$age_range)) # Identifying which age group enrolled most.
age_range_plot = ggplot(df_clean, aes(x = factor(age_range))) + 
  geom_bar(stat = "count", width = 0.7, fill = "steelblue") + theme_minimal() 
age_range_plot

# plot(as.factor(df_clean$employment_status)) # identifying the employment status of students enrolled 
employment_plot = ggplot(df_clean, aes(x = factor(employment_status))) + 
  geom_bar(stat = "count", width = 0.7, fill = "steelblue") + theme_minimal() + 
  scale_x_discrete(guide = guide_axis(n.dodge = 2))
employment_plot


cc = as.factor(df_clean$employment_status) # graph is not clear 
summary(cc)


edu_level = as.factor(df_clean$highest_education_level)
summary(edu_level)
