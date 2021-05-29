# Deliverable 1
library(dplyr) #add dplyr library
MechaCar_data_frame <- read.csv(file = 'MechaCar_mpg.csv') #read the file

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_data_frame) #create linear regression to pass all six variables

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_data_frame)) #determine the p-value and r-squared for the linear regression

# Deliverable 2
table <- read.csv(file = 'Suspension_Coil.csv') #read the file
total_summary <- table %>% data.frame()%>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI),) #get a total summary
lot_summary <- table %>%group_by(Manufacturing_Lot)%>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') #create a lot summary
  
#Deliverable 3
t.test(table$PSI,mu=1500) #t-test for PSI across all lots

t.test(subset(table, Manufacturing_Lot=="Lot1")$PSI,mu=1500) #t-test for lot 1
t.test(subset(table, Manufacturing_Lot=="Lot2")$PSI,mu=1500) #t-test for lot 2
t.test(subset(table, Manufacturing_Lot=="Lot3")$PSI,mu=1500) #t-test for lot 3

