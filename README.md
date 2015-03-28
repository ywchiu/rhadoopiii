RHadoop Course Material
=============

Slideshare: https://www.slideshare.net/secret/gDf3JYJRPWzkf5

Source Code: http://rpubs.com/ywchiu/25570


$ yum install libxml2-devel

$ sudo yum install curl-devel

$ sudo R

> install.packages(c("Rcurl", "httr"),  dependencies = TRUE)

> install.packages("devtools", dependencies = TRUE)

> library(devtools)

> install_github("pryr", "hadley")

> install.packages(c("R.methodsS3", "hydroPSO"),  dependencies = TRUE)


$ wget -no-check-certificate  https://raw.github.com/RevolutionAnalytics/plyrmr/master/build/plyrmr_0.5.0.tar.gz

$ sudo R CMD INSTALL plyrmr_0.5.0.tar.gz


# 2330 Analysis
==========================

> tw2330 = read.csv("~/Downloads/tw2330.csv", head=TRUE)

> head(tw2330)

> head(tw2330,10)

> tail(tw2330,10)

> str(tw2330)

> tw2330$Date = as.Date(tw2330$Date)

> str(tw2330)

> tw2330[tw2330$Date >='2014-03-01' & tw2330$Date < '2014-09-01'  ,]

> tw2330_mar_sep = tw2330[tw2330$Date >='2014-03-01' & tw2330$Date < '2014-09-01'  ,]

> min(tw2330_mar_sep$Close)

> max(tw2330_mar_sep$Close)

> mean(tw2330_mar_sep$Close)

> hist(tw2330_mar_sep$Close)

> hist(tw2330$Close)

> boxplot(tw2330$Close)

> head(tw2330[order(tw2330$Close, decreasing=TRUE)  ,])

> tw2330$tf =  ifelse(tw2330$Close - tw2330$Open > 0 , TRUE, FALSE)

> table(tw2330$tf)
