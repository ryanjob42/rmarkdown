#!/usr/bin/env Rscript
args = commandArgs(trailingOnly=TRUE)

# Must have exactly one argument.
if (length(args) != 1) {
    stop("You must specify an RMarkdown file to render.")
}

rmarkdown::render(args[1])
