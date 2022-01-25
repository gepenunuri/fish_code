library(graphics)
library(nnls)
library(quadprog)
#set data to matrix
x<-as.matrix(comb23_45_67[])
x<-t(x)

a<-as.matrix(comb23_67[])
a<-t(a)

b<-as.matrix(comb2_3[])
b<-t(b)

y<- as.matrix(eggNum[])
y<-t(y)


nnls(x,y)

#set matrix to a data.frame
#dx <- as.data.frame(x)
#dy<- as.data.frame(y)

#mulitple regression function
fit<- lm(y ~ 0+x)

fitA<-lm(y~ 0+a)

fitB <-lm(y~0+b)

#details of lm
anova(fit)
summary(fit)
predict(fit)

anova(fitA)
summary(fitA)
predict(fitA)

anova(fitB)
summary(fitB)
predict(fitB)


#plotting 
opar <- par(mfrow=c(2,2),oma = c(0,0,1.1,0))
plot(fit, las=1)
par(opar)
