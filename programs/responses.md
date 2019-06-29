Programs: Replication and Reproducibility in Social Sciences and Statistics: Context, Concerns, and Concrete Measures
========================================================
author: Lars Vilhuber
date: 2019-06-29
autosize: true
width: 1920
height: 900





Download the survey data from Google Sheet
===================================
The responses to the surveys are stored on Google Sheets. The following program is NOT automatically run when executing this README - change the `eval=FALSE` to `eval=TRUE` to run it, or run it manually.


```r
source(file.path(programs,"01_download_surveys.R"),echo=TRUE)
source(file.path(programs,"02_combine_surveys.R"),echo=TRUE)
```


Results
=======
We can now show the results. 

- Latest location: UQAM
- 77 responses (of which 18 from UQAM)
- Latest responses: 4/8/2019 11:40:08

Faculty status
=================

<img src="responses-figure/faculty-1.png" title="Knowledge,by faculty status" alt="Knowledge,by faculty status" width="1920px" height="720px" />

Faculty status (UQAM)
=================

<img src="responses-figure/faculty_latest-1.png" title="Knowledge,by faculty status" alt="Knowledge,by faculty status" width="1920px" height="720px" />


Have You Published?
============

<img src="responses-figure/published-1.png" title="Published?" alt="Published?" width="1920px" height="720px" />
Have You Published (UQAM)?
============

<img src="responses-figure/published_latest-1.png" title="Published?" alt="Published?" width="1920px" height="720px" />


Fields
======

<img src="responses-figure/field-1.png" title="plot of chunk field" alt="plot of chunk field" width="1920px" height="720px" />

Knowledge of Github, by faculty status
===============

<img src="responses-figure/github_by_faculty-1.png" title="Knowledge,by faculty status" alt="Knowledge,by faculty status" width="1920px" height="720px" />










```
Error in eval(parse_only(code), envir = envir) : 
  object 'lastest.location' not found
```
