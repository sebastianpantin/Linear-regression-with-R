# Scatterplot of the data

scatter.smooth(x=geese$photo, y=geese$observer1, main="Observer 1 count ~ Photo count",
               xlab = "Photo count", ylab = "Observer count") 
scatter.smooth(x=geese$photo, y=geese$observer.2, main="Observer 2 count ~ Photo count",
               xlab = "Photo count", ylab = "Observer count") 

# Fit the data by simple linear regression

linearMod1 <- lm(observer1 ~ photo, data = geese)
linearMod2 <- lm(observer.2 ~ photo, data = geese)
yfittedMod1 <- fitted(linearMod1)
yfittedMod2 <- fitted(linearMod2)
plot(geese$photo,geese$observer.2,main="Scatterplot with fitted regression",
     xlab = "Photo count", ylab = "Observer count")
lines(geese$photo, yfittedMod2)
plot(geese$photo,linearMod1Sum$residuals,main="Observer 1 residuals ~ Photo count",
     xlab = "Photo count", ylab = "Residuals",pch = 20)
plot(geese$photo,linearMod2Sum$residuals,main="Observer 2 residuals ~ Photo count",
     xlab = "Photo count", ylab = "Residuals",pch = 20)