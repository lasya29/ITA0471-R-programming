library(dplyr)
exam_data = data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin',
           'Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, 3, 2, 3, 2, 3, 1, 1, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
)
print(exam_data)
selected_data <- exam_data[c(3, 5), c(1, 3)]
print(selected_data)
exam_data$country <- country<-c("USA","USA","USA","USA","UK","USA","USA","India","USA","USA")
print(exam_data)
new_exam_data <- data.frame(
  name = c('Robert', 'Sophia'),
  score = c(10.5, 9),
  attempts = c(1, 3),
  qualify = c('yes', 'no')
)
updated_exam_data <- bind_rows(exam_data, new_exam_data)
print(updated_exam_data)
sorted_exam_data <- exam_data[order(exam_data$name, exam_data$score), ]
print(sorted_exam_data)
write.csv(exam_data, file = "exam_data.csv", row.names = FALSE)
read_exam_data <- read.csv("exam_data.csv")
print(read_exam_data)
