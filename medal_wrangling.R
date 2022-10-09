# import necessary libraries and set working directory
library(reshape2)
setwd("C:/Users/alxnd/OneDrive/Documents/Monash/S2 2022/FIT3179/Viz2")

# construct joined dataframe
countriesLatLongDF <- read.csv("country_lat_long.csv")
medalsDF <- read.csv("country_medals.csv")
df <- merge(medalsDF, countriesLatLongDF, "Country")
View(df)

# normal dataframe
write.csv(df, 
          "C:/Users/alxnd/OneDrive/Documents/Monash/S2 2022/FIT3179/Viz2/medal_countries_map.csv", 
          row.names = TRUE)

# long dataframe
dfLong <- melt(df, id.vars=c("Country", "Rank", "Total", "Rank.by.Total",
                             "Country.Code", "Latitude", "Longitude"))
names(dfLong)[8] = "MedalType"
names(dfLong)[9] = "Count"

dfLong$Total[dfLong$MedalType != 'Gold'] <- 0
write.csv(dfLong, 
          "C:/Users/alxnd/OneDrive/Documents/Monash/S2 2022/FIT3179/Viz2/medal_countries_map_LONG.csv", 
          row.names = TRUE)



# ISOTYPE PLOT DF
df <- df[order(df$Rank),]
df_ten <- head(df, 10)
df_ten

isotypeDf <- data.frame(Country=character(), MedalType=character())
divisor = 3
for (i in 1:nrow(df_ten)) {
  # initialise dataframe
  tempDf <- data.frame(Country=character(), MedalType=character())
  
  country <- df_ten[i,]$Country
  
  # count number of medals for each medal types of each country
  goldCount <- df_ten[i, ]$Gold %/% divisor
  silverCount <- df_ten[i, ]$Silver %/% divisor
  bronzeCount <- df_ten[i, ]$Bronze %/% divisor
  
  for (i in 1:goldCount) {
    tempDf[nrow(tempDf)+1, ] <- c(country, "Gold")
  }
  
  for (i in 1:silverCount) {
    tempDf[nrow(tempDf)+1, ] <- c(country, "Silver")
  }
  
  for (i in 1:bronzeCount) {
    tempDf[nrow(tempDf)+1, ] <- c(country, "Bronze")
  }
  
  isotypeDf <- rbind(isotypeDf, tempDf)
}

write.csv(isotypeDf, "C:/Users/alxnd/OneDrive/Documents/Monash/S2 2022/FIT3179/Viz2/medal_isotype.csv", row.names=TRUE)