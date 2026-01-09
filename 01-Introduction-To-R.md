# Getting Started with R {#intro-r}
Welcome to the programming language R! Data is art, and as you will read many times in this book:

> R puts the r in Artist.

If you have never even touched R, great! If you have experience with R, great!

This chapter is meant more for people who have never touched R before. It is not meant to make you an expert level programmer, but more to provide the groundwork for programming in R. Before you can do calculus, you need to be able to do addition, subtraction, multiplication, and division. 

**This chapter is exactly that.** 

You *do not* need to memorize this chapter; think of it as a reference you will return to throughout the book.

## Learning Objectives {#intro-objectives}
By the end of this chapter, you will be able to:

- Navigate the RStudio interface and identify the purpose of each pane
- Use R as a calculator to perform basic mathematical operations
- Build and work with objects, vectors, and different data types
- Create and explore simple data frames
- Access and modify data frame columns using `$`
- Import data from external files such as CSVs and Excel spreadsheets
- Install, load, and understand the role of R packages
- Use built-in help tools and error messages to troubleshoot basic issues

First, it's important to understand RStudio and its layout.

## RStudio {#rstudio}
Currently we are using RStudio to run R. Here, there are 4 quadrants/panes

- Source - top left
  - This is where 99% of all of your code will be written.
- Console - bottom left
  - This is where we will see if our code ran or if we have errors. That remaining 1% of code written from before will be done here.
- Environment - top right
  - This is where you see what is being stored in your environment, such as data, values, and functions.
- Files/Plots/Packages/etc - bottom right
  - There are many tabs here, which are mostly self-explanatory
  
Now that we know what we are looking at, let's get into some R code!

It was explained that a vast majority of our code will be written in the source quadrant, specifically, in an **R Script**. Once R Studio has been opened, you can go to file, file new, then click on R Script. A brand new R Script has now been opened for you to begin your coding adventure!

## R as a Calculator {#r-calculator}
One of the most amazing parts of R is that it can do math for you, and replace that scientific calculator you're always carrying around. R's math range is absolutely incredible, but for right now, we will start with the basics.

### Basic Math {#intro-calculator-basic}
Speaking all about basics, let's start off by running some simple math.


``` r
2 + 2
#> [1] 4

10 / 3
#> [1] 3.333333

5^2
#> [1] 25

(3 + 7) * 2
#> [1] 20

5 * 5 * 5 / 37 + 42
#> [1] 45.37838
```

Here, each line of code is an individual math equation. These are simple (2 + 2), that with a little working memory, could be done in your head. R can be elevated to perform more mathematical functions that require a little more elbow grease. 

### Built-in mathematical Functions {#intro-calculator-functions}

Building upon `2 + 2`, R has built in functions to help get our math homework done. Right now we will do more basic things such as square roots, but in the forthcoming chapters, we will build to more advanced statistical analyses.


``` r
# Built-in functions
sqrt(25) # square root
#> [1] 5

log(10) # natural log
#> [1] 2.302585

log10(1000) # base-10 log
#> [1] 3

round(3.14159, digits = 3) # round the output to only have 3 digits
#> [1] 3.142

round(5*5/37, 4) # rounding the output of an equation
#> [1] 0.6757
```

We did a great job of performing a lot of math. As stated before, each line represents a different mathematical equation. While it is a strong start, there will be many times where we want to store our equations or outputs to call later. This is exactly where variables, objects, and vectors come into play.

## Creating Variables and Assigning Objects {#intro-objects}
In the last piece of code, we did a great job of using R as a calculator. While we were able to calculate the square root of 25, what if we need to save it this way we can call it later? What if we don't want to have to continually run the code `sqrt(25)` in order to get the output?

In R, we are able to create variables and assign values to objects. In R, instead of using the = sign, we use `<-` to create objects.

Note: Once each piece of code is run and the objects are created, we should be able to see them in the "Values" part of our environment pane. It will show the name of the value as well as what it is equal to. Within R, we can always follow this formula:

> value name `<-` whatever you want inside the value

Now, a few tips:

- R does not like spaces. Try to use underscores or elongated words.
  - For example: `first object <- 5` does not work, but `first_object <- 5` does.
- R is case sensitive. 
  - For example: x and X would not be considered the same.
- R overwrites code.
  - For example: If I wrote `x <- 5` on one line and then `x <- 6` on the next line, x will be equal to 6 and not 5.
  
Below is some code to demonstrate. Notice how all of the numbers change color in your code.


``` r
# Assigning to objects (variables)
sqrt(25) # the answer is 5
#> [1] 5

x <- 5 # Making x equal to 5

# Or, we can save the code we wrote and not the answer
x <- sqrt(25)

# Updating x
x <- x + 1 
x # It is now equal to 6 and not 5
#> [1] 6

# Objects are case sensitive
X <- 7

# You can override code and change a variables value
X <- 5

# Good names: use letters, numbers, underscores; start with a letter
best_number <- 42

# Inspecting objects
class(x) # x is numeric, as we already knew!
#> [1] "numeric"
```

Notice that **creating** and **calling** the data are different. I create `x <- 5`, but in order to call it, I just run `x` (after it has been created).

With an object, there is only one value. One thing equals one thing. To build upon objects, we can move to vectors.

## Vectors {#intro-vectors}
Now that objects have been created, it is time to use those same principles to create **vectors.** Like objects, vectors contain information, just more of it. Before, we had `x <- 5`, however, what if we wanted x to contain every single letter in the alphabet, and not just one thing (`5`)?

This is exactly where vectors come in.

Note: There are two very important things that come into play when creating a vector:

- Everything must go inside parenthesis
- Before the parenthesis, you have to call the `c` function. The purpose of this is to literally combine values into a vector. 
- **You're telling R "Please combine everything in the parenthesis into one vector."**

For instance, if we wanted to create a vector that has a, b, and c in it, the below code wouldn't work.


``` text
wont_work <- a, b, c # no parenthesis

also_wont_work <- (a, b, c) # no c before the parenthesis
```

Since we have vector examples that *don't* work, let's get into examples that *do* work.

### Numeric Vectors {#intro-vectors-numeric}
Numeric vectors contain only numeric values inside of them.


``` r
# Numeric vector
number_vector <- c(1, 2, 3, 4, 5) # c stands for combine/concatenate 

number_vector
#> [1] 1 2 3 4 5

numeric_vector_2 <- c(6:10) # The colon is like saying "everything from 6 to 10"

numeric_vector_2
#> [1]  6  7  8  9 10

# The length command tells you how many values are inside the vector
length(number_vector) # 5
#> [1] 5

length(numeric_vector_2) # 5
#> [1] 5

# It is possible to add numeric vectors as long as they're the same length

number_vector + numeric_vector_2
#> [1]  7  9 11 13 15

# Vectorized math
number_vector * 10
#> [1] 10 20 30 40 50
```

### Character Vectors {#intro-vectors-character}
Just like with numeric data, we can create vectors with characters inside. Unlike with numeric values in R, characters must be in between quotation marks. Notice once quotation marks are used, everything inside (and the quotation marks themselves) change color in your script.

Note: Be careful, as the positioning of quotation marks can severely change your vector (see below).


``` r
# Quotation marks around each of the fruits
fruits <- c("apple", "banana", "cherry")

fruits
#> [1] "apple"  "banana" "cherry"

# Quotation marks around the entire string
Fruits <- c("apple, banana, cherry")

Fruits
#> [1] "apple, banana, cherry"
```

Notice how in the `fruits` each fruit was it's own value, but in `Fruits`, they were together.

### Logical Vectors {#intro-vectors-logical}
Time for a quick question:

> True or False: logical vectors are possible in R? 

*True!*

R is able to handle logistic values (True and False). In R, you can either write it as the full word in all caps or the first letter capitalized:

- TRUE or FALSE
- T or F

Notice how in your code, logic also changes color, the same color as numeric.


``` r
# Using full word capitalized
some_truths <- c(TRUE, FALSE, TRUE)

some_truths
#> [1]  TRUE FALSE  TRUE

class(some_truths)
#> [1] "logical"

# Using first letter capitalized
some_lies <- c(F, F, T)

some_lies
#> [1] FALSE FALSE  TRUE

class(some_lies)
#> [1] "logical"

# Once you put quotation marks, it makes them a character
truth_logic <- c("TRUE","FALSE","TRUE")

class(truth_logic) 
#> [1] "character"
```
Above we used the `class()` command to check to see what type of data we were creating. `some_truth` and `some_lies` were both *logical*, while `truth_logic` was *character*.

> It is always crucial to check what you've created to make sure it is the desired output.

### Factors (categorical) {#intro-vectors-factors}
When character values have levels, it becomes categorical data. In R, this is best handled as factors. To turn a character string into factors, utilize the `factor()` command.

Note: When writing the names of colors in R, the color will automatically change to the exact color (talk about putting the R in artist).


``` r
# Creating the colors vector as factors
colors <- factor(c("red", "blue", "red", "green")) # 4 values

colors
#> [1] red   blue  red   green
#> Levels: blue green red

class(colors)
#> [1] "factor"

levels(colors) # Checking to see how many levels there are (3)
#> [1] "blue"  "green" "red"
```
When we called `class()` we saw that `colors` was factor, not character. In order to check to see how many *levels* were inside `colors`, we used the `levels()` command, which indicated that there were three: blue, green, and red.

### Indexing (1-based in R!) {#intro-vectors-indexing}
Vectors, unlike objects, have multiple values inside of them. For instance, when we created the vector fruits, it had three values: apple, banana, cherry. Vectors inherently are **indexed** meaning that there is positioning inside of the vector. For fruits, apple would be 1, banana would be 2, and cherry would be 3. In R, we can utilize this indexing to our advantage and call specific positions from vectors. To do this, we will be using brackets.


``` r
# fruits <- c("apple", "banana", "cherry")
fruits[1] # first element
#> [1] "apple"

fruits[2:3] # slice
#> [1] "banana" "cherry"
```
No matter how many values are in a vector, you can always use `[]` to call specific values.

### Type Coercion {#intro-vectors-coercion}
In the previous sections, we created vectors, but they've all been the same data type. What about if we put some different types of data, for instance, numeric and character, into a vector?


``` r
# Putting two numeric and one character into a vector.
mix <- c(1, 2, "three")

mix # becomes character
#> [1] "1"     "2"     "three"

class(mix)
#> [1] "character"
```
It defaults to character!

> As a rule of thumb: quotation marks rule. If a vector has quotation marks, R defaults it to a character string.

With ample discussion around vectors, it is time to build even more: data frames.

## Data Frames {#intro-dataframes}
Vectors are an essential way to store information, but specifically, **one** type of information. When we tried to mix different types of data in one vector, we saw that R did not like that, and considered everything as part of a character string. So, what if we want to be able to have different types of data all in one place?

This is exactly where data frames come into play. Data frames are the most common way to view data, with maybe the most prominent examples being Microsoft Excel.

### Creating Your Own Data Frame {#intro-dataframes-creating}
Imagine you have three vectors and you want to turn them into a data frame, with each of the three vectors representing a different column in your data frame. In R, once the vectors have been created, you are able to do exactly this using `data.frame()`.


``` r
# Build a tiny class roster data frame
names_vec <- c("John", "Bob", "Carmen", "Sarah")

ages_vec <- c(20, 22, 21, 23)

major_vec <- c("Psych", "Econ", "Psych", "CS")

roster <- data.frame(
  name = names_vec,
  age = ages_vec,
  major = major_vec,
  stringsAsFactors = FALSE)

roster
#>     name age major
#> 1   John  20 Psych
#> 2    Bob  22  Econ
#> 3 Carmen  21 Psych
#> 4  Sarah  23    CS

class(roster) # Class is now data.frame
#> [1] "data.frame"
```

The data frame `roster` was created using three different vectors: `names_vec`, `ages_vec`, and `major_vec`. Now, we have an example of both numeric and character values together.

### Functions to Explore Datasets {#intro-dataframes-exploring}
When exploring datasets, there are some great functions to do this:

- `head()`: Returns the first part of data.
- `tail()`: Returns the last part of data.
- `str()`: Displays the structure of the data.
- `summary()`: Provides a summary of summary of your data.
- `View()`: Opens your dataset as a new window in R.
- `colnames()`: Returns the names of all of your columns.
- `table()`: Returns a frequency table.
- `nrow()`: Returns the total number of rows.
- `ncol()`: Returns the total number of columns.

Thankfully, R comes preinstalled with datasets to explore and practice R with. Below we will test these functions out using the dataset *iris.* 


``` r
# iris
head(iris) # By default returns 6 rows
#>   Sepal.Length Sepal.Width Petal.Length Petal.Width Species
#> 1          5.1         3.5          1.4         0.2  setosa
#> 2          4.9         3.0          1.4         0.2  setosa
#> 3          4.7         3.2          1.3         0.2  setosa
#> 4          4.6         3.1          1.5         0.2  setosa
#> 5          5.0         3.6          1.4         0.2  setosa
#> 6          5.4         3.9          1.7         0.4  setosa

tail(iris) # By default returns 6 rows
#>     Sepal.Length Sepal.Width Petal.Length Petal.Width
#> 145          6.7         3.3          5.7         2.5
#> 146          6.7         3.0          5.2         2.3
#> 147          6.3         2.5          5.0         1.9
#> 148          6.5         3.0          5.2         2.0
#> 149          6.2         3.4          5.4         2.3
#> 150          5.9         3.0          5.1         1.8
#>       Species
#> 145 virginica
#> 146 virginica
#> 147 virginica
#> 148 virginica
#> 149 virginica
#> 150 virginica

str(iris) # Provides the structure of each column
#> 'data.frame':	150 obs. of  5 variables:
#>  $ Sepal.Length: num  5.1 4.9 4.7 4.6 5 5.4 4.6 5 4.4 4.9 ...
#>  $ Sepal.Width : num  3.5 3 3.2 3.1 3.6 3.9 3.4 3.4 2.9 3.1 ...
#>  $ Petal.Length: num  1.4 1.4 1.3 1.5 1.4 1.7 1.4 1.5 1.4 1.5 ...
#>  $ Petal.Width : num  0.2 0.2 0.2 0.2 0.2 0.4 0.3 0.2 0.2 0.1 ...
#>  $ Species     : Factor w/ 3 levels "setosa","versicolor",..: 1 1 1 1 1 1 1 1 1 1 ...

summary(iris) # Provides statistics for each column
#>   Sepal.Length    Sepal.Width     Petal.Length  
#>  Min.   :4.300   Min.   :2.000   Min.   :1.000  
#>  1st Qu.:5.100   1st Qu.:2.800   1st Qu.:1.600  
#>  Median :5.800   Median :3.000   Median :4.350  
#>  Mean   :5.843   Mean   :3.057   Mean   :3.758  
#>  3rd Qu.:6.400   3rd Qu.:3.300   3rd Qu.:5.100  
#>  Max.   :7.900   Max.   :4.400   Max.   :6.900  
#>   Petal.Width          Species  
#>  Min.   :0.100   setosa    :50  
#>  1st Qu.:0.300   versicolor:50  
#>  Median :1.300   virginica :50  
#>  Mean   :1.199                  
#>  3rd Qu.:1.800                  
#>  Max.   :2.500

colnames(iris) # Provides the column names of your data
#> [1] "Sepal.Length" "Sepal.Width"  "Petal.Length"
#> [4] "Petal.Width"  "Species"
```

These are by far not the only ones that **can** or **should** be used. Of course, experiment with other commands to see what works best for your style and data.

### Working With Columns Within Data Frames {#intro-dataframes-columns}
When we created the roster data frame, it was three columns: name, age, and major. Let's say we wanted to find the median of age in our roster data frame. How can we find the median of **just** the age column?

In R, to select specific columns in data frames, we can use $. The formula to follow is:

- dataset_name$column_name

Below is an example of finding the median of the age column in the roster dataframe.


``` r
median(roster$age)
#> [1] 21.5
```

Just like in real life, the dollar sign ($) is very powerful. Now only can we use it to call columns from a dataset, but we can also use it to **make** columns in a dataset that do not exist yet. The formula to follow is:

- dataset_name$new_column_name <- new_data

Below are examples of creating a new column in a data frame using the $.


``` r
# Having one value for each row of data
roster$year <- 2025

# Having a different value for each row of data
roster$minor <- c("Chemistry", "Biology", "History", "Art")

roster
#>     name age major year     minor
#> 1   John  20 Psych 2025 Chemistry
#> 2    Bob  22  Econ 2025   Biology
#> 3 Carmen  21 Psych 2025   History
#> 4  Sarah  23    CS 2025       Art
```

## Reading & Writing data {#intro-reading-data}
So far, we have created our own data in R or used datasets that are prebuilt in R. Most of the time, you will have data that is not currently in R, but you want/need to bring it into R to do an analysis.

In the case when you have your own data on your computer that you want to bring into R, there are two main ways:

- `read.csv()`: Imports a CSV file into R.
- `read_xlsx()`: Imports an excel file into R (from the package `readxl`, but more about packages later).
- `getwd()`: Gets the path of the directory you are working in.
- `setwd()`: Sets the path in your directory that you want to work in.

Below is code to assist with uploading data.


``` r
# read.csv example (commented because path varies by machine)
# my_df <- read.csv("/path/to/your/file.csv")

# Working directory helpers
# getwd()
# setwd("/path/where/you/want") # <- avoid hard-coding in projects; we’ll cover R Projects later
#setwd("~/Documents/Work/Brooklyn College/Fall 2025")
```

## Packages {#intro-packages}
R is fantastic in many ways. One of, if not the most powerful aspect of R is packages. When you install R and RStudio, there are ample things you can do. But, with packages, there is an **infinite** amount of things you can do.

R is open source, which means that anyone can create their own code, and in turn create their own package. Packages contain functions and datasets that are not preinstalled in R but can significantly elevate the capabilities.

To install a new package in R, you run the command `install.packages()` then inside the parenthesis, in quotation marks, put the name of the package you'd like to install.

Once you install a package, you do not need to reinstall it (unless it needs to be updated, which R will tell you). However, if you want to use it, you need to use the `library()` command. This has to be done **every** time you start a new R session.


``` r
# install.packages("tidyverse")
# library(readxl)
# library(tidyverse)
```

Packages are going to be an essential part of this course, especially in the next chapter. You can find a list of all the packages [here](https://r-packages.io/packages).

## Getting Comfortable Making Mistakes - Help and Advice {#intro-mistakes}
As previously stated, there are an innumerable amount of things that can be done in R. With so many capabilities, it is impossible to remember everything and get everything right all the time. Sometimes you may get errors when trying to run code. When your code does not work, try looking for:

- Misspelling of function names
- Unclosed brackets, parenthesis, or quotation marks
- Spaces in names or columns
- Not having the `<-`
- Missing a required field from a function

A good portion of the time, R will provide you with an error message which will have the clues to exactly what is the problem. If at any time you need help, you can ask R. The formula to follow is (no parenthesis in this case):

- ?command_name

Imagine for the life of you you are unable to remember what `str()` does. The below code is an example of how to ask R for help.


``` r
?str
```

Sometimes, you may encounter an issue that is really just giving you problems. In this case, my best advice is to step away from your computer for 5 minutes and take a deep breath. Just like learning a instrument or learning a new language, things take time.

## Key Takeaways {#intro-takeaways}
This chapter provides the foundational skills needed to begin working with data in R. Here are some key takeaways from the chapter:

- R is a programming language designed for **working with data**, where results are stored and reused rather than calculated once and discarded.
- All work in R is built around **objects**, which allow you to store values, vectors, and datasets for later use.
- **Vectors** store multiple values of the same type, while **data frames** combine multiple vectors into a table where rows represent observations and columns represent variables.
- R is **case-sensitive** and does not allow spaces in object names, making consistent naming an important habit.
- Functions in R follow a consistent structure: a function name followed by inputs inside parentheses.
- Data can be created manually, explored using built-in datasets, or imported from external files such as CSVs or Excel spreadsheets.
- Packages extend R’s functionality and allow you to perform more advanced analyses beyond base R.
- Getting comfortable **reading error messages and using help tools** (`?function_name`) is an essential part of working effectively in R.
- This chapter establishes the foundation for all analyses in the book — later chapters build on these ideas using additional tools, workflows, and statistical methods.
- Developing consistent workflows and documenting your steps early supports reproducible research, a theme that will be emphasized throughout this book.

## Checklist: Before Moving On {#intro-checklist}
Before continuing to the next chapter, can you confidently say that you have:

- [ ] Opened RStudio and can identify the **Source**, **Console**, **Environment**, and **Files/Plots** panes?
- [ ] Run basic arithmetic directly in R and interpreted the output?
- [ ] Created objects using `<-` and reused them later in your code?
- [ ] Created **numeric**, **character**, and **logical** vectors using `c()`?
- [ ] Indexed values from a vector using brackets `[]`?
- [ ] Combined multiple vectors into a **data frame**?
- [ ] Accessed and created data frame columns using `$`?
- [ ] Used at least one function (e.g., `mean()`, `summary()`, `str()`) and understood its structure?
- [ ] Installed and loaded a package using `install.packages()` and `library()`?
- [ ] Used `?function_name` to look up help when unsure?

## Key Functions & Commands {#intro-key-functions}
The following functions, operators, and commands are introduced for the first time in this chapter and form the foundation for working in R.

- `<-` *(base R)*
  - Assigns values to objects for later use.
- `c()` *(base R)*
  - Combines multiple values into a single vector.
- `:` *(base R)*
  - Creates integer sequences (e.g., `1:10`).
- `[]` *(base R)*
  - Indexes and subsets elements from vectors or data frames.
- `$` *(base R)*
  - Accesses or creates columns within a data frame.
- `sqrt()` *(base R)*
  - Computes square roots.
- `log()` / `log10()` *(base R)*
  - Computes natural and base-10 logarithms.
- `round()` *(base R)*
  - Rounds numeric values to a specified number of digits.
- `class()` *(base R)*
  - Identifies the data type (class) of an object.
- `length()` *(base R)*
  - Returns the number of elements in a vector.
- `factor()` *(base R)*
  - Converts character data into categorical (factor) variables.
- `levels()` *(base R)*
  - Displays the levels associated with a factor.
- `data.frame()` *(base R)*
  - Combines vectors into a tabular data structure.
- `head()` / `tail()` *(base R)*
  - Displays the first or last rows of a dataset.
- `str()` *(base R)*
  - Displays the internal structure and data types of a dataset.
- `summary()` *(base R)*
  - Produces descriptive summaries of variables in a dataset.
- `nrow()` / `ncol()` *(base R)*
  - Returns the number of rows or columns in a dataset.
- `colnames()` *(base R)*
  - Displays or modifies column names of a data frame.
- `read.csv()` *(base R)*
  - Imports CSV files into R as data frames.
- `getwd()` / `setwd()` *(base R)*
  - Gets or sets the current working directory.
- `install.packages()` *(base R)*
  - Installs packages from CRAN.
- `library()` *(base R)*
  - Loads an installed package into the current R session.
- `?function_name` *(base R)*
  - Accesses built-in help documentation for a function.
  
## 💡 *Reproducibility Tip:* {#intro-tip}
Just like how your room can get messy without even trying, so can your work in R. You might start with a single R script, but soon there are multiple scripts, datasets, and figures—maybe one script accidentally saved in your Downloads folder while everything else lives somewhere else. Before you realize it, things feel chaotic.

One of the easiest ways to prevent this is by using **R Projects**.

To create a new R Project, go to **File → New Project**, choose a location on your computer, and give it a meaningful name. From that point on, everything related to that project lives in one place.

The benefits of using an R Project include:

1. You don’t need to manually set your working directory—it’s handled for you.
2. All of your scripts, data, and output files stay together.
3. Different projects remain cleanly separated, reducing confusion and mistakes.

In RStudio, you can check whether you’re working inside a project by looking at the top-right corner. If it says *Project (None)*, you’re not in one. If it shows a project name, you are.

Developing the habit of using R Projects early will save you time, reduce errors, and make your work far easier to reproduce—both for yourself and for others.
