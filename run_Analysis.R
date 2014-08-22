#PROJECT - DataCleaning
# Before running: Configure the Working Directory to that where the Data was saved!!!

# Read the data train and test
train <- read.table("./train/X_train.txt")
test <- read.table("./test/X_test.txt")

# Read labels of train and test
labelTrain <- read.table("./train/y_train.txt")
labelTest <- read.table("./test/y_test.txt") 
labelActivity <- read.table("./activity_labels.txt") 

# Read subjects - train and test

subjectTrain <- read.table("./train/subject_train.txt")
subjectTest <- read.table("./test/subject_test.txt")

# Read features
features <- read.table ("./features.txt")

# Combine Train and Test data, subjects and lables
total <- rbind(train,test)
totalSubject <- rbind (subjectTrain,subjectTest)
totalLabel <- rbind(labelTrain,labelTest)

# Locate measures mean and std and data filter
meanandStd <- grep("mean\\(\\)|std\\(\\)", features[, 2])
total <- total[,meanandStd]

# Insert the variables names
names(total) <- features[meanandStd,2]

# Adjust Activity labels 
labelActivity2 <- labelActivity[totalLabel[,1],2]
totalLabel[,1] <- labelActivity2

# Prepare final Data joining labels to filtered original Data

finalData <- cbind(totalSubject,totalLabel,total)

# Ajust first two col labels
colnames(finalData) [1:2] <- c("Subject","Activity")

# Write the second finalData with the average of each variable 
# for each activity and each subject.

write.table(finalData,"finalData.txt",row.name=FALSE)