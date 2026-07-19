#Q1
#a) load the dataset
table<- read_csv("Tutorial_employee_salary.csv")
#b) display first five rows
head(table,n=5)
#c) display last five rows
tail(table,n=5)
#d) total number of rows and columns
dim(table)
#Q2
#a) display column names
colnames(table)
#b) display data types of each column
sapply(table,class)
#c) show metadata
glimpse(table)
#Q3
#a) count missing values in each column
colSums(is.na(table))
#b) calculate percentage of missing values
colMeans(is.na(table)) * 100
#c) Identify colums with most missing entries
missing_pct <- colMeans(is.na(table)) * 100
> sort(missing_pct, decreasing = TRUE)