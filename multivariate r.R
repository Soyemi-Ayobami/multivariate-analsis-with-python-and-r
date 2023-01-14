data(iris)

head(iris)

tail(iris)

cor(iris[1:4])

cov.mat <- cor(iris_standardize)
cov.mat



iris_standardize <- as.data.frame(scale(iris[1:4]))
head(iris_standardize)



pca <- prcomp(iris_standardize, center = T, scale. = T)
summary(pca)

library(ggfortify)


autoplot(pca, data = iris, colour = 'Species')