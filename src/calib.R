library(openxlsx)
library(ggplot2)
library(dplyr)
library(ggsignif)


setwd('/Users/kohara/Desktop/calibration_curve/src')
data <- read.xlsx('../data/22.12.10.xlsx')

master_con <- 1.4 # μg/μl

sample_name <- factor(data[0, ])

abs <- c()
for (i in range(1:3)) {
    abs <- as.numeric(c(abs, data[i, ]))
    }