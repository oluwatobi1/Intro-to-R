# Basic of R
# variables 
# assignment operator (<-)

height <- 5
word <- "this is a character"
# 6 -> width
h <-3
h*4


###### data types
# numerics, logical, character

class(2)
typeof(2)
class(2.5)

2L
typeof(2L)

# logicals (true and false)
TRUE
FALSE

T
F
class(TRUE)

# characters
a <- "this is a character"
class(a)

# type checking
is.numeric(2)
is.character("thisn")
is.logical(T)

# Coercion (type casting)
as.numeric(TRUE)
as.numeric(FALSE)
as.character(457)
as.numeric('4.5')
as.numeric('inthshha') 

# vectors 
vect <- c(12,23,45,67,86,34)
vect
items <- c("shoes", 'cloths', 'bags', 'jewelries')
items

is.vector(items)

items

num <- c(12,23,45,67)
num

# assigning names to vectors
# names()

names(num) <- c("bag", 'shoe', 'caps', 'clothes')

num

namedvect <- c("bag"= 2, 'shoe'= 4)
namedvect

nvect <- c(bag=2, shoe= 4)
nvect

#  Single value are vectors
mynumber <- 5
mychar <- "this is a character"

is.vector(mynumber)
is.vector(mychar)

# checking the length of a vector
length(c(1,2,3,4,5))

length(mychar)

#  length of characters nchar()
nchar(mychar)
nchar(1234567)
#  len()

# Vector arithmetic
arithmetic <- c(1,3,5,6,7)
# arithmetic is done elementwise

arithmetic *50

# 
arithmetic2 <- c(1,3,5,6,7)

arithmetic*arithmetic2
arithmetic/arithmetic2
arithmetic+arithmetic2

# recylcing
c(1, 1, 2)*c(2,34)

sum(arithmetic)
sum(arithmetic2)

?sum
?nchar

# comparism: compare vectors
arithmetic > arithmetic2

# subsetting a vector

(subvect<- c(a=3, b=5,c=2,d=5,e=9))

# same as
subvect<- c(a=3, b=5,c=2,d=5,e=9)
subvect

subvect[1] # subsetting by index
#  R doesn't uses zero indexing
#  indexes in R starts from 1
subvect[4]
subvect['d'] # subsetting by names


subvect[c(1,5, 3)] # subsetting multiple items
subvect[c("a", "c")] # subsetting multiple items

subvect
#  remove element from a vector "-"
subvect[-1]
subvect[-2]

subvect[-c(1, 2, 3)] # removing multiple item by index
subvect[-c('a')] # doesn't work for characters


subvect
# subsetting using logicals
subvect[c(TRUE, FALSE, TRUE, FALSE, FALSE)]
# TRUE = T

# RECYCLING IN R
subvect[c(TRUE, FALSE)]
# cascading items
subvect[c(TRUE, FALSE, TRUE, FALSE, TRUE)]

subvect[c(TRUE, FALSE, TRUE, FALSE, FALSE, TRUE)] # recycling 


# automatic coercion in R
(mixedvect <- c("char", TRUE, 2.5))
(mixedvect <- c(TRUE, 2))


# Matrices
# 2 d vector ( rows and columns)
#  to create a matrix;;matrix()

?matrix

# 1:6 is equivalent to c(1,2,3,4,5,6)

is.vector(5:12)
mvect<- 1:6

matrix(mvect, nrow = 2)
matrix(mvect, ncol = 2)
matrix(mvect, nrow = 2, byrow = TRUE)


matrix(1:5, nrow = 5, ncol = 5)
matrix(1:3, nrow = 5, ncol = 5)

# Also rbind() cbind()
?cbind

v1<-1:5
v2<-5:10

v3<-10:15


cbind(v1, v2, v3)
rbind(v1, v2, v3)
#  similarly for matrices
(mbind<- matrix(1:5, nrow = 5, ncol = 5))

cbind(mbind, 21:25)
#  to name rownames, colnames()

mname <- cbind(v1, v2, v3)
mname
rownames(mname)<- c('s', 'a', 'w', 't','q', 't')
mname
colnames(mname)<- c('s', 'a', 'w')
mname

#  coercion in matrices
(num <- matrix(1:6, nrow = 2))
LETTERS[1:6]


(chars <- matrix(LETTERS[1:6], nrow = 2))
#  subsetting matrices
submatrix<- cbind(num, chars)
submatrix[1,3] #row, column
submatrix[1,] #row, column # returns vector
submatrix[,1] #row, column # returns vector

submatrix[c(1,2)]
submatrix[c(1,2), c(3,4)]

#  Matrix arithmetic
 #  it is also done element wise
(a <- matrix(1:6, nrow = 3))
(b <- matrix(6:11, nrow = 3))


a+b
a*b
a*20
a
#  helpful summing operation
# rowSums() & colSums()
rowSums(a)
colSums(b)

# Factors
#  special data type for categorical variables

#  factor()

?factor
shirtgroups <- c("Small", "Medium", "Large", "Extralarge")
shirtfactor <- factor(shirtgroups)
shirtfactor

str(shirtfactor)
# nominal cat vars -no order to them
# ordinal cat vars -has order in it
shirtfactors <- factor(shirtgroups, 
                      levels = c('Small', 'Medium', "Large","Extralarge"),
                      ordered = TRUE)
shirtfactors
shirtfactors[1]>shirtfactors[2]

# list

#  to create list::: list()

c(1,2,3,4,5,6,7)
list(1,2,3,4,5,5)
# can store different data types
mylist<-list("chr", TRUE, 45)

str(mylist)

# for list subsetting 
# using [[]]

mylist[1] # returns a sublist
mylist[[1]] #returns the item

?list

# data frames
#  To read csv in R
?read.csv


#  to create data frame
?data.frame

?sample
L3 <- LETTERS[1:3]
fac <- sample(L3, 10, replace = TRUE)
(d <- data.frame(x = 1, y = 1:10, fac = fac))


# Subsetting a data frame
d["x"] # by name
d[1] # by index

d$y #list subsetting


#  importing libraries in R

library(datasets)

# installing R libraries
install.packages("pacman")

require(pacman) # gives a confirmation in the console
library(pacman) # does not give a confirmation
 
pacman::p_load(ggplot2, dplyr)


# pacman::p_unload()

library(datasets)

iris
?iris

head(iris) # equivalent to df.head()

summary(iris) # equivalent to describe()



#  basic plots on R 
# plot() and hist()
# plot(): generic 

iris$Sepal.Length
plot(iris$Sepal.Length) # quantitative var

iris$Species
plot(iris$Species) # categorical var

plot(iris$Sepal.Length, iris$Sepal.Width) # 2 quantitative vars

plot(iris$Species, iris$Sepal.Length) # cat and quantitative

plot(iris)

# clear plot
dev.off()

?plot


# more customization

plot(iris$Sepal.Length, iris$Sepal.Width,
     xlab = "Sepal Length",
     ylab = "Sepal Width",
     main = "Plot of Sepal length against Sepal Width",
     col = "#fc0703",
     pch=19)

hist(iris$Sepal.Length)
hist(iris$Sepal.Width)
plot(dnorm, -3, 3)


# bar chart

#  takes in a table

?mtcars
mtcars$cyl
barplot(mtcars$cyl)

# table of frequency
cy<-table(mtcars$cyl)
barplot(cy)
