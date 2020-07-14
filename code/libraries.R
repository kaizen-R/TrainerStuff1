## 
# File: libraries.R
# Author: Nick
# Last edited: 2020/03/sometime someday.
## What is this?
# Just a list of libraries in R that I have found useful at some point or another.
# Running this allows me to worry a bit less about dependencies during "quick work".
# Might NOT be a best practice though and CERTAINLY NOT recommended for production envs,
# but good enough for quick & dirty setups, lab envs, etc.
## Warning:
# To be used only in contained environments, no warranty of any kind here.
## Drawbacks:
# Initial setup takes forever...
# It expects many things of the underlying system...
# And this is very poorly documented.
##

mylibs <- c("fitdistrplus", "car", "ltm", "bnlearn", "naivebayes", "lmtest",
            "cluster", "dbscan", "MASS", "rpart", "Rmisc", "neuralnet", 
            "nnet", "e1071", "rpart.plot", "SnowballC", "wordcloud", 
            "corrplot", "rcompanion", "relaimpo", "gvlma", "tm", "stringi",
            "reshape2", "RCurl", "C50", "tsoutliers", "ggplot2", "rAmCharts",
            "ggvis", "InformationValue", "factoextra", "openair", "plotly",
            "devtools", "XML", "rjson", "dplyr", "DescTools", "treemap",
            "tidyr", "caret", "ggpubr", "DT", "psych", "igraph", "network",
            "visNetwork", "shiny", "shinyWidgets", "pryr")

myloader <- function(onelib) {
  if(!(onelib %in% installed.packages())) {
     out <- tryCatch(
            {
              utils::install.packages(onelib)
            },
            error=function(cond) {
              message(paste("Package install is not working for:", onelib))
              message("Original error message:")
              message(cond)
              return("error")
            },
            warning=function(cond) {
              message(paste("Package install caused a warning for package:", onelib))
              message("Original warning message:")
              message(cond)
              return("warning")
            },
            finally={
              #message("Some other message at the end")
            }
          )
  } else {
	  out <- "Nothing to install"
  }
  return(out)
}

for(mylib in mylibs) {
  resultloading <- myloader(mylib)
  print(resultloading)
}
