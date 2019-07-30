#12/03/2019
#Data visualization using two way contigency table in R.
#CIAT data and research methods project
#Prepared by Rachael Mburu

#calling the installed package.
library(agridat)
#loading inbuilt data in R.
adugna.sorghum
#Renaming the data to the preffered name.
sorghum_data=adugna.sorghum
#Plotting a two way table.
sorghum_table=table(sorghum_data$loc,sorghum_data$trial);sorghum_table
#Plotting a two way table using xtabs.
sorgum_table=xtabs(~loc+trial,data = sorghum_data);sorghum_table
#Adding margins in a two way table.
addmargins(sorghum_table)
#Plotting a two way proportion table.
prop_table=prop.table(sorghum_table);prop_table
#Adding margins in a two way proportion table.
addmargins(prop_table)
#Computing row sums of a table
margin.table(sorghum_table,1)
#Computing column sums of a table
margin.table(sorghum_table,2)
#Alternatively,
#Loading library gmodels
library(gmodels)
#Plotting a two way table.
sorghum_table=CrossTable(sorghum_data$loc,sorghum_data$trial)

#End.
