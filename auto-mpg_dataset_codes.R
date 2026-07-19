#Q1 load dataset
table1<- read_csv("auto-mpg_dataset.csv")
#Q2 clean dataset
cleaned_df <- table1 %>% drop_na()
#Q3 histogram
ggplot(cleaned_df, aes(x = mpg)) +
  geom_histogram(binwidth = 2, fill = "blue", color = "black") +
  labs(title = "Distribution of MPG", x = "Miles Per Gallon (MPG)", y = "Count")
#Q4 boxplot
ggplot(cleaned_df, aes(x = factor(cylinders), y = mpg, fill = factor(cylinders))) +
  +     geom_boxplot() +
  +     labs(title = "MPG by Number of Cylinders", x = "Cylinders", y = "Miles Per Gallon (MPG)")