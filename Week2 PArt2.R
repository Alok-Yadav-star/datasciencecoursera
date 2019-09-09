complete <- function(directory, id=1:332)
{
  filelistdata<- list.files(path = directory, pattern = ".csv", full.names = TRUE)
  nobs <- numeric()
  
  for(i in id){
    data <- read.csv(filelistdata[i])
    nobs <- c(nobs, sum(complete.cases(data)))
  }
  data.frame(id,nobs)
}

complete("C:/Users/alok_/Desktop/R Scope/R-Week2/specdata",1)
complete("C:/Users/alok_/Desktop/R Scope/R-Week2/specdata",c(2,4,8,10,12))
complete("C:/Users/alok_/Desktop/R Scope/R-Week2/specdata",30:25)
complete("C:/Users/alok_/Desktop/R Scope/R-Week2/specdata",3)


