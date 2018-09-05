## Install Swirl for learning R ##

install.packages("swirl")

## Everytime you want to run Swirl, enter the following: ##
library("swirl")
swirl()

## Within swirl:
##| When you are at the R prompt (>):
##| -- Typing skip() allows you to skip the current question.
##| -- Typing play() lets you experiment with R on your own; swirl will ignore what you do...
##| -- UNTIL you type nxt() which will regain swirl's attention.
##| -- Typing bye() causes swirl to exit. Your progress will be saved.
##| -- Typing main() returns you to swirl's main menu.
##| -- Typing info() displays these options again.


###########################################################
#           Lesson 1: Basic Building Blocks               #
###########################################################

## Vectors
##| Now, let's create a small collection of numbers called a vector. Any object that contains data is
##| called a data structure and numeric vectors are the simplest type of data structure in R. In fact,
##| even a single number is considered a vector of length one.
##| The easiest way to create a vector is with the c() function, which stands for 'concatenate' or 'combine'
##| When given two vectors of the same length, R simply performs the specified arithmetic operation (`+`,                                                                                                 
##| `-`, `*`, etc.) element-by-element. If the vectors are of different lengths, R 'recycles' the shorter
##| vector until it is the same length as the longer vector.
##| Behind the scenes, R is 'recycling' the 2 to make a vector of 2s and the 100 to make a vector of 100s.
##| In other words, when you ask R to compute z * 2 + 100, what it really computes is this: z * c(2, 2, 2)
##| + c(100, 100, 100).
##| If the length of the shorter vector does not divide evenly into the length of the longer vector, R will still apply the 'recycling'
##| method, but will throw a warning to let you know something fishy might be going on.


###########################################################
#           Lesson 2: Workspace and Files                 #
###########################################################

## determine which directory R is using as its working directory
getwd()

## list all the objects in your local workspace
ls()

## list all the files in your working directory
list.files()

##| Using the args() function on a function name is also a handy way to see what arguments a function can take.
args(list.files)

## make a temporary directory within your working directory that you can delete later
dir.create("testdir")

## change your working directory to the new one you created
setwd("testdir")

##| Check to see if "mytest.R" exists in the working directory using the file.exists() function.
##| These sorts of functions are excessive for interactive use. But, if you are running a program that loops through a series of files and
##| does some processing on each one, you will want to check to see that each exists before you try to process it.












