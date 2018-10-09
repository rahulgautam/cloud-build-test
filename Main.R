#!/usr/bin/env Rscript
args = commandArgs(trailingOnly=TRUE)

# Gets as args <age, sex, location_row_indx, bound, OR_model, expousure>
if (length(args) < 6) {
  stop("At least 5 argument must be supplied", call.=FALSE)
} 

# PARAMS
age = as.numeric(args[1])
sex = args[2]
location_indx = as.numeric(args[3])


MORTALITY = args[4]
OR = args[5]
EXPOUSURE = args[6]

folder_name = "output"

print("Starting....")
args
start.time <- Sys.time()
start.time

library(XLConnect) # to read/write XLS & XLSX sheets
library(compiler)
library(plyr)
library(dict)

