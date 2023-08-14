inputValue <- function(){
  dollar<-readline(prompt = "Dollar : ")
  return (dollar);
}

convertUSDtoINR <- function(dollar){
  dollar = as.numeric(dollar);
  return (dollar*82.97);
}

dollar <- inputValue();
inr <- convertUSDtoINR(dollar);
print(paste("Dollar $ ", dollar, " = Rs. ", inr))