---
title: "Reproducible Research: Peer Assessment 1"
output: 
  html_document:
    fig_caption: yes
    keep_md: yes
    number_sections: yes
---
=======================================================================================

This data set describes the walking (exercise) pattern of one individual
over a two month period. 

**Preliminary observations:**  The subject walks most between 8:00 am and 10:00 am.  The subject's walking is more concentrated on weekdays than weekends, but the total distance walked is greater on weekends.  Weekends are more consistent than weekdays (and start later).

Part of the exercise is imputation of missing data values.  The missing data intervals are spectacularly, even suspiciously, uniform.  The analysis is not included here.  Nevertheless, we impute the missing data according to assumptions described below.
 


# What is mean total number of steps taken per day?
**Boundary conditions:**  288 intervals per day (data formatted hhmm). 
A step = 1/2 pace; 1000 paces for mile (2000 steps per mile).  
An observation must be a natural number &#x2115;<sup>0</sup>.  
Five miles per day would be be healthy.  Twenty-six would be exceptional.  There is no outlying data. 

# What is the average daily activity pattern?
**Boundary conditions:** Strides per five minutes: Average walk 400; Brisk walk 600; Marathoner 900 (stride length doubles).  There is no outlying data.  



# Imputing missing values
Approximately 15% of the observations in the study are NA.  These values appeared in calendar-day blocks. Weekends and weekdays had approximately the same rate of missing values (within 10%).  
**Assumption:**  A missing value is the same as the average value for the corresponding time interval for the duration of the observation period.
NA values are randomly spread through the data (inconsistent with this data).  
**Item Imputation:** For each NA in the data set, we made item replacement by the average value for that time interval rounded to an integer value.  
**Result:**  Imputation by the selected method reduced the apparent difference between distance walked on weekend versus weekdays.  It increased the modal number of steps per day.  



# Are there differences in activity patterns between weekdays and weekends?
Properly, this question should be investigated before and after looking at NA values.  It is possible that day of week is a confounder.  That is, NA values may be correlated with the day of the week.  
**Observations:**  The subject walks most between 8:00 am and 10:00 am.  The subject's walking is more concentrated on weekdays than weekends, but the total distance walked is greater on weekends.  Weekends are more consistent than weekdays (and start later).  



