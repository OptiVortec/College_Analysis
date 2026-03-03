############################################################
# Assignment 1 — Exploring the College Dataset
# Name: Antonio Gonzalez
############################################################

# ----------------------------------------------------------
# 1. Load required libraries
# ----------------------------------------------------------
# Base R is sufficient for this assignment.
# Load additional libraries only if you choose to use them.

# ----------------------------------------------------------
# 2. Load the dataset
# ----------------------------------------------------------
# TODO:
# - Read College.csv into R
# - Store college names as row names
# - Remove the first column so the data begins with 'Private'


# Check the structure of your dataset
# str(college)
> str(college)
'data.frame':    777 obs. of  18 variables:
 $ Private    : chr  "Yes" "Yes" "Yes" "Yes" ...
 $ Apps       : int  1660 2186 1428 417 193 587 353 1899 1038 582 ...
 $ Accept     : int  1232 1924 1097 349 146 479 340 1720 839 498 ...
 $ Enroll     : int  721 512 336 137 55 158 103 489 227 172 ...
 $ Top10perc  : int  23 16 22 60 16 38 17 37 30 21 ...
 $ Top25perc  : int  52 29 50 89 44 62 45 68 63 44 ...
 $ F.Undergrad: int  2885 2683 1036 510 249 678 416 1594 973 799 ...
 $ P.Undergrad: int  537 1227 99 63 869 41 230 32 306 78 ...
 $ Outstate   : int  7440 12280 11250 12960 7560 13500 13290 13868 15595 10468 ...
 $ Room.Board : int  3300 6450 3750 5450 4120 3335 5720 4826 4400 3380 ...
 $ Books      : int  450 750 400 450 800 500 500 450 300 660 ...
 $ Personal   : int  2200 1500 1165 875 1500 675 1500 850 500 1800 ...
 $ PhD        : int  70 29 53 92 76 67 90 89 79 40 ...
 $ Terminal   : int  78 30 66 97 72 73 93 100 84 41 ...
 $ S.F.Ratio  : num  18.1 12.2 12.9 7.7 11.9 9.4 11.5 13.7 11.3 11.5 ...
 $ perc.alumni: int  12 16 30 37 2 11 26 37 23 15 ...
 $ Expend     : int  7041 10527 8735 19016 10922 9727 8861 11487 11644 8991 ...
 $ Grad.Rate  : int  60 56 54 59 15 55 63 73 80 52

# ----------------------------------------------------------
# 3. Numerical summary

# ----------------------------------------------------------
# TODO:
# - Produce a numerical summary of the dataset
> summary(college)
   Private               Apps
 Length:777         Min.   :   81
 Class :character   1st Qu.:  776
 Mode  :character   Median : 1558
                    Mean   : 3002
                    3rd Qu.: 3624
                    Max.   :48094
     Accept          Enroll
 Min.   :   72   Min.   :  35
 1st Qu.:  604   1st Qu.: 242
 Median : 1110   Median : 434
 Mean   : 2019   Mean   : 780
 3rd Qu.: 2424   3rd Qu.: 902
 Max.   :26330   Max.   :6392
   Top10perc       Top25perc
 Min.   : 1.00   Min.   :  9.0
 1st Qu.:15.00   1st Qu.: 41.0
 Median :23.00   Median : 54.0
 Mean   :27.56   Mean   : 55.8
 3rd Qu.:35.00   3rd Qu.: 69.0
 Max.   :96.00   Max.   :100.0
  F.Undergrad     P.Undergrad
 Min.   :  139   Min.   :    1.0
 1st Qu.:  992   1st Qu.:   95.0
 Median : 1707   Median :  353.0
 Mean   : 3700   Mean   :  855.3
 3rd Qu.: 4005   3rd Qu.:  967.0
 Max.   :31643   Max.   :21836.0
    Outstate       Room.Board
 Min.   : 2340   Min.   :1780
 1st Qu.: 7320   1st Qu.:3597
 Median : 9990   Median :4200
 Mean   :10441   Mean   :4358
 3rd Qu.:12925   3rd Qu.:5050
 Max.   :21700   Max.   :8124
     Books           Personal
 Min.   :  96.0   Min.   : 250
 1st Qu.: 470.0   1st Qu.: 850
 Median : 500.0   Median :1200
 Mean   : 549.4   Mean   :1341
 3rd Qu.: 600.0   3rd Qu.:1700
 Max.   :2340.0   Max.   :6800
      PhD            Terminal
 Min.   :  8.00   Min.   : 24.0
 1st Qu.: 62.00   1st Qu.: 71.0
 Median : 75.00   Median : 82.0
 Mean   : 72.66   Mean   : 79.7
 3rd Qu.: 85.00   3rd Qu.: 92.0
 Max.   :103.00   Max.   :100.0
   S.F.Ratio      perc.alumni
 Min.   : 2.50   Min.   : 0.00
 1st Qu.:11.50   1st Qu.:13.00
 Median :13.60   Median :21.00
 Mean   :14.09   Mean   :22.74
 3rd Qu.:16.50   3rd Qu.:31.00
 Max.   :39.80   Max.   :64.00
     Expend        Grad.Rate
 Min.   : 3186   Min.   : 10.00
 1st Qu.: 6751   1st Qu.: 53.00
 Median : 8377   Median : 65.00
 Mean   : 9660   Mean   : 65.46
 3rd Qu.:10830   3rd Qu.: 78.00
 Max.   :56233   Max.   :118.00

# ----------------------------------------------------------
# 4. Scatterplot matrix

> pairs(college[, 2:10], main = "Scatterplot Matrix of First 10 Variables")
> boxplot(Outstate ~ Private, data = college,
+ main = "Outstate Tution by Private vs Public Schools,"
+ xlab = "Private School",
# ----------------------------------------------------------
# TODO:
# - Create a scatterplot matrix of the first 10 variables

# ----------------------------------------------------------
# 5. Boxplots: Out-of-state tuition by Private/Public
# ----------------------------------------------------------
# TODO:
# - Create side-by-side boxplots of Outstate by Private status

> boxplot(Outstate ~Private, data = college,
+         main = "Outstate Tuition by Private vs Public Schools",
+ xlab = "Private School",
+ ylab = "Outside Tuition ($)",
+ col = c("lightblue", "lightgreen"))
# ----------------------------------------------------------
# 6. Create Elite variable
# ----------------------------------------------------------
# TODO:
# - Define Elite = "Yes" if Top10perc > 50, otherwise "No"
# - Add Elite to the dataset as a factor
# - Report counts of Elite vs. Non-Elite schools

> college$Elite <- ifelse(college$Top10perc > 50, "Yes", "No")
> college$Elite <- factor(college$Elite)
> head(college$Elite)
[1] No  No  No  Yes No  No
Levels: No Yes
> table(college$Elite)

# TODO:
# - Create side-by-side boxplots of Outstate by Elite status


# ----------------------------------------------------------
# 7. Histograms
# ----------------------------------------------------------
# TODO:
# - Choose at least three quantitative variables
# - For each, create histograms with different numbers of bins


> boxplot(Outstate ~Private, data = college,
+         main = "Outstate Tuition by Private vs Public Schools",
+ xlab = "Private School",
+ ylab = "Outside Tuition ($)",
+ col = c("lightblue", "lightgreen"))
> college$Elite <- ifelse(college$Top10perc > 50, "Yes", "No")
> college$Elite <- factor(college$Elite)
> head(college$Elite)
[1] No  No  No  Yes No  No
Levels: No Yes
> table(college$Elite)

 No Yes
699  78
> hist(college$S.F.Ratio, main = "Histogram of Student-Faculty Ratio (Default bins)", xlab = S.F.Ratio, col = "lightblue")
Error: object 'S.F.Ratio' not found

> hist(college$S.F.Ratio,)
> hist(college$S.F.Ratio,
+ main = "Histogram of Student-Faculty Ratio (Default bins)",
+ xlab = "S.F.Ratio",
+ col = "lightblue")
> hist(college$S.F.Ratio,
+ breaks = 10,
+ main = "Histogram of Student-Faculty Ratio (10 bins)",
+ xlab = "S.F.Ratio",
+ col = "salmon")
> hist(college$S.F.Ratio,
+ breaks = 25,
+ main = "Histogram of Student-Faculty Ratio (25 bins)",
+ xlab = "S.F.Ratio",
+ col = "lightgreen")
>
> hist(college$Apps, main = "Histogram of Applications (Default bins)", xlab = "Apps", col = "lightblue")
> hist(college$Expend, main = "Histogram of Expenditure (Default bins)", xlab = "Expend", col = "lightblue")
> hist(college$Apps, breaks = 20, main = "Histogram of Applications (20 bins)", xlab = "Apps", col = "lightgreen")
> hist(college$Apps, breaks = 50, main = "Histogram of Applications (50 bins)", xlab = "Apps", col = "salmon")
> hist(college$Expend, breaks = 15, main = "Histogram of Expenditure (15 bins)", xlab = "Expend", col = "lightgreen")
> hist(college$Expend, breaks = 30, main = "Histogram of Expenditure (30 bins)", xlab = "Expend", col = "salmon")


# ----------------------------------------------------------
# End of Script
# ----------------------------------------------------------
# Make sure this script runs from start to finish without errors.

# NOTES: From this dataset I can conclude serveral interesting patterns. Tuition
# tends to be much higher for private school selections over private school coming
# from the boxplots of Out of state tution. Not only do they see the most intutiton,
# private schools also see a much more wide range of tutitions comparitavely to public schooling. Similarly, when looking into the Elite status variable in the data set, elite schools tend to have evem a much higher tuition than non-Elite
# school. This aligns with some of the expecations of going to an Elite school and
# paying a much higher tution than the rest. Elite schools are attracting a higher proportion of students from the top 10% of their highschool as well as investing in more resources.
# The histograms I have provided insight into the distributions of key numeric variables. S.F.Ratio and Apps both show right-skewed distributions, with many school clustered at lower values with a few insitutions with very high student to faculty ratios or exceptionally large applicat pools as outliers. The scatterplot matrix highlights some potential associations among the variables from school with higher gradutation rates. Grad.Rate suggests that financial investments may link students and their outcomes. Overall from what I saw in these patters show details of factors that influence student sucess from influencing tution.



(INCASE MISSED))


R version 4.5.2 (2025-10-31) -- "[Not] Part in a Rumble"
Copyright (C) 2025 The R Foundation for Statistical Computing
Platform: aarch64-apple-darwin20

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

> library(readr)
> College <- read_csv("Desktop/College.csv")
New names:
• `` -> `...1`
Rows: 777 Columns: 19
── Column specification ─────────────────────────────────────────────────────────
Delimiter: ","
chr  (2): ...1, Private
dbl (17): Apps, Accept, Enroll, Top10perc, Top25perc, F.Undergrad, P.Undergra...

ℹ Use `spec()` to retrieve the full column specification for this data.
ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
> View(College)
> college <- read.csv("College.csv", row.names = 1)
Error in file(file, "rt") : cannot open the connection
In addition: Warning message:
In file(file, "rt") :
  cannot open file 'College.csv': No such file or directory

> getwd()
[1] "/Users/antoniogonzalez"
> college <- read.csv("/Users/antoniogonzalez/Desktop/College.csv", row.names = 1)
> head(college)
                             Private Apps
Abilene Christian University     Yes 1660
Adelphi University               Yes 2186
Adrian College                   Yes 1428
Agnes Scott College              Yes  417
Alaska Pacific University        Yes  193
Albertson College                Yes  587
                             Accept Enroll
Abilene Christian University   1232    721
Adelphi University             1924    512
Adrian College                 1097    336
Agnes Scott College             349    137
Alaska Pacific University       146     55
Albertson College               479    158
                             Top10perc
Abilene Christian University        23
Adelphi University                  16
Adrian College                      22
Agnes Scott College                 60
Alaska Pacific University           16
Albertson College                   38
                             Top25perc
Abilene Christian University        52
Adelphi University                  29
Adrian College                      50
Agnes Scott College                 89
Alaska Pacific University           44
Albertson College                   62
                             F.Undergrad
Abilene Christian University        2885
Adelphi University                  2683
Adrian College                      1036
Agnes Scott College                  510
Alaska Pacific University            249
Albertson College                    678
                             P.Undergrad
Abilene Christian University         537
Adelphi University                  1227
Adrian College                        99
Agnes Scott College                   63
Alaska Pacific University            869
Albertson College                     41
                             Outstate
Abilene Christian University     7440
Adelphi University              12280
Adrian College                  11250
Agnes Scott College             12960
Alaska Pacific University        7560
Albertson College               13500
                             Room.Board Books
Abilene Christian University       3300   450
Adelphi University                 6450   750
Adrian College                     3750   400
Agnes Scott College                5450   450
Alaska Pacific University          4120   800
Albertson College                  3335   500
                             Personal PhD
Abilene Christian University     2200  70
Adelphi University               1500  29
Adrian College                   1165  53
Agnes Scott College               875  92
Alaska Pacific University        1500  76
Albertson College                 675  67
                             Terminal
Abilene Christian University       78
Adelphi University                 30
Adrian College                     66
Agnes Scott College                97
Alaska Pacific University          72
Albertson College                  73
                             S.F.Ratio
Abilene Christian University      18.1
Adelphi University                12.2
Adrian College                    12.9
Agnes Scott College                7.7
Alaska Pacific University         11.9
Albertson College                  9.4
                             perc.alumni
Abilene Christian University          12
Adelphi University                    16
Adrian College                        30
Agnes Scott College                   37
Alaska Pacific University              2
Albertson College                     11
                             Expend Grad.Rate
Abilene Christian University   7041        60
Adelphi University            10527        56
Adrian College                 8735        54
Agnes Scott College           19016        59
Alaska Pacific University     10922        15
Albertson College              9727        55
> str(college)
'data.frame':    777 obs. of  18 variables:
 $ Private    : chr  "Yes" "Yes" "Yes" "Yes" ...
 $ Apps       : int  1660 2186 1428 417 193 587 353 1899 1038 582 ...
 $ Accept     : int  1232 1924 1097 349 146 479 340 1720 839 498 ...
 $ Enroll     : int  721 512 336 137 55 158 103 489 227 172 ...
 $ Top10perc  : int  23 16 22 60 16 38 17 37 30 21 ...
 $ Top25perc  : int  52 29 50 89 44 62 45 68 63 44 ...
 $ F.Undergrad: int  2885 2683 1036 510 249 678 416 1594 973 799 ...
 $ P.Undergrad: int  537 1227 99 63 869 41 230 32 306 78 ...
 $ Outstate   : int  7440 12280 11250 12960 7560 13500 13290 13868 15595 10468 ...
 $ Room.Board : int  3300 6450 3750 5450 4120 3335 5720 4826 4400 3380 ...
 $ Books      : int  450 750 400 450 800 500 500 450 300 660 ...
 $ Personal   : int  2200 1500 1165 875 1500 675 1500 850 500 1800 ...
 $ PhD        : int  70 29 53 92 76 67 90 89 79 40 ...
 $ Terminal   : int  78 30 66 97 72 73 93 100 84 41 ...
 $ S.F.Ratio  : num  18.1 12.2 12.9 7.7 11.9 9.4 11.5 13.7 11.3 11.5 ...
 $ perc.alumni: int  12 16 30 37 2 11 26 37 23 15 ...
 $ Expend     : int  7041 10527 8735 19016 10922 9727 8861 11487 11644 8991 ...
 $ Grad.Rate  : int  60 56 54 59 15 55 63 73 80 52 ...
> summary(college)
   Private               Apps
 Length:777         Min.   :   81
 Class :character   1st Qu.:  776
 Mode  :character   Median : 1558
                    Mean   : 3002
                    3rd Qu.: 3624
                    Max.   :48094
     Accept          Enroll
 Min.   :   72   Min.   :  35
 1st Qu.:  604   1st Qu.: 242
 Median : 1110   Median : 434
 Mean   : 2019   Mean   : 780
 3rd Qu.: 2424   3rd Qu.: 902
 Max.   :26330   Max.   :6392
   Top10perc       Top25perc
 Min.   : 1.00   Min.   :  9.0
 1st Qu.:15.00   1st Qu.: 41.0
 Median :23.00   Median : 54.0
 Mean   :27.56   Mean   : 55.8
 3rd Qu.:35.00   3rd Qu.: 69.0
 Max.   :96.00   Max.   :100.0
  F.Undergrad     P.Undergrad
 Min.   :  139   Min.   :    1.0
 1st Qu.:  992   1st Qu.:   95.0
 Median : 1707   Median :  353.0
 Mean   : 3700   Mean   :  855.3
 3rd Qu.: 4005   3rd Qu.:  967.0
 Max.   :31643   Max.   :21836.0
    Outstate       Room.Board
 Min.   : 2340   Min.   :1780
 1st Qu.: 7320   1st Qu.:3597
 Median : 9990   Median :4200
 Mean   :10441   Mean   :4358
 3rd Qu.:12925   3rd Qu.:5050
 Max.   :21700   Max.   :8124
     Books           Personal
 Min.   :  96.0   Min.   : 250
 1st Qu.: 470.0   1st Qu.: 850
 Median : 500.0   Median :1200
 Mean   : 549.4   Mean   :1341
 3rd Qu.: 600.0   3rd Qu.:1700
 Max.   :2340.0   Max.   :6800
      PhD            Terminal
 Min.   :  8.00   Min.   : 24.0
 1st Qu.: 62.00   1st Qu.: 71.0
 Median : 75.00   Median : 82.0
 Mean   : 72.66   Mean   : 79.7
 3rd Qu.: 85.00   3rd Qu.: 92.0
 Max.   :103.00   Max.   :100.0
   S.F.Ratio      perc.alumni
 Min.   : 2.50   Min.   : 0.00
 1st Qu.:11.50   1st Qu.:13.00
 Median :13.60   Median :21.00
 Mean   :14.09   Mean   :22.74
 3rd Qu.:16.50   3rd Qu.:31.00
 Max.   :39.80   Max.   :64.00
     Expend        Grad.Rate
 Min.   : 3186   Min.   : 10.00
 1st Qu.: 6751   1st Qu.: 53.00
 Median : 8377   Median : 65.00
 Mean   : 9660   Mean   : 65.46
 3rd Qu.:10830   3rd Qu.: 78.00
 Max.   :56233   Max.   :118.00
> pairs(college[, 1:10], main = "Scatterplot Matrix of First 10 Variables")
Error in pairs.default(college[, 1:10], main = "Scatterplot Matrix of First 10 Variables") :
  non-numeric argument to 'pairs'

> pairs(college[, 2:10], main = "Scatterplot Matrix of First 10 Variables")
> boxplot(Outstate ~ Private, data = college,
+ main = "Outstate Tution by Private vs Public Schools,"
+ xlab = "Private School",
Error: unexpected symbol in:
"main = "Outstate Tution by Private vs Public Schools,"
xlab"

> bloxplot(Outstate ~ Private, data = college,)
Error in bloxplot(Outstate ~ Private, data = college, ) :
  could not find function "bloxplot"

> boxplot(Outside ~Private, data = college,
+ main = "Outstate Tuition by Private vs Public Schools",
+ xlab = "Private School",
+ ylab = "Outside Tuition ($)",
+ col = c("lightblue", "lightgreen"))
Error in eval(predvars, data, env) : object 'Outside' not found

> boxplot(Outstate ~Private, data = college,
+         + main = "Outstate Tuition by Private vs Public Schools",
Error: unexpected '=' in:
"boxplot(Outstate ~Private, data = college,
        + main ="

> boxplot(Outstate ~Private, data = college,
+         main = "Outstate Tuition by Private vs Public Schools",
+ xlab = "Private School",
+ ylab = "Outside Tuition ($)",
+ col = c("lightblue", "lightgreen"))
> college$Elite <- ifelse(college$Top10perc > 50, "Yes", "No")
> college$Elite <- factor(college$Elite)
> head(college$Elite)
[1] No  No  No  Yes No  No
Levels: No Yes
> table(college$Elite)

 No Yes
699  78
> hist(college$S.F.Ratio, main = "Histogram of Student-Faculty Ratio (Default bins)", xlab = S.F.Ratio, col = "lightblue")
Error: object 'S.F.Ratio' not found

> hist(college$S.F.Ratio,)
> hist(college$S.F.Ratio,
+ main = "Histogram of Student-Faculty Ratio (Default bins)",
+ xlab = "S.F.Ratio",
+ col = "lightblue")
> hist(college$S.F.Ratio,
+ breaks = 10,
+ main = "Histogram of Student-Faculty Ratio (10 bins)",
+ xlab = "S.F.Ratio",
+ col = "salmon")
> hist(college$S.F.Ratio,
+ breaks = 25,
+ main = "Histogram of Student-Faculty Ratio (25 bins)",
+ xlab = "S.F.Ratio",
+ col = "lightgreen")
>
> hist(college$Apps, main = "Histogram of Applications (Default bins)", xlab = "Apps", col = "lightblue")
> hist(college$Expend, main = "Histogram of Expenditure (Default bins)", xlab = "Expend", col = "lightblue")
> hist(college$Apps, breaks = 20, main = "Histogram of Applications (20 bins)", xlab = "Apps", col = "lightgreen")
> hist(college$Apps, breaks = 50, main = "Histogram of Applications (50 bins)", xlab = "Apps", col = "salmon")
> hist(college$Expend, breaks = 15, main = "Histogram of Expenditure (15 bins)", xlab = "Expend", col = "lightgreen")
> hist(college$Expend, breaks = 30, main = "Histogram of Expenditure (30 bins)", xlab = "Expend", col = "salmon")
> 
