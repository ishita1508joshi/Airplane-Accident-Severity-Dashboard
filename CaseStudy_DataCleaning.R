#Loading Libraries
library(readxl)   # For reading Excel files
library(dplyr)    # For data manipulation
library(writexl)  # For writing Excel files

#Reading Excel File
aviation_data <- read_excel("D:/Ishita/Class/PG Diploma in AI and MLT/Semester 1/R Programming/R Case Study/world_aircraft_accident_summaryC.xlsx", sheet = 1)
print (aviation_data)

sum(is.na(aviation_data$Longitude))  # Counting missing Longitude values
sum(is.na(aviation_data$Latitude))   # Counting missing Latitude values

#Removing rows with missing values
cleaned_dataset <- aviation_data %>%
  filter(!is.na(Longitude) & !is.na(Latitude))
print(cleaned_dataset)

#Saving the data set as a new excel file back to my directory
write_xlsx(cleaned_dataset, "D:/Ishita/Class/PG Diploma in AI and MLT/Semester 1/R Programming/R Case Study/world_aircraft_accident_summary_cleaned.xlsx")

#Crosschecking for missing values
sum(is.na(cleaned_dataset$Longitude))  # Counting missing Longitude values
sum(is.na(cleaned_dataset$Latitude))   # Counting missing Latitude values
