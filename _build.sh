#!/bin/sh

set -ev

cd programs
Rscript -e "knitr::knit('README.Rmd')"

