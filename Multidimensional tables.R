#12/03/2019
#Data visualization using multidimensional way tables in R.
#CIAT data and research methods project
#Prepared by Rachael Mburu

#calling the installed package.
library(agridat)
#loading inbuilt data in R.
adugna.sorghum
#Renaming the data to the preffered name.
sorghum_data=adugna.sorghum
#Plotting a three way contigency table.
table_1<-xtabs(~loc+trial+year,data = sorghum_data)
#Printing a three way contigency table in a compact manner.
ftable(table_1)
#Adding margins to a three way contigency table.
ftable(addmargins(table_1,c(2,3)))
#Plotting a three way proportion contigency table.
ftable(prop.table(table_1))
#Adding margins to a three way proportion contigency table.
ftable(addmargins(prop.table(table_1,c(1,2)),3))

#End.