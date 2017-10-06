data("AirPassengers") ## accessing dataset 'AirPassengers'
AirPassengers
max(AirPassengers) ## find most profitable month in 12 years data
colnames(max(AirPassengers))
##frequency(AirPassengers)
apmatrix <- matrix(AirPassengers, nrow=12,byrow=TRUE)
apply(t(apmatrix),2,cumsum) ##Returns an array  of values obtained by applying a function to margins of an array or matrix.
apmatrix2 <- apply(t(apmatrix),2,cumsum)
max(apmatrix2,12)   ## finding most profitable year in 12 years
colnames(apmatrix) <- c("Janauary","February","March","April","May","June","July","August","September","October","November","December")
## assigning column names
rownames(apmatrix) <- c("1949","1950","1951","1952","1953","1954","1955","1956","1957","1958","1959","1960")
## assigning row names

mName = which (apmatrix == max(apmatrix),arr.ind = TRUE)
rowN = rownames(apmatrix)[mName[,1]]
colN = colnames(apmatrix)[mName[,2]]
print("Most profitable month is",colN) ## concatenate lines
cat("Most profitable year is",rowN)
ts.plot(AirPassengers)  ## Plotting graph for time series(ts){ts is a dataset}

