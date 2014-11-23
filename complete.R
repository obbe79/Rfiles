complete <- function(directory, id = 1:332) {
        
        ff <- list.files(directory) #
        ls_files <- paste(directory,ff[id],sep="/")
        nobs<-numeric()
        for (i in 1:length(ls_files)) {
                
                tab_data<-read.csv(ls_files[i])
                nobs[i]<-length(tab_data[[1]][!is.na(tab_data[["nitrate"]]) & !is.na(tab_data[["sulfate"]])])
        }

        out<-data.frame(id,nobs)
        out
}