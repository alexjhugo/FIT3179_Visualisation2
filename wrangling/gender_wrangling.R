library(reshape2)
setwd("C:/Users/alxnd/OneDrive/Documents/Monash/S2 2022/FIT3179/Viz2")

df <- read.csv('EntriesGender.csv')
df$Total <- NULL
View(df)
dfLong <- melt(df, id.vars=c("Discipline"))
View(dfLong)

colnames(dfLong) <- c("Discipline", "Gender", "Count")
dfLong <- dfLong[order(dfLong$Count, decreasing=TRUE),]

write.csv(dfLong, "C:/Users/alxnd/OneDrive/Documents/Monash/S2 2022/FIT3179/Viz2/EntriesGenderLONG.csv", row.names=FALSE)

popularDisciplines <- c("Artistic Gymnastics","Rhythmic Gymnastics","Trampoline Gymnastics",
                        "Swimming","Artistic Swimming","Athletics","Weightlifting",
                        "Basketball","Football","Volleyball","Judo","Tennis","Rugby Sevens")
                        

dfLongTop <- dfLong[dfLong$Discipline %in% popularDisciplines,]
write.csv(dfLongTop, "C:/Users/alxnd/OneDrive/Documents/Monash/S2 2022/FIT3179/Viz2/EntriesGenderPopularLONG.csv", row.names=FALSE)

