# 1) Pakiety NAJPIERW
library(haven)     # do .sav
library(tidyverse) # opcjonalnie

getwd()
list.files()

data_dir <- "~/Desktop/studiaUWr/R/Dane"
data_dir_expanded <- path.expand(data_dir)
data_dir_expanded
dir.exists(data_dir_expanded)
list.files(data_dir_expanded)


# ustaw ręcznie katalog roboczy na folder z plikiem
setwd("~/Desktop/studiaUWr/R/Dane")
WBD <- haven::read_sav("Blackwelletal2015BDIallitemsalltimepoints.sav")

print(head(WBD))

d<- data.frame(ID = c("s1", "s2", "s3", "s4"), 
A = c("a1", "a2", "a3", NA), 
X1 = c(1, 2, 3, 4), 
X2 = c(5, 6, "a", 8), 
X3 = c(9, 10, 11, 12))

print(head(d))

View(d)

d[,4]

attach(d)

