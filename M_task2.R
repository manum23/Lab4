num=8000
for(i in 1:12)
{
  for(j in 1:12)
  {
    apmatrix3=apmatrix*num
  }
  num=num*1.1
}  ## The price of ticket increases by 10% every year
colnames(apmatrix3) <- c("Janauary","February","March","April","May","June","July","August","September","October","November","December")
rownames(apmatrix3) <- c("1949","1950","1951","1952","1953","1954","1955","1956","1957","1958","1959","1960")
max(apmatrix3)
mnthname= which(apmatrix3 == max(apmatrix3), arr.ind=TRUE)
colN = colnames(apmatrix3)[mnthname[,2]]
rowN = rownames(apmatrix3)[mnthname[,1]]
cat("The month with the most revenue",colN)
apmatrix4 <- apply(t(apmatrix3),2,cumsum)
max(apmatrix4,12)
cat("The year with the most revenue is",rowN)
sum(apmatrix3)
cat("Total revenue =",sum(apmatrix3))  ## print total revenue


