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
