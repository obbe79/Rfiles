corr <- function(directory, threshold = 0) {
        obs<-complete(directory)
        obs_vec<-obs[["id"]][obs[["nobs"]]>threshold]
        if (length(obs_vec)==0) {
                cor_vec<-numeric()
                cor_vec
        } 
        else {
                
                ff <- list.files(directory) #
                ls_files <- paste(directory,ff[obs_vec],sep="/")
                cor_vec<- numeric()
                for (i in 1:length(obs_vec)) {
                        tab_data<-read.csv(ls_files[i])
                        #p1<-tab_data[["nitrate"]][!is.na(tab_data[["nitrate"]]) & !is.na(tab_data[["sulfate"]])]
                        #p2<-tab_data[["sulfate"]][!is.na(tab_data[["nitrate"]]) & !is.na(tab_data[["sulfate"]])]
                        p1<-tab_data[["nitrate"]]
                        p2<-tab_data[["sulfate"]]        
                        cor_vec[i]<-cor(p1,p2,use="complete.obs")
                        #cor_vec[i]<-cor(p1,p2,use="complete.obs")
                }
                cor_vec
        }
}