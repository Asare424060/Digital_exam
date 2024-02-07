#Load your data set
library(readr)
drinks <- read_csv("C:/Users/OJ/Desktop/RStudio/drinks.csv")
View(drinks)
p <- drinks
View(p)
# Install packages
library(dplyr)
library(stringr)
library(ggplot2)
library(gridExtra)
library(flextable)
library(RColorBrewer)
#Explore your data set
cols(
  country = col_character(),
  beer_servings = col_double(),
  spirit_servings = col_double(),
  wine_servings = col_double(),
  total_litres_of_pure_alcohol = col_double()
)
# Clean your data
nrow(p)
ncol(p)
str(p)
head(p)
unique(p$beer_servings)
unique(p$country)
unique(p$spirit_servings)
unique(p$total_litres_of_pure_alcohol)


#Create a plot for beer Servings

p[1:20, c(1:2)]
a <- p[1:20, c(1:2)]
summary(p$beer_servings)
a[a$beer_servings > 100, ]
a1 <- a[a$beer_servings > 100, ]
ggplot(a1, aes(x = country, y = beer_servings)) + geom_col()
f <- ggplot(a1, aes(x = country, y = beer_servings)) + geom_col()
f + labs(title = "Distribution of Beer per Country in Litres", x= "Country", y = "Frequency")
f + labs(title = "Distribution of Beer per Country in Litres", x= "Country", y = "Frequency") + theme_bw() + coord_cartesian(
  xlim = NULL, ylim = c(20, 400)
)

#Create a plot for spirit servings
p[1:20, c(1,3)]
g <- p[1:20, c(1,3)]
summary(p$spirit_servings)
g[g$spirit_servings > 80, ]
k <- g[g$spirit_servings > 80, ]
ggplot(k, aes(x = country, y = spirit_servings)) + geom_col()
k1 <- ggplot(k, aes(x = country, y = spirit_servings)) + geom_col() 
 k1 + labs(title = "Distribution of Spirit per country in Litres", x = "Country", y = "Frequency") + theme_bw() + 
   coord_cartesian( xlim = NULL, ylim = c(50, 400))
 
 #Create a plot for Wine Serving

 p[1:20, c(1,4)]
 r <- p[1:20, c(1,4)]
 summary(p$wine_servings)
 r[r$wine_servings > 50, ]
 m <- r[r$wine_servings > 50, ]
 ggplot(m, aes(x = country, y = wine_servings)) + geom_col()
m1 <-  ggplot(m, aes(x = country, y = wine_servings)) + geom_col()
m1 + coord_cartesian(xlim = NULL, ylim = c(20, 350)) +
  labs(title = "Distribution of Wine per country in Litres", x = "Country", y = "Frequency") + theme_bw()
install.packages("pacman::p_load(tinytex")
library(tidyverse)
install.packages("palmerpenguins")
library(palmerpenguins)
p
