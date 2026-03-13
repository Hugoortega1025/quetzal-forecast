
library(fpp2)

#Read quarterly dataset
Rate <- read.csv(file.choose())
attach(Rate)
head(Rate,n=12)

#Quarterly time series
Ratets<- ts(Rate[,"Value"], start=c(2000,1),frequency =4)
plot(Ratets, main="Guatemalan Exchange Rate(Quarterly)", ylab="Value", xlab="Time", col=6)
ggseasonplot(Ratets,polar=T)

#Quarterly ARIMA model
ArimaMod <- auto.arima(Ratets)
summary(ArimaMod)
checkresiduals(ArimaMod)
forecast(ArimaMod,h=20)
plot(forecast(ArimaMod,h=20))

#Quarterly ETS model
EtsMod <- ets(Ratets)
summary(EtsMod)
checkresiduals(EtsMod)
forecast(EtsMod)
plot(forecast(EtsMod))

#Quarterly random walk with drift model
rwfMod <-rwf(Ratets,drift=T)
plot(rwfMod)
summary(rwfMod)
checkresiduals(rwfMod)

#Read yearly dataset
yearR <- read.csv(file.choose())
yearR
attach(yearR)

#Yearly time series
yearRts <- ts(yearR[,"Value"], start=c(2000,1),frequency = 1)
plot(yearRts, main="Guatemalan Exchange Rate(Yearly)", ylab="Value",xlab="Time",col=6)

#Yearly ARIMA model
ArimaMod2 <- auto.arima(yearRts)
summary(ArimaMod2)
checkresiduals(ArimaMod2)
forecast(ArimaMod2)
plot(forecast(ArimaMod2))

#Yearly ETS model
EtsMod2 <- ets(yearRts)
summary(EtsMod2)
checkresiduals(EtsMod2)
forecast(EtsMod2)
plot(forecast(EtsMod2))

#Yearly random walk with drift model
rwfMod2 <-rwf(yearRts,drift=T)
plot(rwfMod2)
summary(rwfMod2)
checkresiduals(rwfMod2)
forecast(rwfMod2)
