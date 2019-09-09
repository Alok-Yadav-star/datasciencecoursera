pollutantmean<-function(directory, pollutant, id = 1:332){
  fileLists<- list.files(path= directory, pattern = ".csv", full.names = TRUE)
  values <-numeric()
  
  for(i in id){
    data <- read.csv(fileLists[i])
    values <- c(values, data[[pollutant]])
  }
  mean(values, na.rm = TRUE)
}

pollutantmean("C:/Users/alok_/Desktop/R Scope/R-Week2/specdata","sulfate",1:10)
pollutantmean("C:/Users/alok_/Desktop/R Scope/R-Week2/specdata","nitrate",70:72)
pollutantmean("C:/Users/alok_/Desktop/R Scope/R-Week2/specdata","nitrate",23)