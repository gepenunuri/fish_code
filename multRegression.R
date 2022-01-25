library(graphics)
library(nnls)
library(quadprog)
#set data to matrix
x<-as.matrix(allYR[])
x<-t(x)
x

y<- as.matrix(eggNum[])
y<-t(y)
y

nnls(x,y)

#set matrix to a data.frame
dx <- as.data.frame(x)
dy<- as.data.frame(y)

#mulitple regression function
fit<- lm(y ~ 0+x)

#details of lm
anova(fit)
summary(fit)

predict(fit)


#plotting 
opar <- par(mfrow=c(2,2),oma = c(0,0,1.1,0))
plot(fit, las=1)
par(opar)