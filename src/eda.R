library('ProjectTemplate')
load.project()

# Calculating enrollments based on gender
# plot(as.factor(df_clean$gender)) 
gender_plot = ggplot(df_clean, aes(x = factor(gender))) + 
  geom_bar(stat = "count", width = 0.7, fill = "steelblue") + theme_minimal() 
gender_plot


# Plotting enrollments based on country
# plot dependent of country
country_plot = ggplot(df_clean, aes(x = factor(country))) + 
  geom_bar(stat = "count", width = 0.7, fill = "steelblue") + theme_minimal() + 
  scale_x_discrete(guide = guide_axis(n.dodge = 10))
country_plot


world <- ne_countries(scale = "medium", returnclass = "sf")

my_countries <- c(unique(df_clean$detected_country))

world_modified <- world %>% 
  mutate(my_selection = ifelse(postal %in% my_countries,
                               1, NA))

country_map = ggplot(data = world_modified) +
  ggtitle("World map") +
  geom_sf(aes(fill=my_selection)) +
  theme_bw()
country_map


# Identifying most number of enrollments based on age groups
# plot(as.factor(df_clean$age_range))
enrol_age = ggplot(data = df_clean, aes(x = factor(age_range), 
                          y = prop.table(stat(count)), 
                          fill = factor(gender), 
                          label = scales::percent(prop.table(stat(count))))) +
  geom_bar(position = "dodge") + 
  geom_text(stat = 'count',
            position = position_dodge(.9), 
            vjust = -0.5, 
            size = 2.5) + 
  scale_y_continuous(labels = scales::percent) + 
  labs(x = 'Age Range', y = 'Percentage', fill = 'gear')
enrol_age


# Identifying no. of enrollments based on employment status of students
# plot(as.factor(df_clean$employment_status))
employment_plot = ggplot(df_clean, aes(x = factor(employment_status))) + 
  geom_bar(stat = "count", width = 0.7, fill = "steelblue") + theme_minimal() + 
  scale_x_discrete(guide = guide_axis(n.dodge = 2))
employment_plot


# Factoring based on employment status types then summarizing the data
emp_stat = as.factor(df_clean$employment_status)
summary(emp_stat)


# Factoring based on highest education level types then summarizing the data
edu_level = as.factor(df_clean$highest_education_level)
summary(edu_level)


#plot(as.factor(df_clean$highest_education_level))
employment_plot = ggplot(df_clean, aes(x = factor(highest_education_level))) + 
  geom_bar(stat = "count", width = 0.7, fill = "steelblue") + theme_minimal() + 
  scale_x_discrete(guide = guide_axis(n.dodge = 2))
employment_plot


# -----------------------------------------------------------------



# Displaying data & its dimensions
dim(video_stats)
head(video_stats)


# Plotting box plot
# boxplot(video_stats$north_america_views_percentage)
box_plot = ggplot(video_stats, aes(y = north_america_views_percentage)) + 
  geom_boxplot(fill = "steelblue")
  #geom_point(aes(x = north_america_views_percentage))
box_plot


# Summarizing the data set
summary(video_stats$north_america_views_percentage)


# Visualizing total downloads 
view_download = ggplot(data = video_stats, aes(y = north_america_views_percentage, x = step_position)) + 
  geom_point(aes(colour = factor(total_downloads), size = 2))
view_download

asia_transcript = ggplot(data = video_stats, aes(x = asia_views_percentage, y = total_transcript_views)) + 
  geom_point(aes(colour = factor(step_position), size = 2)) # scatter plot to visualize total downloads 
asia_transcript

asia_hd = ggplot(data = video_stats, aes(x = asia_views_percentage, y = viewed_hd)) + 
  geom_point(aes(colour = factor(step_position), size = 2)) # scatter plot to visualize views in HD with respect to asia
asia_hd

high_views = max(video_stats$total_views) # calculating the highest views seen 
high_views 

low_views = min(video_stats$total_views) # calculating lowest viewership 
low_views



# -----------------------------------------------------------------------------------




head(ques_resp)
summary(ques_resp)


correct_plot = ggplot(ques_resp, aes(x = factor(correct))) + 
  geom_bar(stat = "count", width = 0.7, fill = "steelblue") + theme_minimal() 
correct_plot


table(ques_resp$correct)


count_true = length(which(ques_resp$correct == "true"))
count_true

count_false = length(which(ques_resp$correct == "false"))
count_false

total_resp = length(ques_resp$correct)
total_resp

true_percent = (count_true / total_resp) * 100 
true_percent

round(true_percent)

false_percent = (count_false / total_resp) * 100
false_percent
