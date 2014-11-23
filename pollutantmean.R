pollutantmean <- function(directory, pollutant, id = 1:332) {
        
        ff <- list.files(directory) #
        
        ls_files <- paste(directory,ff[id],sep="/")
        table_complete_id<-lapply(ls_files,read.csv)
        global_samp<-numeric()
        for (i in 1:length(table_complete_id)) {
                mydata<-table_complete_id[[i]][pollutant]
                
                global_samp<- append(mydata[!is.na(mydata)],global_samp)
                
        }        
        global_mean<-round(mean(global_samp), digits=3)
        global_mean        
}