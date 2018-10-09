#!/usr/local/bin/Rscript
f = file("stdin")
f
r = readLines(file("stdin"))
r = strsplit(r, " ")
r[[1]][1]
r[[1]][2]
#writeLines(readLines(file("stdin")))
