corr <- function(directory, threshold = 0){
  filelistdata1 <- list.files(path = directory, pattern = ".csv", full.names = TRUE)
  vcount <- vector(mode = "numeric", length =0)
  id <-length(filelistdata1)
  
  for(i in 1:id){
    xread <- read.csv(filelistdata1[i])
    countcompletecases <- sum(complete.cases(xread))
    
    if(countcompletecases > threshold){
      xSulfate <- xread[which(!is.na(xread$sulfate)),]
      xPollutant <- xSulfate[which(!is.na(xSulfate$nitrate)), ]
      vcount <- c(vcount, cor(xPollutant$sulfate, xPollutant$nitrate))
    }
  }
  return(vcount)
}

cr<-corr("C:/Users/alok_/Desktop/R Scope/R-Week2/specdata",150)
head(cr)
summary(cr)
cr<-corr("C:/Users/alok_/Desktop/R Scope/R-Week2/specdata",400)
head(cr)
summary(cr)
