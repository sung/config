Sys.setenv("plotly_username"="sunggong")
Sys.setenv("plotly_api_key"="aoAu3uwtcXuXFS7FOLUg")
options(editor="vim")

library(colorout)
library(data.table)
#library(scales)
#library(GenomicRanges)
#source("https://bioconductor.org/biocLite.R")
#source("~/Pipelines/config/graphic.R")
grDevices::X11.options(width = 12, height = 10, ypos = 0, xpos = 1000, pointsize = 10)

#https://stackoverflow.com/questions/520810/does-r-have-quote-like-operators-like-perls-qw
qw <- function(...) {sapply(match.call()[-1], deparse)}

local({
    r <- getOption("repos")
    #r["CRAN"] <- "https://cran.ma.imperial.ac.uk/"
    r["CRAN"] <- "https://www.stats.bris.ac.uk/R/"
    options(repos = r)
})

utils::assignInNamespace(
    "q", 
        function(save = "no", status = 0, runLast = TRUE) 
        {
                .Internal(quit(save, status, runLast))
        
        }, 
        "base"
)

message("n*** Successfully loaded .Rprofile ***n")
