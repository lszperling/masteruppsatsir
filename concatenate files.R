file_list <- list.files()
for (file in file_list){
    
    # if the merged dataset doesn't exist, create it
    if (!exists("dataset")){
        dataset <- read.table(file, header=TRUE, sep="\t")
    }
    
    # if the merged dataset does exist, append to it
    if (exists("dataset")){
        temp_dataset <-read.table(file, header=TRUE, sep="\t")
        dataset<-rbind(dataset, temp_dataset)
        rm(temp_dataset)
    }
    
}
write.table(dataset, "../output.txt", row.names = FALSE, col.names = FALSE, quote = FALSE)