library(MASS)

library(faraway)
data<- read.csv("404 data.csv", head=TRUE, sep=",")
str(data)
attach(data)
brigntess<- as.factor(brightess)
bluetooth<- as.factor(bluetooth)
wifi<- as.factor(wifi)
sound<- as.factor(sound)
SEplus7<- as.factor(SEplus7)


## ignore interaction involving blocking factor SEplus7, and higher than 3 factor interaction effect
# brigntess*SEplus7+bluetooth*SEplus7+wifi*SEplus7+sound*SEplus7+
# brigntess*bluetooth*SEplus7+ brigntess*wifi*SEplus7+brigntess*sound*SEplus7+ wifi*bluetooth*SEplus7+sound*bluetooth*SEplus7+wifi*sound*SEplus7+
# brigntess*bluetooth*wifi*SEplus7+brigntess*bluetooth*sound*SEplus7+sound*bluetooth*wifi*SEplus7+
# brigntess*bluetooth*wifi*sound*SEplus7
#brigntess*bluetooth*wifi+brigntess*bluetooth*sound+brigntess*sound*wifi+sound*bluetooth*wifi+
#brigntess*bluetooth*wifi*sound
model1<- lm(time ~ brigntess+bluetooth+wifi+sound+SEplus7+
              brigntess*bluetooth+brigntess*wifi+ brigntess*sound+bluetooth*wifi+bluetooth*sound+wifi*sound)
summary(model1)

boxcox(time ~ brigntess+bluetooth+wifi+sound+SEplus7+
         brigntess*bluetooth+brigntess*wifi+ brigntess*sound+bluetooth*wifi+bluetooth*sound+wifi*sound,
       lambda = seq(-2, 2, len = 21), ylab = "Log likelihood")

model2<- lm(log(time) ~ brigntess+bluetooth+wifi+sound+SEplus7+
              brigntess*bluetooth+brigntess*wifi+ brigntess*sound+bluetooth*wifi+bluetooth*sound+wifi*sound)
summary(model2)
## include 0 we do not do any transformation
aov1<- aov(time ~ brigntess+bluetooth+wifi+sound+SEplus7+
             brigntess*bluetooth+brigntess*wifi+ brigntess*sound+bluetooth*wifi+bluetooth*sound+wifi*sound)
summary(aov1)

aov2<- aov(log(time) ~ brigntess+bluetooth+wifi+sound+SEplus7+
             brigntess*bluetooth+brigntess*wifi+ brigntess*sound+bluetooth*wifi+bluetooth*sound+wifi*sound)
summary(aov2)



####
plot(aov1$fitted.values, aov1$residuals, xlab="Fitted value", ylab = "Residual")
qqnorm(aov1$residuals, xlab="Quantile of Standard normal", ylab = "Residual")
####
plot(aov2$fitted.values, aov1$residuals, xlab="Fitted value", ylab = "Residual")
qqnorm(aov2$residuals, xlab="Quantile of Standard normal", ylab = "Residual")
#### Main effects
plot.design(time ~ brigntess+bluetooth+wifi+sound+SEplus7)
###
interaction.plot(brigntess, bluetooth, time)


###normal plot of estimates
estimate<- coefficients(aov2)
## excluding intercept
qqnorm(estimate[-1],xlab= "Normal quantile", ylab= "Estimated effect")
##hafl normal plot of estimates
halfnorm(estimate[-1],ylab = "absolute estimated effect", labs = c("brigntess","bluetooth","wifi","sound","SEplus7",
                                                                   "brigntess*bluetooth", "brigntess*wifi","brigntess*sound", "bluetooth*wifi","bluetooth*sound","wifi*sound"))

###x& y plot
plot(brigntess,time)