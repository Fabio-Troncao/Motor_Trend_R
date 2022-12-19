library(datasets)
data(mtcars)
names(mtcars)

summary(mtcars)

t.test(mtcars$mpg~mtcars$am,conf.level=0.95)

mlr = lm(data = mtcars, mpg ~ .)
summary(mlr)

bestmodel = step(lm(data = mtcars, mpg ~ .), trace=0)
summary(bestmodel)

pairs(mtcars)

par(mfrow=c(2,1))
hist(mtcars$mpg, breaks=10, xlab="MPG", main="MPG histogram")
plot(density(mtcars$mpg), main="kernel density", xlab="MPG")

boxplot(mpg~am, data = mtcars,
        xlab = "Transmission",
        ylab = "Miles per Gallon",
        main = "MPG by Transmission Type",
        names = c("Automatic", "Manual"))

par(mfrow = c(2,2))
plot(bestmodel)