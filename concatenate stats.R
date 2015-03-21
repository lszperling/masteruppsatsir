library(tools)
directory <- "stats"
file_list <- list.files(directory)
rm(dataset)
for (file in file_list){
    file <- paste(directory,"/", file, sep = "")
    # if the merged dataset does exist, append to it
    if (exists("dataset")){
        temp_dataset <-read.csv(file, header=TRUE)
        temp_dataset$date <- basename(file_path_sans_ext(file))
        temp_dataset<-rbind(temp_dataset, file)
        dataset<-rbind(dataset, temp_dataset)
        rm(temp_dataset)
    }
    
    # if the merged dataset doesn't exist, create it
    if (!exists("dataset")){
        dataset <- read.csv(file, header=TRUE)
        dataset$date <- basename(file_path_sans_ext(file))
    }
    
}
dataset <- dataset[!is.na(dataset$Name),]
write.csv(dataset, "finalStats.csv", row.names = FALSE, col.names = FALSE, quote = FALSE)