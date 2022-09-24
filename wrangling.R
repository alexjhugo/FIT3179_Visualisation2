# import necessary libraries and set working directory
library(reshape2)
setwd("C:/Users/alxnd/OneDrive/Documents/Monash/S2 2022/FIT3179/Viz2")

# construct joined dataframe
countriesLatLongDF <- read.csv("country_lat_long.csv")
medalsDF <- read.csv("country_medals.csv")
df <- merge(medalsDF, countriesLatLongDF, "Country")

# normal dataframe
write.csv(df, 
          "C:/Users/alxnd/OneDrive/Documents/Monash/S2 2022/FIT3179/Viz2/medal_countries_map.csv", 
          row.names = TRUE)

# long dataframe
dfLong <- melt(df, id.vars=c("Country", "Rank", "Total", "Rank.by.Total",
                             "Country.Code", "Latitude", "Longitude"))
write.csv(df, 
          "C:/Users/alxnd/OneDrive/Documents/Monash/S2 2022/FIT3179/Viz2/medal_countries_map_LONG.csv", 
          row.names = TRUE)
