if(!'RCurl' %in% library()$results[,1]){install.packages('RCurl')}
if(!'dplyr' %in% library()$results[,1]){install.packages('dplyr')}
if(!'stringr' %in% library()$results[,1]){install.packages('stringr')}
library(RCurl);library(dplyr);library(stringr)

data_url = "https://rdpeng.github.io/MAAIT/maait.csv"
maait_data = read.csv(data_url)
save(maait_data, file = file.path("data", "maait_data.RData"))

