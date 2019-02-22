---
title: "Programs: Replication and Reproducibility in Social Sciences and Statistics: Context, Concerns, and Concrete Measures"
author: "Lars Vilhuber"
date: "2019-02-21"
output: 
  html_document: 
    keep_md: yes
    number_sections: yes
---


# Program directory
This directory contains all programs necessary to run the download and analysis. They can be run separately, or from the master document (this README). 

## Setup
Most parameters are set in the `config.R`:

```r
source(file.path(rprojroot::find_rstudio_root_file(),"pathconfig.R"),echo=FALSE)
source(file.path(programs,"config.R"), echo=FALSE)
```

Any libraries needed are called and if necessary installed through `libraries.R`:


```r
knitr::opts_chunk$set(warning = FALSE, message = TRUE, include = FALSE)
source(file.path(basepath,"global-libraries.R"),echo=FALSE)
```

```
## Loading required package: dplyr
```

```
## 
## Attaching package: 'dplyr'
```

```
## The following objects are masked from 'package:stats':
## 
##     filter, lag
```

```
## The following objects are masked from 'package:base':
## 
##     intersect, setdiff, setequal, union
```

```
## Loading required package: devtools
```

```
## Loading required package: rprojroot
```

```
## Loading required package: tictoc
```

```r
source(file.path(programs,"libraries.R"), echo=FALSE)
```

```
## Loading required package: googlesheets
```

```
## Loading required package: rcrossref
```

```
## Loading required package: readr
```

```
## Loading required package: tidyr
```

```
## Loading required package: summarytools
```



## Download the survey data from Google Sheet
The responses to the surveys are stored on Google Sheets. 

```r
source(file.path(programs,"01_download_surveys.R"),echo=TRUE)
```

## Combine various sites into one file
We combine the various files - it evolves a bit over time, so we need to possibly do some consolidation.

TBD


## Core analysis and figures
We can now tabulate the results from the survey

TBD
