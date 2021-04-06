README
================
Michael Puerto
4/6/2021

# Predicting LSF post success

## yada yada

# Tools used

Example

``` r
library(Rchamp)
library(readr)
```

    ## Warning: package 'readr' was built under R version 3.6.2

``` r
library(dplyr)
```

    ## Warning: package 'dplyr' was built under R version 3.6.3

    ## 
    ## Attaching package: 'dplyr'

    ## The following objects are masked from 'package:stats':
    ## 
    ##     filter, lag

    ## The following objects are masked from 'package:base':
    ## 
    ##     intersect, setdiff, setequal, union

``` r
emote_dictionary <- read_csv('LSF-Success/emote_dictionary.csv')
```

    ## Parsed with column specification:
    ## cols(
    ##   emote_name = col_character(),
    ##   emote_image = col_character(),
    ##   emote_link = col_character()
    ## )

``` r
#Rchamp::twitch_auth()

#Rchamp::get_clip_chat()



`3_23_reddit.csv` <- read_csv('3_23_reddit.csv')
```

    ## Warning: Missing column names filled in: 'X1' [1]

    ## Parsed with column specification:
    ## cols(
    ##   X1 = col_double(),
    ##   `Post Title` = col_character(),
    ##   `Post Score` = col_double(),
    ##   `Created UTC` = col_datetime(format = ""),
    ##   `Post Author` = col_character(),
    ##   domain = col_character(),
    ##   url = col_character()
    ## )

``` r
`3_23_reddit.csv` %>% head()
```

    ## # A tibble: 6 x 7
    ##      X1 `Post Title` `Post Score` `Created UTC`       `Post Author` domain url  
    ##   <dbl> <chr>               <dbl> <dttm>              <chr>         <chr>  <chr>
    ## 1     0 "The future~          904 2021-03-22 16:03:49 Good_Guy_Dev  self.~ http~
    ## 2     1 "Minecraft ~         3756 2021-03-23 11:13:08 Cyberdickk    twitt~ http~
    ## 3     2 "Chang Gang~         6210 2021-03-23 05:43:58 Xenoleff      clips~ http~
    ## 4     3 "Minecraft ~         3154 2021-03-23 07:44:07 ninjyte       twitt~ http~
    ## 5     4 "Kebun on c~          440 2021-03-23 14:10:58 Pepe_Gui      twitt~ http~
    ## 6     5 "Dream down~         1927 2021-03-23 05:27:10 AS43_         clips~ http~
