#12/03/2019
#Data visualization using one way tables in R.
#CIAT data and research methods project
#Prepared by Rachael Mburu

#calling the installed package.
library(agridat)
#loading inbuilt data in R.
adugna.sorghum
#Renaming the data to the preffered name.
sorghum_data=adugna.sorghum
#Plotting a one way table of a categorical vector of a dataframe.
sorghum_table=table(sorghum_data$loc);sorghum_table
#Adding margins to a one way anova.
addmargins(sorghum_table)
#Plotting a one way proportion table.
prop_table=prop.table(sorghum_table)
#Adding margins to a one way proportion table.
addmargins(prop_table)
#End.
