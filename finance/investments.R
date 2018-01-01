library(dplyr)
library(ggplot2)
library(tidyr)
library(scales)  # for percentage scales
library(data.table)
data <- read.csv(file = '~/finance/investments.csv', header = TRUE, sep = ',')
data_table <- setDT(data)
grouped_percentages <- data_table[, sum(Percentage), by = Category]
grouped_percentages <- rename(grouped_percentages, Percentage = V1)

# Order investment categories by percentage distribution
result <- grouped_percentages[with(grouped_percentages, order(-Percentage, Category)), ]
# View(result)

# Prevent ggplot to alphabetial order category columns
result$Category <- as.character(result$Category)
result$Category <- factor(result$Category, levels=unique(result$Category))

# Plot the result data frame
ggplot(result, aes(x=Category, y=Percentage, fill=Category)) +
  xlab("Investment class") +
  ylab("Percentual distribution of investment categories") +
  geom_bar(stat="identity")
