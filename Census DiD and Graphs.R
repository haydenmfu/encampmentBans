library(tidycensus)
library(tidyverse)

readRenviron("~/.Renviron")
Sys.getenv("CENSUS_API_KEY")

age20 <- get_decennial(geography = "state", 
                       variables = "P13_001N", 
                       year = 2020,
                       sumfile = "dhc")
v20 <- load_variables(2020, "acs5", cache = TRUE)


#Import all of the Homeless Data (2020 is doesn't have unsheltered)
library(readr)
X2023CoC <- read_csv("C:/Users/hayden/Desktop/module_1/Research Project/2023CoC.csv")
Homeless2023 <- dplyr::select(X2023CoC, "CoC Number", "CoC Name", "Overall Homeless", "Sheltered Total Homeless", "Unsheltered Homeless")
Homeless2023$`Overall Homeless` <- Homeless2023$`Sheltered Total Homeless` + Homeless2023$`Unsheltered Homeless`

X2022CoC <- read_csv("C:/Users/hayden/Desktop/module_1/Research Project/2022CoC.csv")
Homeless2022 <- dplyr::select(X2022CoC, "CoC Number", "CoC Name", "Overall Homeless", "Sheltered Total Homeless", "Unsheltered Homeless")
Homeless2022$`Overall Homeless` <- Homeless2022$`Sheltered Total Homeless` + Homeless2022$`Unsheltered Homeless`

X2021CoC <- read_csv("C:/Users/hayden/Desktop/module_1/Research Project/2021CoC.csv")
Homeless2021 <- dplyr::select(X2021CoC, "CoC Number", "CoC Name", "Overall Homeless", "Sheltered Total Homeless", "Unsheltered Homeless")
Homeless2021$`Overall Homeless` <- Homeless2021$`Sheltered Total Homeless` + Homeless2021$`Unsheltered Homeless`

X2020CoC <- read_csv("C:/Users/hayden/Desktop/module_1/Research Project/2020CoC.csv")
Homeless2020 <- dplyr::select(X2020CoC, "CoC Number", "CoC Name", "Overall Homeless", "Sheltered Total Homeless", "Unsheltered Homeless")
Homeless2020$`Overall Homeless` <- Homeless2020$`Sheltered Total Homeless` + Homeless2020$`Unsheltered Homeless`

X2019CoC <- read_csv("C:/Users/hayden/Desktop/module_1/Research Project/2019CoC.csv")
Homeless2019 <- dplyr::select(X2019CoC, "CoC Number", "CoC Name", "Overall Homeless", "Sheltered Total Homeless", "Unsheltered Homeless")
Homeless2019$`Overall Homeless` <- Homeless2019$`Sheltered Total Homeless` + Homeless2019$`Unsheltered Homeless`

X2018CoC <- read_csv("C:/Users/hayden/Desktop/module_1/Research Project/2018CoC.csv")
Homeless2018 <- dplyr::select(X2018CoC, "CoC Number", "CoC Name", "Overall Homeless", "Sheltered Total Homeless", "Unsheltered Homeless")
Homeless2018$`Overall Homeless` <- Homeless2018$`Sheltered Total Homeless` + Homeless2018$`Unsheltered Homeless`

X2017CoC <- read_csv("C:/Users/hayden/Desktop/module_1/Research Project/2017CoC.csv")
Homeless2017 <- dplyr::select(X2017CoC, "CoC Number", "CoC Name", "Overall Homeless", "Sheltered Total Homeless", "Unsheltered Homeless")
Homeless2017$`Overall Homeless` <- Homeless2017$`Sheltered Total Homeless` + Homeless2017$`Unsheltered Homeless`

X2016CoC <- read_csv("C:/Users/hayden/Desktop/module_1/Research Project/2016CoC.csv")
Homeless2016 <- dplyr::select(X2016CoC, "CoC Number", "CoC Name", "Overall Homeless", "Sheltered Total Homeless", "Unsheltered Homeless")
Homeless2016$`Overall Homeless` <- Homeless2016$`Sheltered Total Homeless` + Homeless2016$`Unsheltered Homeless`

X2015CoC <- read_csv("C:/Users/hayden/Desktop/module_1/Research Project/2015CoC.csv")
Homeless2015 <- dplyr::select(X2015CoC, "CoC Number", "CoC Name", "Overall Homeless", "Sheltered Total Homeless", "Unsheltered Homeless")
Homeless2015$`Overall Homeless` <- Homeless2015$`Sheltered Total Homeless` + Homeless2015$`Unsheltered Homeless`

X2014CoC <- read_csv("C:/Users/hayden/Desktop/module_1/Research Project/2014CoC.csv")
Homeless2014 <- dplyr::select(X2014CoC, "CoC Number", "CoC Name", "Overall Homeless", "Sheltered Total Homeless", "Unsheltered Homeless")
Homeless2014$`Overall Homeless` <- Homeless2014$`Sheltered Total Homeless` + Homeless2014$`Unsheltered Homeless`

X2013CoC <- read_csv("C:/Users/hayden/Desktop/module_1/Research Project/2013CoC.csv")
Homeless2013 <- dplyr::select(X2013CoC, "CoC Number", "CoC Name", "Overall Homeless", "Sheltered Total Homeless", "Unsheltered Homeless")
Homeless2013$`Overall Homeless` <- Homeless2013$`Sheltered Total Homeless` + Homeless2013$`Unsheltered Homeless`

X2012CoC <- read_csv("C:/Users/hayden/Desktop/module_1/Research Project/2012CoC.csv")
Homeless2012 <- dplyr::select(X2012CoC, "CoC Number", "CoC Name", "Overall Homeless", "Sheltered Total Homeless", "Unsheltered Homeless")
Homeless2012$`Overall Homeless` <- Homeless2012$`Sheltered Total Homeless` + Homeless2012$`Unsheltered Homeless`

X2011CoC <- read_csv("C:/Users/hayden/Desktop/module_1/Research Project/2011CoC.csv")
Homeless2011 <- dplyr::select(X2011CoC, "CoC Number", "CoC Name", "Overall Homeless", "Sheltered Total Homeless", "Unsheltered Homeless")
Homeless2011$`Overall Homeless` <- Homeless2011$`Sheltered Total Homeless` + Homeless2011$`Unsheltered Homeless`

X2010CoC <- read_csv("C:/Users/hayden/Desktop/module_1/Research Project/2010CoC.csv")
Homeless2010 <- dplyr::select(X2010CoC, "CoC Number", "CoC Name", "Overall Homeless", "Sheltered Total Homeless", "Unsheltered Homeless")
Homeless2010$`Overall Homeless` <- Homeless2010$`Sheltered Total Homeless` + Homeless2010$`Unsheltered Homeless`

X2009CoC <- read_csv("C:/Users/hayden/Desktop/module_1/Research Project/2009CoC.csv")
Homeless2009 <- dplyr::select(X2009CoC, "CoC Number", "CoC Name", "Overall Homeless", "Sheltered Total Homeless", "Unsheltered Homeless")
Homeless2009$`Overall Homeless` <- Homeless2009$`Sheltered Total Homeless` + Homeless2009$`Unsheltered Homeless`

X2008CoC <- read_csv("C:/Users/hayden/Desktop/module_1/Research Project/2008CoC.csv")
Homeless2008 <- dplyr::select(X2008CoC, "CoC Number", "CoC Name", "Overall Homeless", "Sheltered Total Homeless", "Unsheltered Homeless")
Homeless2008$`Overall Homeless` <- Homeless2008$`Sheltered Total Homeless` + Homeless2008$`Unsheltered Homeless`

X2007CoC <- read_csv("C:/Users/hayden/Desktop/module_1/Research Project/2007CoC.csv")
Homeless2007 <- dplyr::select(X2007CoC, "CoC Number", "CoC Name", "Overall Homeless", "Sheltered Total Homeless", "Unsheltered Homeless")
Homeless2007$`Overall Homeless` <- Homeless2007$`Sheltered Total Homeless` + Homeless2007$`Unsheltered Homeless`

#Filter the data into just SF and Portland, combine it
#2021 only conducted a sheltered homes survey because of COVID
library(dplyr)
#x2023 <- Homeless2023[c(20,297,51,66),]
county_list <- c("CO-503", "CA-601", "OR-501", "CA-501", "NY-600", "CA-503", "NV-500", "TX-700", "CA-524", "CA-505","VA-602","VA-514","MD-504","MD-600","DC-500","MD-601","VA-601","FL-600","FL-606","FL-604","FL-601", "NH-500", "NH-501")
x2023 <- Homeless2023 %>% filter(`CoC Number` %in% county_list)
x2023$Year <- rep(2023, nrow(x2023))

x2022 <- Homeless2022 %>% filter(`CoC Number` %in% county_list)
x2022$Year <- rep(2022, nrow(x2022))

x2021 <- Homeless2021 %>% filter(`CoC Number` %in% county_list)
x2021$Year <- rep(2021, nrow(x2021))

x2020 <- Homeless2020 %>% filter(`CoC Number` %in% county_list)
x2020$Year <- rep(2020, nrow(x2020))

x2019 <- Homeless2019 %>% filter(`CoC Number` %in% county_list)
x2019$Year <- rep(2019, nrow(x2019))

x2018 <- Homeless2018 %>% filter(`CoC Number` %in% county_list)
x2018$Year <- rep(2018, nrow(x2018))

x2017 <- Homeless2017 %>% filter(`CoC Number` %in% county_list)
x2017$Year <- rep(2017, nrow(x2017))

x2016 <- Homeless2016 %>% filter(`CoC Number` %in% county_list)
x2016$Year <- rep(2016, nrow(x2016))

x2015 <- Homeless2015 %>% filter(`CoC Number` %in% county_list)
x2015$Year <- rep(2015, nrow(x2015))

x2014 <- Homeless2014 %>% filter(`CoC Number` %in% county_list)
x2014$Year <- rep(2014, nrow(x2014))

x2013 <- Homeless2013 %>% filter(`CoC Number` %in% county_list)
x2013$Year <- rep(2013, nrow(x2013))

x2012 <- Homeless2012 %>% filter(`CoC Number` %in% county_list)
x2012$Year <- rep(2012, nrow(x2012))

x2011 <- Homeless2011 %>% filter(`CoC Number` %in% county_list)
x2011$Year <- rep(2011, nrow(x2011))

x2010 <- Homeless2010 %>% filter(`CoC Number` %in% county_list)
x2010$Year <- rep(2010, nrow(x2010))

x2009 <- Homeless2009 %>% filter(`CoC Number` %in% county_list)
x2009$Year <- rep(2009, nrow(x2009))

x2008 <- Homeless2008 %>% filter(`CoC Number` %in% county_list)
x2008$Year <- rep(2008, nrow(x2008))

x2007 <- Homeless2007 %>% filter(`CoC Number` %in% county_list)
x2007$Year <- rep(2007, nrow(x2007))
totalHomeless <- rbind(x2023, x2022, x2021, x2020, x2019, x2018, x2017, x2016, x2015, x2014, x2013, x2012, x2011, x2010, x2009, x2008, x2007)

#Split data into counties
denHomeless <- totalHomeless[totalHomeless$`CoC Number` == "CO-503",]
pdxHomeless <- totalHomeless[totalHomeless$`CoC Number` == "OR-501",]
sfoHomeless <- totalHomeless[totalHomeless$`CoC Number` == "CA-501",]
sanHomeless <- totalHomeless[totalHomeless$`CoC Number` == "CA-601",]
nycHomeless <- totalHomeless[totalHomeless$`CoC Number` == "NY-600",]
smfHomeless <- totalHomeless[totalHomeless$`CoC Number` == "CA-503",]
lasHomeless <- totalHomeless[totalHomeless$`CoC Number` == "NV-500",]
houHomeless <- totalHomeless[totalHomeless$`CoC Number` == "TX-700",]

#Import population dataframes
denPopulation <- read_csv("C:/Users/hayden/Desktop/module_1/Research Project/denPopulation.csv")
sfoPopulation <- read_csv("C:/Users/hayden/Desktop/module_1/Research Project/sfoPopulation.csv")
sanPopulation <- read_csv("C:/Users/hayden/Desktop/module_1/Research Project/sanPopulation.csv")
pdxPopulation <- read_csv("C:/Users/hayden/Desktop/module_1/Research Project/pdxPopulation.csv")
nycPopulation <- read_csv("C:/Users/hayden/Desktop/module_1/Research Project/nycPopulation.csv")
smfPopulation <- read_csv("C:/Users/hayden/Desktop/module_1/Research Project/smfPopulation.csv")
lasPopulation <- read_csv("C:/Users/hayden/Desktop/module_1/Research Project/lasPopulation.csv")
houPopulation <- read_csv("C:/Users/hayden/Desktop/module_1/Research Project/houPopulation.csv")

#Sort all datasets tso they can be combined
pdxHomeless <- pdxHomeless[order(pdxHomeless$Year),]
sfoHomeless <- sfoHomeless[order(sfoHomeless$Year),]
denHomeless <- denHomeless[order(denHomeless$Year),]
sanHomeless <- sanHomeless[order(sanHomeless$Year),]
nycHomeless <- nycHomeless[order(nycHomeless$Year),]
smfHomeless <- smfHomeless[order(smfHomeless$Year),]
houHomeless <- houHomeless[order(houHomeless$Year),]
lasHomeless <- lasHomeless[order(lasHomeless$Year),]
denPopulation <- denPopulation[order(denPopulation$Year),]
pdxPopulation <- pdxPopulation[order(pdxPopulation$Year),]
sanPopulation <- sanPopulation[order(sanPopulation$Year),]
sfoPopulation <- sfoPopulation[order(sfoPopulation$Year),]
nycPopulation <- nycPopulation[order(nycPopulation$Year),]
smfPopulation <- smfPopulation[order(smfPopulation$Year),]
houPopulation <- houPopulation[order(houPopulation$Year),]
lasPopulation <- lasPopulation[order(lasPopulation$Year),]


#Move the population columns to the central state datasets
pdxHomeless$Populations <- pdxPopulation$Population
denHomeless$Populations <- denPopulation$Population
sfoHomeless$Populations <- sfoPopulation$Population
sanHomeless$Populations <- sanPopulation$Population
nycHomeless$Populations <- nycPopulation$Population
smfHomeless$Populations <- smfPopulation$Population
houHomeless$Populations <- houPopulation$Population
lasHomeless$Populations <- lasPopulation$Population

#Create a new column for proportion of homeless (out of city/county population)
pdxHomeless$`Overall Proportion` <- pdxHomeless$`Overall Homeless` / pdxHomeless$Populations
denHomeless$`Overall Proportion` <- denHomeless$`Overall Homeless` / denHomeless$Populations
sfoHomeless$`Overall Proportion` <- sfoHomeless$`Overall Homeless` / sfoHomeless$Populations
sanHomeless$`Overall Proportion` <- sanHomeless$`Overall Homeless` / sanHomeless$Populations
nycHomeless$`Overall Proportion` <- nycHomeless$`Overall Homeless` / nycHomeless$Populations
smfHomeless$`Overall Proportion` <- smfHomeless$`Overall Homeless` / smfHomeless$Populations
houHomeless$`Overall Proportion` <- houHomeless$`Overall Homeless` / houHomeless$Populations
lasHomeless$`Overall Proportion` <- lasHomeless$`Overall Homeless` / lasHomeless$Populations

#Create a new column for proportion of homeless that are sheltered
pdxHomeless$`Sheltered Proportion` <- pdxHomeless$`Sheltered Total Homeless` / pdxHomeless$`Overall Homeless`
denHomeless$`Sheltered Proportion` <- denHomeless$`Sheltered Total Homeless` / denHomeless$`Overall Homeless`
sanHomeless$`Sheltered Proportion` <- sanHomeless$`Sheltered Total Homeless` / sanHomeless$`Overall Homeless`
sfoHomeless$`Sheltered Proportion` <- sfoHomeless$`Sheltered Total Homeless` / sfoHomeless$`Overall Homeless`
nycHomeless$`Sheltered Proportion` <- nycHomeless$`Sheltered Total Homeless` / nycHomeless$`Overall Homeless`
smfHomeless$`Sheltered Proportion` <- smfHomeless$`Sheltered Total Homeless` / smfHomeless$`Overall Homeless`
houHomeless$`Sheltered Proportion` <- houHomeless$`Sheltered Total Homeless` / houHomeless$`Overall Homeless`
lasHomeless$`Sheltered Proportion` <- lasHomeless$`Sheltered Total Homeless` / lasHomeless$`Overall Homeless`

#Remove the 2021 columns b/c no sheltered homeless
sfoHomeless <- filter(sfoHomeless, `Unsheltered Homeless` > 0)
denHomeless <- filter(denHomeless, `Unsheltered Homeless` > 0)
sanHomeless <- filter(sanHomeless, `Unsheltered Homeless` > 0)
pdxHomeless <- filter(pdxHomeless, `Unsheltered Homeless` > 0)
nycHomeless <- filter(nycHomeless, `Unsheltered Homeless` > 0)
smfHomeless <- filter(smfHomeless, `Unsheltered Homeless` > 0)
houHomeless <- filter(houHomeless, `Unsheltered Homeless` > 0)
lasHomeless <- filter(lasHomeless, `Unsheltered Homeless` > 0)

#Rename Houston axis
houHomeless$`CoC Name` <- rep("Houston, Counties CoC", nrow(houHomeless))

#Calculate slopes of the Sheltered Proportions
lasHomeless$`Slope Sheltered Proportion` <- c(0,diff(lasHomeless$`Sheltered Proportion`))
sfoHomeless$`Slope Sheltered Proportion` <- c(0,diff(sfoHomeless$`Sheltered Proportion`))
denHomeless$`Slope Sheltered Proportion` <- c(0,diff(denHomeless$`Sheltered Proportion`))
sanHomeless$`Slope Sheltered Proportion` <- c(0,diff(sanHomeless$`Sheltered Proportion`))
pdxHomeless$`Slope Sheltered Proportion` <- c(0,diff(pdxHomeless$`Sheltered Proportion`))
nycHomeless$`Slope Sheltered Proportion` <- c(0,diff(nycHomeless$`Sheltered Proportion`))
smfHomeless$`Slope Sheltered Proportion` <- c(0,diff(smfHomeless$`Sheltered Proportion`))
houHomeless$`Slope Sheltered Proportion` <- c(0,diff(houHomeless$`Sheltered Proportion`))

#Calculate slopes of the Overall Proportions
lasHomeless$`Slope Overall Proportion` <- c(0,diff(lasHomeless$`Overall Proportion`))
sfoHomeless$`Slope Overall Proportion` <- c(0,diff(sfoHomeless$`Overall Proportion`))
denHomeless$`Slope Overall Proportion` <- c(0,diff(denHomeless$`Overall Proportion`))
sanHomeless$`Slope Overall Proportion` <- c(0,diff(sanHomeless$`Overall Proportion`))
pdxHomeless$`Slope Overall Proportion` <- c(0,diff(pdxHomeless$`Overall Proportion`))
nycHomeless$`Slope Overall Proportion` <- c(0,diff(nycHomeless$`Overall Proportion`))
smfHomeless$`Slope Overall Proportion` <- c(0,diff(smfHomeless$`Overall Proportion`))
houHomeless$`Slope Overall Proportion` <- c(0,diff(houHomeless$`Overall Proportion`))


#Put all the county dataframes together in totalHomeless
studiedHomeless <- rbind(sfoHomeless, denHomeless, sanHomeless, pdxHomeless, smfHomeless, houHomeless, lasHomeless)
studiedHomeless <- rbind(sfoHomeless, smfHomeless)

#Function for creating a ggplot line plot
ggYvX <- function(df, X, Y){
  plotA <- ggplot(data=df, aes(x = X, y = Y)) +
    geom_line() +
    geom_point() + # Optionally add points for clarity
    labs(title = "Overall Proportion by Year",
         x = "Year",
         y = "Overall Proportion") +
    theme_minimal()
  return(plotA)
}

#Plotting Sheltered Proportion all on the same plot
ggplot(studiedHomeless, aes(x = Year, y = `Sheltered Proportion`, color = `CoC Name`)) +
  geom_line() +
  geom_point() + # Optionally add points for clarity
  labs(title = "Sheltered Proportion by Year for Different Counties",
       x = "Year",
       y = "Sheltered Proportion") +
  theme_minimal()

#Plotting Overall Homeless Proportion all on the same plot
ggplot(studiedHomeless, aes(x = Year, y = `Overall Proportion`, color = `CoC Name`)) +
  geom_line() +
  geom_point() + # Optionally add points for clarity
  labs(title = "Overall Homeless Proportion by Year for Different Counties",
       x = "Year",
       y = "Overall Proportion") +
  theme_minimal()

#Plotting Slope of Sheltered Proportion
ggplot(studiedHomeless, aes(x = Year, y = `Slope Sheltered Proportion`, color = `CoC Name`)) +
  geom_line() +
  geom_point() + # Optionally add points for clarity
  labs(title = "Slope of Sheltered Proportion by Year for Different Counties",
       x = "Year",
       y = "Slope Sheltered Proportion") +
  theme_minimal()

#Incorporating data on HIC
X2007HIC <- read_csv("C:/Users/hayden/Desktop/module_1/Research Project/2007HIC.csv")
crop2007HIC <- X2007HIC[, c(1,2)]
X2008HIC <- read_csv("C:/Users/hayden/Desktop/module_1/Research Project/2008HIC.csv")
crop2008HIC <- X2008HIC[, c(1,2)]
X2009HIC <- read_csv("C:/Users/hayden/Desktop/module_1/Research Project/2009HIC.csv")
crop2009HIC <- X2009HIC[, c(1,2)]
X2010HIC <- read_csv("C:/Users/hayden/Desktop/module_1/Research Project/2010HIC.csv")
crop2010HIC <- X2010HIC[, c(1,2)]
X2011HIC <- read_csv("C:/Users/hayden/Desktop/module_1/Research Project/2011HIC.csv")
crop2011HIC <- X2011HIC[, c(1,2)]
X2012HIC <- read_csv("C:/Users/hayden/Desktop/module_1/Research Project/2012HIC.csv")
crop2012HIC <- X2012HIC[, c(1,2)]
X2013HIC <- read_csv("C:/Users/hayden/Desktop/module_1/Research Project/2013HIC.csv")
crop2013HIC <- X2013HIC[, c(1,2)]
X2014HIC <- read_csv("C:/Users/hayden/Desktop/module_1/Research Project/2014HIC.csv")
crop2014HIC <- X2014HIC[, c(1,2)]
X2015HIC <- read_csv("C:/Users/hayden/Desktop/module_1/Research Project/2015HIC.csv")
crop2015HIC <- X2015HIC[, c(1,2)]
X2016HIC <- read_csv("C:/Users/hayden/Desktop/module_1/Research Project/2016HIC.csv")
crop2016HIC <- X2016HIC[, c(1,2)]
X2017HIC <- read_csv("C:/Users/hayden/Desktop/module_1/Research Project/2017HIC.csv")
crop2017HIC <- X2017HIC[, c(1,2)]
X2018HIC <- read_csv("C:/Users/hayden/Desktop/module_1/Research Project/2018HIC.csv")
crop2018HIC <- X2018HIC[, c(1,2)]
X2019HIC <- read_csv("C:/Users/hayden/Desktop/module_1/Research Project/2019HIC.csv")
crop2019HIC <- X2019HIC[, c(1,2)]
X2020HIC <- read_csv("C:/Users/hayden/Desktop/module_1/Research Project/2020HIC.csv")
crop2020HIC <- X2020HIC[, c(1,2)]
X2021HIC <- read_csv("C:/Users/hayden/Desktop/module_1/Research Project/2021HIC.csv")
crop2021HIC <- X2021HIC[, c(1,2)]
X2022HIC <- read_csv("C:/Users/hayden/Desktop/module_1/Research Project/2022HIC.csv")
crop2022HIC <- X2022HIC[, c(1,2)]
X2023HIC <- read_csv("C:/Users/hayden/Desktop/module_1/Research Project/2023HIC.csv")
crop2023HIC <- X2023HIC[, c(1,2)]

#Filter only counties on county_list
names(crop2023HIC)[2] <- "Total Year-Round Beds"
crop2023HIC <- crop2023HIC %>% filter(`CoC Number` %in% county_list)
crop2023HIC$Year <- rep(2023, nrow(crop2023HIC))

names(crop2022HIC)[2] <- "Total Year-Round Beds"
crop2022HIC <- crop2022HIC %>% filter(`CoC Number` %in% county_list)
crop2022HIC$Year <- rep(2022, nrow(crop2022HIC))

names(crop2021HIC)[2] <- "Total Year-Round Beds"
crop2021HIC <- crop2021HIC %>% filter(`CoC Number` %in% county_list)
crop2021HIC$Year <- rep(2021, nrow(crop2021HIC))

names(crop2020HIC)[2] <- "Total Year-Round Beds"
crop2020HIC <- crop2020HIC %>% filter(`CoC Number` %in% county_list)
crop2020HIC$Year <- rep(2020, nrow(crop2020HIC))

names(crop2019HIC)[2] <- "Total Year-Round Beds"
crop2019HIC <- crop2019HIC %>% filter(`CoC Number` %in% county_list)
crop2019HIC$Year <- rep(2019, nrow(crop2019HIC))

names(crop2018HIC)[2] <- "Total Year-Round Beds"
crop2018HIC <- crop2018HIC %>% filter(`CoC Number` %in% county_list)
crop2018HIC$Year <- rep(2018, nrow(crop2018HIC))

names(crop2017HIC)[2] <- "Total Year-Round Beds"
crop2017HIC <- crop2017HIC %>% filter(`CoC Number` %in% county_list)
crop2017HIC$Year <- rep(2017, nrow(crop2017HIC))

names(crop2016HIC)[2] <- "Total Year-Round Beds"
crop2016HIC <- crop2016HIC %>% filter(`CoC Number` %in% county_list)
crop2016HIC$Year <- rep(2016, nrow(crop2016HIC))

names(crop2015HIC)[2] <- "Total Year-Round Beds"
crop2015HIC <- crop2015HIC %>% filter(`CoC Number` %in% county_list)
crop2015HIC$Year <- rep(2015, nrow(crop2015HIC))

names(crop2014HIC)[2] <- "Total Year-Round Beds"
crop2014HIC <- crop2014HIC %>% filter(`CoC Number` %in% county_list)
crop2014HIC$Year <- rep(2014, nrow(crop2014HIC))

names(crop2013HIC)[2] <- "Total Year-Round Beds"
crop2013HIC <- crop2013HIC %>% filter(`CoC Number` %in% county_list)
crop2013HIC$Year <- rep(2013, nrow(crop2013HIC))

names(crop2012HIC)[2] <- "Total Year-Round Beds"
names(crop2012HIC)[names(crop2012HIC) == 'CoC'] <- 'CoC Number'
crop2012HIC <- crop2012HIC %>% filter(`CoC Number` %in% county_list)
crop2012HIC$Year <- rep(2012, nrow(crop2012HIC))

names(crop2011HIC)[2] <- "Total Year-Round Beds"
names(crop2011HIC)[names(crop2011HIC) == 'CoC'] <- 'CoC Number'
crop2011HIC <- crop2011HIC %>% filter(`CoC Number` %in% county_list)
crop2011HIC$Year <- rep(2011, nrow(crop2011HIC))

names(crop2010HIC)[2] <- "Total Year-Round Beds"
names(crop2010HIC)[names(crop2010HIC) == 'CoC'] <- 'CoC Number'
crop2010HIC <- crop2010HIC %>% filter(`CoC Number` %in% county_list)
crop2010HIC$Year <- rep(2010, nrow(crop2010HIC))

names(crop2009HIC)[2] <- "Total Year-Round Beds"
names(crop2009HIC)[names(crop2009HIC) == 'CoC'] <- 'CoC Number'
crop2009HIC <- crop2009HIC %>% filter(`CoC Number` %in% county_list)
crop2009HIC$Year <- rep(2009, nrow(crop2009HIC))

names(crop2008HIC)[2] <- "Total Year-Round Beds"
names(crop2008HIC)[names(crop2008HIC) == 'CoC'] <- 'CoC Number'
crop2008HIC <- crop2008HIC %>% filter(`CoC Number` %in% county_list)
crop2008HIC$Year <- rep(2008, nrow(crop2008HIC))

names(crop2007HIC)[2] <- "Total Year-Round Beds"
names(crop2007HIC)[names(crop2007HIC) == 'CoC'] <- 'CoC Number'
crop2007HIC <- crop2007HIC %>% filter(`CoC Number` %in% county_list)
crop2007HIC$Year <- rep(2007, nrow(crop2007HIC))

#Combine all the bedding dataframes into one and split into counties
totalCropHIC <- rbind(crop2007HIC, crop2008HIC, crop2009HIC, crop2010HIC, crop2011HIC, crop2012HIC, crop2013HIC, crop2014HIC, crop2015HIC, crop2016HIC, crop2017HIC, crop2018HIC, crop2019HIC, crop2020HIC, crop2021HIC, crop2022HIC, crop2023HIC)
sfoHIC <- totalCropHIC[totalCropHIC$`CoC Number` == "CA-501",]
sfoHIC <- sfoHIC[sfoHIC$Year != 2021, ]
denHIC <- totalCropHIC[totalCropHIC$`CoC Number` == "CO-503",]
denHIC <- denHIC[denHIC$Year != 2021, ]
pdxHIC <- totalCropHIC[totalCropHIC$`CoC Number` == "OR-501",]
pdxHIC <- pdxHIC[pdxHIC$Year != 2021, ]
sanHIC <- totalCropHIC[totalCropHIC$`CoC Number` == "CA-601",]
sanHIC <- sanHIC[sanHIC$Year != 2021, ]
nycHIC <- totalCropHIC[totalCropHIC$`CoC Number` == "NY-600",]
smfHIC <- totalCropHIC[totalCropHIC$`CoC Number` == "CA-503",]
smfHIC <- smfHIC[smfHIC$Year != 2021, ]
lasHIC <- totalCropHIC[totalCropHIC$`CoC Number` == "NV-500",]
houHIC <- totalCropHIC[totalCropHIC$`CoC Number` == "TX-700",]
sfoHomeless$HIC <- sfoHIC$`Total Year-Round Beds`
denHomeless$HIC <- denHIC$`Total Year-Round Beds`
pdxHomeless$HIC <- denHIC$`Total Year-Round Beds`
sanHomeless$HIC <- sanHIC$`Total Year-Round Beds`
nycHomeless$HIC <- nycHIC$`Total Year-Round Beds`
smfHomeless$HIC <- smfHIC$`Total Year-Round Beds`
lasHomeless$HIC <- lasHIC$`Total Year-Round Beds`
houHomeless$HIC <- houHIC$`Total Year-Round Beds`
sfoHomeless$HICprop <- sfoHomeless$HIC / sfoHomeless$HIC[1]
denHomeless$HICprop <- denHomeless$HIC / denHomeless$HIC[1]
pdxHomeless$HICprop <- pdxHomeless$HIC / pdxHomeless$HIC[1]
sanHomeless$HICprop <- sanHomeless$HIC / sanHomeless$HIC[1]
nycHomeless$HICprop <- nycHomeless$HIC / nycHomeless$HIC[1]
smfHomeless$HICprop <- smfHomeless$HIC / smfHomeless$HIC[1]
lasHomeless$HICprop <- lasHomeless$HIC / lasHomeless$HIC[1]
houHomeless$HICprop <- houHomeless$HIC / houHomeless$HIC[1]

#Create a dataframe containing some counties to plot
studiedHomeless <- rbind(sfoHomeless, smfHomeless)

#Plot the shelter homes against year
ggplot(studiedHomeless, aes(x = Year, y = `HICprop`, color = `CoC Name`)) +
  geom_line() +
  geom_point() + # Optionally add points for clarity
  labs(title = "HIC by Year for Different Counties",
       x = "Year",
       y = "HIC") +
  theme_minimal()

#Dummy variable "time" indicates when the treatment began (only 2023)
totalHomeless <- studiedHomeless
totalHomeless$time <- ifelse(totalHomeless$Year > 2017, 1, 0)
totalHomeless$treated <- ifelse(totalHomeless$`CoC Name` == "San Francisco CoC", 0, 1)

#Create an interaction variable between time and treated
totalHomeless$did <- totalHomeless$time * totalHomeless$treated

#Estimating the DID estimator
library(rstanarm)
didreg <- lm(`Overall Proportion` ~ time + treated + did, data=totalHomeless)
didreg1 <- lm(`Sheltered Proportion` ~ time + treated + did, data=totalHomeless)
didreg2 <- lm(`HICprop` ~ time + treated + did, data=totalHomeless)

#GPT Graphing code
period1 <- totalHomeless %>% 
  filter(Year >= 2007 & Year <= 2017)

period2 <- totalHomeless %>% 
  filter(Year > 2017 & Year <= 2023)

ggplot(studiedHomeless, aes(x = Year, y = `HICprop`, color = `CoC Name`, group = `CoC Name`)) +
  geom_line() +
  geom_point() + # Optionally add points for clarity
  geom_smooth(method = "lm", se = FALSE) + # Adds a linear model line of best fit without confidence intervals
  labs(title = "HIC by Year for Different Counties",
       x = "Year",
       y = "HIC") +
  theme_minimal()

ggplot() +
  geom_line() +
  geom_point(data = studiedHomeless, aes(x = Year, y = `HICprop`, color = `CoC Name`)) +
  geom_smooth(data = period1, aes(x = Year, y = `HICprop`, color = `CoC Name`, group = `CoC Name`), 
              method = "lm", se = FALSE, fullrange = TRUE) +
  geom_smooth(data = period2, aes(x = Year, y = `HICprop`, color = `CoC Number`, group = `CoC Number`), 
              method = "lm", se = FALSE, fullrange = TRUE) +
  labs(title = "HIC by Year for Different Counties (Segmented Best Fit Lines)",
       x = "Year",
       y = "HIC") +
  theme_minimal() +
  ylim(0.75, 1.75)


#Treatment group (smf) before treatment
smfPre <- totalHomeless$HICprop[17:27]
#Control group (sfo) before treatment
sfoPre <- totalHomeless$HICprop[1:11]
#Treatment group (smf) after treatment
smfPost <- totalHomeless$HICprop[28:32]
#Control group (sfo) after treatment
sfoPost <- totalHomeless$HICprop[12:16]

(mean(smfPost) - mean(smfPre)) - (mean(sfoPost) - mean(sfoPre))

totalHomeless <- mutate(totalHomeless,
                        time = ifelse(Year > 2017, 1, 0),
                        treated = ifelse(`CoC Number` == "CA-503", 1, 0)
                        )

#Finding the unsheltered proportion
studiedHomeless <- rbind(sfoHomeless, denHomeless, sanHomeless, pdxHomeless, smfHomeless, houHomeless, lasHomeless)
sfoHomeless$`Unsheltered Proportion` <- sfoHomeless$`Unsheltered Homeless` / sfoHomeless$Populations
denHomeless$`Unsheltered Proportion` <- denHomeless$`Unsheltered Homeless` / denHomeless$Populations
sanHomeless$`Unsheltered Proportion` <- sanHomeless$`Unsheltered Homeless` / sanHomeless$Populations
pdxHomeless$`Unsheltered Proportion` <- pdxHomeless$`Unsheltered Homeless` / pdxHomeless$Populations
smfHomeless$`Unsheltered Proportion` <- smfHomeless$`Unsheltered Homeless` / smfHomeless$Populations
houHomeless$`Unsheltered Proportion` <- houHomeless$`Unsheltered Homeless` / houHomeless$Populations
lasHomeless$`Unsheltered Proportion` <- lasHomeless$`Unsheltered Homeless` / lasHomeless$Populations
studiedHomeless <- rbind(denHomeless, sanHomeless, lasHomeless, smfHomeless)

ggplot(studiedHomeless, aes(x = Year, y = `Unsheltered Proportion`, color = `CoC Name`)) +
  geom_line() +
  geom_point() + # Optionally add points for clarity
  labs(title = "Unsheltered Homeless Proportion by Year for Different Counties",
       x = "Year",
       y = "Unsheltered Homeless") +
  theme_minimal()


#Investigating Sacramento and Neighboring Counties
staHomeless <- totalHomeless[totalHomeless$`CoC Number` == "CA-524",]
ccHomeless <- totalHomeless[totalHomeless$`CoC Number` == "CA-505",]
staPopulation <- read_csv("C:/Users/hayden/Desktop/module_1/Research Project/staPopulation.csv")
ccPopulation <- read_csv("C:/Users/hayden/Desktop/module_1/Research Project/ccPopulation.csv")
staHomeless <- staHomeless[order(staHomeless$Year),]
ccHomeless <- ccHomeless[order(ccHomeless$Year),]
staPopulation <- staPopulation[order(staPopulation$Year),]
ccPopulation <- ccPopulation[order(ccPopulation$Year),]
staHomeless$Populations <- staPopulation$Population
ccHomeless$Populations <- ccPopulation$Population
staHomeless$`Unsheltered Proportion` <- staHomeless$`Unsheltered Homeless` / staHomeless$Populations
ccHomeless$`Unsheltered Proportion` <- ccHomeless$`Unsheltered Homeless` / ccHomeless$Populations

studiedHomeless <- rbind(smfHomeless[names(staHomeless)], staHomeless, ccHomeless)
ggplot(studiedHomeless, aes(x = Year, y = `Unsheltered Proportion`, color = `CoC Name`)) +
  geom_line() +
  geom_point() + # Optionally add points for clarity
  labs(title = "Unsheltered Homeless Proportion by Year for Sacramento and Neighboring",
       x = "Year",
       y = "Unsheltered Homeless") +
  theme_minimal()

#Investigating Montgomery and Nearby
ldnHomeless <- totalHomeless[totalHomeless$`CoC Number` == "VA-602",]
frHomeless <- totalHomeless[totalHomeless$`CoC Number` == "VA-514",]
hoHomeless <- totalHomeless[totalHomeless$`CoC Number` == "MD-504",]
pgHomeless <- totalHomeless[totalHomeless$`CoC Number` == "MD-600",]
dcHomeless <- totalHomeless[totalHomeless$`CoC Number` == "DC-500",]
mocHomeless <- totalHomeless[totalHomeless$`CoC Number` == "MD-601",]
ffxHomeless <- totalHomeless[totalHomeless$`CoC Number` == "VA-601",]

ldnPopulation <- read_csv("C:/Users/hayden/Desktop/module_1/Research Project/ldnPopulation.csv")
frPopulation <- read_csv("C:/Users/hayden/Desktop/module_1/Research Project/frPopulation.csv")
hoPopulation <- read_csv("C:/Users/hayden/Desktop/module_1/Research Project/hoPopulation.csv")
pgPopulation <- read_csv("C:/Users/hayden/Desktop/module_1/Research Project/pgPopulation.csv")
dcPopulation <- read_csv("C:/Users/hayden/Desktop/module_1/Research Project/dcPopulation.csv")
mocPopulation <- read_csv("C:/Users/hayden/Desktop/module_1/Research Project/mocPopulation.csv")
ffxPopulation <- read_csv("C:/Users/hayden/Desktop/module_1/Research Project/ffxPopulation.csv")

ldnHomeless <- ldnHomeless[order(ldnHomeless$Year),]
frHomeless <- frHomeless[order(frHomeless$Year),]
hoHomeless <- hoHomeless[order(hoHomeless$Year),]
pgHomeless <- pgHomeless[order(pgHomeless$Year),]
dcHomeless <- dcHomeless[order(dcHomeless$Year),]
mocHomeless <- mocHomeless[order(mocHomeless$Year),]
ffxHomeless <- ffxHomeless[order(ffxHomeless$Year),]

ldnPopulation <- ldnPopulation[order(ldnPopulation$Year),]
frPopulation <- frPopulation[order(frPopulation$Year),]
hoPopulation <- hoPopulation[order(hoPopulation$Year),]
pgPopulation <- pgPopulation[order(pgPopulation$Year),]
dcPopulation <- dcPopulation[order(dcPopulation$Year),]
mocPopulation <- mocPopulation[order(mocPopulation$Year),]
ffxPopulation <- ffxPopulation[order(ffxPopulation$Year),]

ldnHomeless$Populations <- ldnPopulation$Population
frHomeless$Populations <- frPopulation$Population
hoHomeless$Populations <- hoPopulation$Population
pgHomeless$Populations <- pgPopulation$Population
dcHomeless$Populations <- dcPopulation$Population
mocHomeless$Populations <- mocPopulation$Population
ffxHomeless$Populations <- ffxPopulation$Population

ldnHomeless$`Unsheltered Proportion` <- ldnHomeless$`Unsheltered Homeless` / ldnHomeless$Populations
frHomeless$`Unsheltered Proportion` <- frHomeless$`Unsheltered Homeless` / frHomeless$Populations
hoHomeless$`Unsheltered Proportion` <- hoHomeless$`Unsheltered Homeless` / hoHomeless$Populations
pgHomeless$`Unsheltered Proportion` <- pgHomeless$`Unsheltered Homeless` / pgHomeless$Populations
dcHomeless$`Unsheltered Proportion` <- dcHomeless$`Unsheltered Homeless` / dcHomeless$Populations
mocHomeless$`Unsheltered Proportion` <- mocHomeless$`Unsheltered Homeless` / mocHomeless$Populations
ffxHomeless$`Unsheltered Proportion` <- ffxHomeless$`Unsheltered Homeless` / ffxHomeless$Populations

studiedHomeless <- rbind(ldnHomeless, frHomeless, hoHomeless, pgHomeless, mocHomeless, ffxHomeless)
ggplot(studiedHomeless, aes(x = Year, y = `Unsheltered Proportion`, color = `CoC Name`)) +
  geom_line() +
  geom_point() + # Optionally add points for clarity
  labs(title = "Unsheltered Homeless Proportion by Year for Different Counties",
       x = "Year",
       y = "Unsheltered Homeless") +
  theme_minimal()

#Sacramento vs. Sutter County
totalHomeless <- rbind(smfHomeless[names(staHomeless)], staHomeless)
totalHomeless$time <- ifelse(totalHomeless$Year > 2017, 1, 0)
totalHomeless$treated <- ifelse(totalHomeless$`CoC Number` == "CA-503", 1, 0)
totalHomeless$did <- totalHomeless$time * totalHomeless$treated
smfvsta <- lm(`Unsheltered Proportion` ~ time + treated + did, data=totalHomeless)
summary(smfvsta)

#Sacramento vs. Contra Costa County
totalHomeless <- rbind(smfHomeless[names(ccHomeless)], ccHomeless)
totalHomeless$time <- ifelse(totalHomeless$Year > 2017, 1, 0)
totalHomeless$treated <- ifelse(totalHomeless$`CoC Number` == "CA-503", 1, 0)
totalHomeless$did <- totalHomeless$time * totalHomeless$treated
smfvcc <- lm(`Unsheltered Proportion` ~ time + treated + did, data=totalHomeless)
summary(smfvcc)

#Investigating Florida counties
miaHomeless <- totalHomeless[totalHomeless$`CoC Number` == "FL-600",]
colHomeless <- totalHomeless[totalHomeless$`CoC Number` == "FL-606",]
monHomeless <- totalHomeless[totalHomeless$`CoC Number` == "FL-604",]
broHomeless <- totalHomeless[totalHomeless$`CoC Number` == "FL-601",]

miaPopulation <- read_csv("C:/Users/hayden/Desktop/module_1/Research Project/miaPopulation.csv")
colPopulation <- read_csv("C:/Users/hayden/Desktop/module_1/Research Project/colPopulation.csv")
monPopulation <- read_csv("C:/Users/hayden/Desktop/module_1/Research Project/monPopulation.csv")
broPopulation <- read_csv("C:/Users/hayden/Desktop/module_1/Research Project/broPopulation.csv")

miaHomeless <- miaHomeless[order(miaHomeless$Year),]
colHomeless <- colHomeless[order(colHomeless$Year),]
monHomeless <- monHomeless[order(monHomeless$Year),]
broHomeless <- broHomeless[order(broHomeless$Year),]

miaPopulation <- miaPopulation[order(miaPopulation$Year),]
colPopulation <- colPopulation[order(colPopulation$Year),]
monPopulation <- monPopulation[order(monPopulation$Year),]
broPopulation <- broPopulation[order(broPopulation$Year),]

miaHomeless$Populations <- miaPopulation$Population
colHomeless$Populations <- colPopulation$Population
monHomeless$Populations <- monPopulation$Population
broHomeless$Populations <- broPopulation$Population

miaHomeless$`Unsheltered Proportion` <- miaHomeless$`Unsheltered Homeless` / miaHomeless$Populations
colHomeless$`Unsheltered Proportion` <- colHomeless$`Unsheltered Homeless` / colHomeless$Populations
monHomeless$`Unsheltered Proportion` <- monHomeless$`Unsheltered Homeless` / monHomeless$Populations
broHomeless$`Unsheltered Proportion` <- broHomeless$`Unsheltered Homeless` / broHomeless$Populations

studiedHomeless <- rbind(miaHomeless, colHomeless, monHomeless, broHomeless)
ggplot(studiedHomeless, aes(x = Year, y = `Unsheltered Proportion`, color = `CoC Name`)) +
  geom_line() +
  geom_point() + # Optionally add points for clarity
  labs(title = "Unsheltered Homeless Proportion by Year for Different Counties Near Miami-Dade",
       x = "Year",
       y = "Unsheltered Homeless") +
  theme_minimal()

#Miami-Dade vs. Broward County
totalHomeless <- rbind(miaHomeless, broHomeless)
totalHomeless$time <- ifelse(totalHomeless$Year > 2020, 1, 0)
totalHomeless$treated <- ifelse(totalHomeless$`CoC Number` == "FL-600", 1, 0)
totalHomeless$did <- totalHomeless$time * totalHomeless$treated
miavbro <- lm(`Unsheltered Proportion` ~ time + treated + did, data=totalHomeless)
summary(miavbro)

#Miami-Dade vs. Collier County
totalHomeless <- rbind(miaHomeless, colHomeless)
totalHomeless$time <- ifelse(totalHomeless$Year > 2020, 1, 0)
totalHomeless$treated <- ifelse(totalHomeless$`CoC Number` == "FL-600", 1, 0)
totalHomeless$did <- totalHomeless$time * totalHomeless$treated
miavcol <- lm(`Unsheltered Proportion` ~ time + treated + did, data=totalHomeless)
summary(miavcol)

#New Hampshire
hilHomeless <- NewHampshireHomeless[NewHampshireHomeless$`CoC Number` == "NH-502",]
rocHomeless <- NewHampshireHomeless[NewHampshireHomeless$`CoC Number` == "NH-501",]
merHomeless <- NewHampshireHomeless[NewHampshireHomeless$`CoC Number` == "NH-503",]
cheHomeless <- NewHampshireHomeless[NewHampshireHomeless$`CoC Number` == "NH-504",]
sulHomeless <- NewHampshireHomeless[NewHampshireHomeless$`CoC Number` == "NH-505",]

#Graph of New Hampshire
studiedHomeless <- rbind(manHomeless, rocHomeless, merHomeless, cheHomeless, sulHomeless)
ggplot(studiedHomeless, aes(x = Year, y = `Unsheltered Proportion`, color = `CoC Name`)) +
  geom_line() +
  geom_point() + # Optionally add points for clarity
  labs(title = "Unsheltered Homeless Proportion by Year for Different Counties in New Hampshire",
       x = "Year",
       y = "Unsheltered Homeless") +
  theme_minimal()

#Hillsborough vs. Rockingham
totalHomeless <- rbind(hilHomeless, rocHomeless)
totalHomeless$time <- ifelse(totalHomeless$Year >= 2021, 1, 0)
totalHomeless$treated <- ifelse(totalHomeless$`CoC Number` == "NH-502", 1, 0)
totalHomeless$did <- totalHomeless$time * totalHomeless$treated
hilvroc <- lm(`Unsheltered Proportion` ~ time + treated + did, data=totalHomeless)
summary(hilvroc)

#Hillsborough vs. Merrimack
totalHomeless <- rbind(hilHomeless, merHomeless)
totalHomeless$time <- ifelse(totalHomeless$Year >= 2021, 1, 0)
totalHomeless$treated <- ifelse(totalHomeless$`CoC Number` == "NH-502", 1, 0)
totalHomeless$did <- totalHomeless$time * totalHomeless$treated
hilvmer <- lm(`Unsheltered Proportion` ~ time + treated + did, data=totalHomeless)
summary(hilvmer)

#Hillsborough vs. Cheshire
totalHomeless <- rbind(hilHomeless, cheHomeless)
totalHomeless$time <- ifelse(totalHomeless$Year >= 2021, 1, 0)
totalHomeless$treated <- ifelse(totalHomeless$`CoC Number` == "NH-502", 1, 0)
totalHomeless$did <- totalHomeless$time * totalHomeless$treated
hilvche <- lm(`Unsheltered Proportion` ~ time + treated + did, data=totalHomeless)
summary(hilvche)

#Hillsborough vs. Sullivan
totalHomeless <- rbind(hilHomeless, sulHomeless)
totalHomeless$time <- ifelse(totalHomeless$Year >= 2021, 1, 0)
totalHomeless$treated <- ifelse(totalHomeless$`CoC Number` == "NH-502", 1, 0)
totalHomeless$did <- totalHomeless$time * totalHomeless$treated
hilvsul <- lm(`Unsheltered Proportion` ~ time + treated + did, data=totalHomeless)
summary(hilvsul)

#Testing census for Sacramento
filtered_DECENNIALDHC2020_P18_2024_07_13T224601 <- DECENNIALDHC2020_P18_2024_07_13T224601 %>% filter(grepl("Other noninstitutional facilities", `Label (Grouping)`))

#Testing DiD Plot for Sacramento
ccHomeless$`CoC Name` <- rep("Contra Costa County", 17)
smfHomeless$`CoC Name` <- rep("Sacramento County", 16)
staHomeless$`CoC Name` <- rep("Sutter County", 17)
studiedHomeless <- rbind(broHomeless, miaHomeless, monHomeless, colHomeless)
ggplot(studiedHomeless, aes(x = Year, y = `Unsheltered Proportion`, color = `CoC Name`)) +
  geom_line() +
  geom_point() + # Optionally add points for clarity
  labs(title = "Unsheltered Homeless Proportion by Year for Sacramento and Neighboring",
       x = "",
       y = "Unsheltered Homeless") +
  ggrepel::geom_label_repel(aes(label = studiedHomeless$`CoC Name`, color=studiedHomeless$`CoC Name`),
                            nudge_x = 0.3, nudge_y = -0.00003,
                            na.rm = TRUE) +
  theme_minimal()
manHomeless <- manHomeless %>% filter(Year >= 2019)
studiedHomeless <- rbind(cheHomeless, manHomeless, merHomeless, rocHomeless, sulHomeless)
studiedHomeless %>%
  mutate(label = if_else(Year == "2021", as.character(`CoC Name`), NA_character_)) %>%
  ggplot(aes(x = Year, y = `Unsheltered Proportion`, color = `CoC Name`)) +
  geom_line(show.legend = FALSE) +
  geom_point(show.legend = FALSE) +
  labs(title = "Unsheltered Homeless Population by Year for Manchester and Neighboring", x = "", y = "Unsheltered Proportion") +
  ggrepel::geom_label_repel(aes(label = label, color=`CoC Name`),
                            nudge_x = -0.3, nudge_y = 0.0000,
                            na.rm = TRUE) +
  theme(text=element_text(size=16,  family="calibri")) +
  scale_x_continuous(breaks = round(seq(min(studiedHomeless$Year), max(studiedHomeless$Year), by = 2),1)) +
  theme(axis.text.x = element_text(angle = 45)) +
  theme_bw() +
  theme(legend.position = "none")

######################################
#DiD for Sacramento vs. Sutter County#
######################################

totalHomeless <- rbind(smfHomeless[names(staHomeless)], staHomeless)
totalHomeless$time <- ifelse(totalHomeless$Year >= 2020, 1, 0)
totalHomeless$treated <- ifelse(totalHomeless$`CoC Number` == "CA-503", 1, 0)

preSMF <- mean(totalHomeless$`Unsheltered Proportion`[totalHomeless$time == 0 & totalHomeless$`CoC Number` == "CA-503"])
postSMF <- mean(totalHomeless$`Unsheltered Proportion`[totalHomeless$time == 1 & totalHomeless$`CoC Number` == "CA-503"])
preSTA <- mean(totalHomeless$`Unsheltered Proportion`[totalHomeless$time == 0 & totalHomeless$`CoC Number` == "CA-524"])
postSTA <- mean(totalHomeless$`Unsheltered Proportion`[totalHomeless$time == 1 & totalHomeless$`CoC Number` == "CA-524"])

#Calculate counterfactual outcome
smf_counterfactual <- tibble(
  observation = c("1.Pre(2007-2020)", "3.Post(2020-2023)"),
  county = c("Sacramento (Counterfactual)", "Sacramento (Counterfactual)"),
  PROPunsheltered = as.numeric(c(preSMF, preSMF-(preSTA-postSTA)))
)

#Data points for treatment event
smf_policy <- tibble(
  observation = c("2.Policy", "2.Policy", "2.Policy"),
  county = c("Sacramento", "Sutter County", "Sacramento (Counterfactual)"),
  PROPunsheltered = c(0.00484, 0.00535, 0.00484)
)

#Differences tibble?
smf_differences <- tibble(
  observation = c("1.Pre(2007-2020)", "1.Pre(2007-2020)", 
    "3.Post(2020-2023)", "3.Post(2020-2023)"),
  county = c("Sacramento", "Sutter County", "Sacramento", "Sutter County"),
  PROPunsheltered = c(preSMF, preSTA, postSMF, postSTA)
)

smf_did_data <- bind_rows(smf_differences,
                          smf_counterfactual,
                          smf_policy)

smf_did_data %>%
  mutate(label = if_else(observation == "3.Post(2020-2023)", as.character(county), NA_character_)) %>%
  ggplot(aes(x=observation,y=PROPunsheltered, group=county)) +
  geom_line(aes(color=county), size=1.2) +
  geom_vline(xintercept = "2.Policy", linetype="dotted", 
             color = "black", size=1.1) + 
  scale_color_brewer(palette = "Accent") +
  scale_y_continuous(limits = c(0.002,0.012)) +
  ggrepel::geom_label_repel(aes(label = label, color=county),
                            nudge_x = 0.3, nudge_y = 0,
                            na.rm = TRUE, label.size = 0.25) +
  guides(color=FALSE) +
  labs(x="", y="Unemployment Proportion (mean)") +
  annotate("label", x = "3.Post(2020-2023)", y = 0.008865, label = "Difference in Differences", 
           size = 3.7, color = "black", fill = "white", 
           hjust = 0, vjust = 0.5) +
  annotate("segment", x = "3.Post(2020-2023)", xend = "3.Post(2020-2023)", y = 0.0109, yend = 0.00683,
           arrow = arrow(ends = "both", angle = 90, length = unit(.2,"cm"))) +
  theme_bw()


###################################
#DiD for Hillsborough vs. Cheshire#
###################################

totalHomeless <- rbind(hilHomeless, cheHomeless)
totalHomeless$time <- ifelse(totalHomeless$Year >= 2021, 1, 0)
totalHomeless$treated <- ifelse(totalHomeless$`CoC Number` == "NH-502", 1, 0)

preHIL <- mean(totalHomeless$`Unsheltered Proportion`[totalHomeless$time == 0 & totalHomeless$`CoC Number` == "NH-502"])
postHIL <- mean(totalHomeless$`Unsheltered Proportion`[totalHomeless$time == 1 & totalHomeless$`CoC Number` == "NH-502"])
preCHE <- mean(totalHomeless$`Unsheltered Proportion`[totalHomeless$time == 0 & totalHomeless$`CoC Number` == "NH-504"])
postCHE <- mean(totalHomeless$`Unsheltered Proportion`[totalHomeless$time == 1 & totalHomeless$`CoC Number` == "NH-504"])

#Calculate counterfactual outcome
hil_counterfactual <- tibble(
  observation = c("1.Pre(2007-2021)", "3.Post(2021-2023)"),
  county = c("Hillsborough (Counterfactual)", "Hillsborough (Counterfactual)"),
  PROPunsheltered = as.numeric(c(preHIL, preHIL-(preCHE-postCHE)))
)

#Data points for treatment event
hil_policy <- tibble(
  observation = c("2.Policy", "2.Policy", "2.Policy"),
  county = c("Hillsborough", "Cheshire", "Hillsborough (Counterfactual)"),
  PROPunsheltered = c(0.000285, 0.0002008, 0.000285)
  #First and last values are avg of counterfactual
  #Middle value is avg of non-treated
)

#Differences tibble?
hil_differences <- tibble(
  observation = c("1.Pre(2007-2021)", "1.Pre(2007-2021)", 
                  "3.Post(2021-2023)", "3.Post(2021-2023)"),
  county = c("Hillsborough", "Cheshire", "Hillsborough", "Cheshire"),
  PROPunsheltered = c(preHIL, preCHE, postHIL, postCHE)
)

hil_did_data <- bind_rows(hil_differences,
                          hil_counterfactual,
                          hil_policy)

hil_did_data %>%
  mutate(label = if_else(observation == "3.Post(2021-2023)", as.character(county), NA_character_)) %>%
  ggplot(aes(x=observation,y=PROPunsheltered, group=county)) +
  geom_line(aes(color=county), size=1.2) +
  geom_vline(xintercept = "2.Policy", linetype="dotted", 
             color = "black", size=1.1) + 
  scale_color_brewer(palette = "Accent") +
  scale_y_continuous(limits = c(0.00015,0.0004)) +
  ggrepel::geom_label_repel(aes(label = label, color=county),
                            nudge_x = 0.3, nudge_y = -0.00001,
                            na.rm = TRUE) +
  guides(color=FALSE) +
  labs(x="", y="Unemployment Proportion (mean)") +
  annotate("label", x = "3.Post(2021-2023)", y = 0.0003335, label = "Difference in Differences", 
           size = 3.7, color = "black", fill = "white", 
           hjust = 0, vjust = 0.5) +
  annotate("segment", x = "3.Post(2021-2023)", xend = "3.Post(2021-2023)", y = 0.000295, yend = 0.000372,
           arrow = arrow(ends = "both", angle = 90, length = unit(.2,"cm"))) +
  theme_bw()


###################################
#DiD for Hillsborough vs. Sullivan#
###################################

totalHomeless <- rbind(hilHomeless, sulHomeless)
totalHomeless$time <- ifelse(totalHomeless$Year >= 2021, 1, 0)
totalHomeless$treated <- ifelse(totalHomeless$`CoC Number` == "NH-502", 1, 0)

preHIL <- mean(totalHomeless$`Unsheltered Proportion`[totalHomeless$time == 0 & totalHomeless$`CoC Number` == "NH-502"])
postHIL <- mean(totalHomeless$`Unsheltered Proportion`[totalHomeless$time == 1 & totalHomeless$`CoC Number` == "NH-502"])
preSUL <- mean(totalHomeless$`Unsheltered Proportion`[totalHomeless$time == 0 & totalHomeless$`CoC Number` == "NH-505"])
postSUL <- mean(totalHomeless$`Unsheltered Proportion`[totalHomeless$time == 1 & totalHomeless$`CoC Number` == "NH-505"])

#Calculate counterfactual outcome
hilsul_counterfactual <- tibble(
  observation = c("1.Pre(2007-2021)", "3.Post(2021-2023)"),
  county = c("Hillsborough (Counterfactual)", "Hillsborough (Counterfactual)"),
  PROPunsheltered = as.numeric(c(preHIL, preHIL-(preSUL-postSUL)))
)

#Data points for treatment event
hilsul_policy <- tibble(
  observation = c("2.Policy", "2.Policy", "2.Policy"),
  county = c("Hillsborough", "Sullivan", "Hillsborough (Counterfactual)"),
  PROPunsheltered = c(0.0003165, 0.5*(preSUL+postSUL), 0.0003165)
  #First and last values are avg of counterfactual
  #Middle value is avg of non-treated
)

#Differences tibble?
hilsul_differences <- tibble(
  observation = c("1.Pre(2007-2021)", "1.Pre(2007-2021)", 
                  "3.Post(2021-2023)", "3.Post(2021-2023)"),
  county = c("Hillsborough", "Sullivan", "Hillsborough", "Sullivan"),
  PROPunsheltered = c(preHIL, preSUL, postHIL, postSUL)
)

hilsul_did_data <- bind_rows(hilsul_differences,
                          hilsul_counterfactual,
                          hilsul_policy)

hilsul_did_data %>%
  mutate(label = if_else(observation == "3.Post(2021-2023)", as.character(county), NA_character_)) %>%
  ggplot(aes(x=observation,y=PROPunsheltered, group=county)) +
  geom_line(aes(color=county), size=1.2) +
  geom_vline(xintercept = "2.Policy", linetype="dotted", 
             color = "black", size=1.1) + 
  scale_color_brewer(palette = "Accent") +
  scale_y_continuous(limits = c(0,0.0004)) +
  ggrepel::geom_label_repel(aes(label = label, color=county),
                            nudge_x = -0.2, nudge_y = -0.00005,
                            na.rm = TRUE) +
  guides(color=FALSE) +
  labs(x="", y="Unemployment Proportion (mean)") +
  annotate("label", x = "3.Post(2021-2023)", y = 0.000365, label = "Difference in Differences", 
           size = 3.7, color = "black", fill = "white", 
           hjust = 0, vjust = 0.5) +
  annotate("segment", x = "3.Post(2021-2023)", xend = "3.Post(2021-2023)", y = 0.000358, yend = 0.000372,
           arrow = arrow(ends = "both", angle = 90, length = unit(.2,"cm"))) +
  theme_bw()


################################
#DiD for Miami-Dade vs. Broward#
################################

totalHomeless <- rbind(miaHomeless, broHomeless)
totalHomeless$time <- ifelse(totalHomeless$Year >= 2021, 1, 0)
totalHomeless$treated <- ifelse(totalHomeless$`CoC Number` == "FL-600", 1, 0)

preMIA <- mean(totalHomeless$`Unsheltered Proportion`[totalHomeless$time == 0 & totalHomeless$`CoC Number` == "FL-600"])
postMIA <- mean(totalHomeless$`Unsheltered Proportion`[totalHomeless$time == 1 & totalHomeless$`CoC Number` == "FL-600"])
preBRO <- mean(totalHomeless$`Unsheltered Proportion`[totalHomeless$time == 0 & totalHomeless$`CoC Number` == "FL-601"])
postBRO <- mean(totalHomeless$`Unsheltered Proportion`[totalHomeless$time == 1 & totalHomeless$`CoC Number` == "FL-601"])

#Calculate counterfactual outcome
miabro_counterfactual <- tibble(
  observation = c("1.Pre(2007-2021)", "3.Post(2021-2023)"),
  county = c("Miami-Dade (Counterfactual)", "Miami-Dade (Counterfactual)"),
  PROPunsheltered = as.numeric(c(preMIA, preMIA-(preBRO-postBRO)))
)

#Data points for treatment event
miabro_policy <- tibble(
  observation = c("2.Policy", "2.Policy", "2.Policy"),
  county = c("Miami-Dade", "Broward", "Miami-Dade (Counterfactual)"),
  PROPunsheltered = c(0.002455, 0.5*(preBRO+postBRO), 0.002455)
  #First and last values are avg of counterfactual
  #Middle value is avg of non-treated
)

#Differences tibble?
miabro_differences <- tibble(
  observation = c("1.Pre(2007-2021)", "1.Pre(2007-2021)", 
                  "3.Post(2021-2023)", "3.Post(2021-2023)"),
  county = c("Miami-Dade", "Broward", "Miami-Dade", "Broward"),
  PROPunsheltered = c(preMIA, preBRO, postMIA, postBRO)
)

miabro_did_data <- bind_rows(miabro_differences,
                             miabro_counterfactual,
                             miabro_policy)

miabro_did_data %>%
  mutate(label = if_else(observation == "3.Post(2021-2023)", as.character(county), NA_character_)) %>%
  ggplot(aes(x=observation,y=PROPunsheltered, group=county)) +
  geom_line(aes(color=county), size=1.2) +
  geom_vline(xintercept = "2.Policy", linetype="dotted", 
             color = "black", size=1.1) + 
  scale_color_brewer(palette = "Accent") +
  scale_y_continuous(limits = c(0,0.00375)) +
  ggrepel::geom_label_repel(aes(label = label, color=county),
                            nudge_x = -0.25, nudge_y = +0.00015,
                            na.rm = TRUE) +
  guides(color=FALSE) +
  labs(x="", y="Unemployment Proportion (mean)") +
  annotate("label", x = "3.Post(2021-2023)", y = 0.002385, label = "Difference in Differences", 
           size = 3.7, color = "black", fill = "white", 
           hjust = 0, vjust = 0.5) +
  annotate("segment", x = "3.Post(2021-2023)", xend = "3.Post(2021-2023)", y = 0.00260, yend = 0.00217,
           arrow = arrow(ends = "both", angle = 90, length = unit(.2,"cm"))) +
  theme_bw()


################################
#DiD for Miami-Dade vs. Collier#
################################

totalHomeless <- rbind(miaHomeless, colHomeless)
totalHomeless$time <- ifelse(totalHomeless$Year >= 2021, 1, 0)
totalHomeless$treated <- ifelse(totalHomeless$`CoC Number` == "FL-600", 1, 0)

preMIA <- mean(totalHomeless$`Unsheltered Proportion`[totalHomeless$time == 0 & totalHomeless$`CoC Number` == "FL-600"])
postMIA <- mean(totalHomeless$`Unsheltered Proportion`[totalHomeless$time == 1 & totalHomeless$`CoC Number` == "FL-600"])
preCOL <- mean(totalHomeless$`Unsheltered Proportion`[totalHomeless$time == 0 & totalHomeless$`CoC Number` == "FL-606"])
postCOL <- mean(totalHomeless$`Unsheltered Proportion`[totalHomeless$time == 1 & totalHomeless$`CoC Number` == "FL-606"])

#Calculate counterfactual outcome
miacol_counterfactual <- tibble(
  observation = c("1.Pre(2007-2021)", "3.Post(2021-2023)"),
  county = c("Miami-Dade (Counterfactual)", "Miami-Dade (Counterfactual)"),
  PROPunsheltered = as.numeric(c(preMIA, preMIA-(preCOL-postCOL)))
)

#Data points for treatment event
miacol_policy <- tibble(
  observation = c("2.Policy", "2.Policy", "2.Policy"),
  county = c("Miami-Dade", "Collier", "Miami-Dade (Counterfactual)"),
  PROPunsheltered = c(0.002375, 0.5*(preCOL+postCOL), 0.002375)
  #First and last values are avg of counterfactual
  #Middle value is avg of non-treated
)

#Differences tibble?
miacol_differences <- tibble(
  observation = c("1.Pre(2007-2021)", "1.Pre(2007-2021)", 
                  "3.Post(2021-2023)", "3.Post(2021-2023)"),
  county = c("Miami-Dade", "Collier", "Miami-Dade", "Collier"),
  PROPunsheltered = c(preMIA, preCOL, postMIA, postCOL)
)

miacol_did_data <- bind_rows(miacol_differences,
                             miacol_counterfactual,
                             miacol_policy)

miacol_did_data %>%
  mutate(label = if_else(observation == "3.Post(2021-2023)", as.character(county), NA_character_)) %>%
  ggplot(aes(x=observation,y=PROPunsheltered, group=county)) +
  geom_line(aes(color=county), size=1.2) +
  geom_vline(xintercept = "2.Policy", linetype="dotted", 
             color = "black", size=1.1) + 
  scale_color_brewer(palette = "Accent") +
  scale_y_continuous(limits = c(0,0.00375)) +
  ggrepel::geom_label_repel(aes(label = label, color=county),
                            nudge_x = -0.25, nudge_y = +0.00015,
                            na.rm = TRUE) +
  guides(color=FALSE) +
  labs(x="", y="Unemployment Proportion (mean)") +
  annotate("label", x = "3.Post(2021-2023)", y = 0.002305, label = "Difference in Differences", 
           size = 3.7, color = "black", fill = "white", 
           hjust = 0, vjust = 0.5) +
  annotate("segment", x = "3.Post(2021-2023)", xend = "3.Post(2021-2023)", y = 0.00244, yend = 0.00217,
           arrow = arrow(ends = "both", angle = 90, length = unit(.2,"cm"))) +
  theme_bw()


######################################
#DiD for Sacramento vs. Contra Costa#
######################################

totalHomeless <- rbind(smfHomeless[names(ccHomeless)], ccHomeless)
totalHomeless$time <- ifelse(totalHomeless$Year >= 2020, 1, 0)
totalHomeless$treated <- ifelse(totalHomeless$`CoC Number` == "CA-503", 1, 0)

preSMF <- mean(totalHomeless$`Unsheltered Proportion`[totalHomeless$time == 0 & totalHomeless$`CoC Number` == "CA-503"])
postSMF <- mean(totalHomeless$`Unsheltered Proportion`[totalHomeless$time == 1 & totalHomeless$`CoC Number` == "CA-503"])
preCC <- mean(totalHomeless$`Unsheltered Proportion`[totalHomeless$time == 0 & totalHomeless$`CoC Number` == "CA-505"])
postCC <- mean(totalHomeless$`Unsheltered Proportion`[totalHomeless$time == 1 & totalHomeless$`CoC Number` == "CA-505"])

#Calculate counterfactual outcome
smfcc_counterfactual <- tibble(
  observation = c("1.Pre(2007-2020)", "3.Post(2020-2023)"),
  county = c("Sacramento (Counterfactual)", "Sacramento (Counterfactual)"),
  PROPunsheltered = as.numeric(c(preSMF, preSMF-(preCC-postCC)))
)

#Data points for treatment event
smfcc_policy <- tibble(
  observation = c("2.Policy", "2.Policy", "2.Policy"),
  county = c("Sacramento", "Contra Costa County", "Sacramento (Counterfactual)"),
  PROPunsheltered = c(0.002655, 0.00139807, 0.002655)
  #First and last values are avg of counterfactual
  #Middle value is avg of non-treated
)

#Differences tibble?
smfcc_differences <- tibble(
  observation = c("1.Pre(2007-2020)", "1.Pre(2007-2020)", 
                  "3.Post(2020-2023)", "3.Post(2020-2023)"),
  county = c("Sacramento", "Contra Costa County", "Sacramento", "Contra Costa County"),
  PROPunsheltered = c(preSMF, preCC, postSMF, postCC)
)

smfcc_did_data <- bind_rows(smfcc_differences,
                          smfcc_counterfactual,
                          smfcc_policy)

smfcc_did_data %>%
  mutate(label = if_else(observation == "3.Post(2020-2023)", as.character(county), NA_character_)) %>%
  ggplot(aes(x=observation,y=PROPunsheltered, group=county)) +
  geom_line(aes(color=county), size=1.2) +
  geom_vline(xintercept = "2.Policy", linetype="dotted", 
             color = "black", size=1.1) + 
  scale_color_brewer(palette = "Accent") +
  scale_y_continuous(limits = c(0,0.0125)) +
  ggrepel::geom_label_repel(aes(label = label, color=county),
                            nudge_x = 0.25, nudge_y = -0.001,
                            na.rm = TRUE) +
  guides(color=FALSE) +
  labs(x="", y="Unemployment Proportion (mean)") +
  annotate("label", x = "3.Post(2020-2023)", y = 0.00668, label = "Difference in Differences", 
           size = 3.7, color = "black", fill = "white", 
           hjust = 0, vjust = 0.5) +
  annotate("segment", x = "3.Post(2020-2023)", xend = "3.Post(2020-2023)", y = 0.00246, yend = 0.0109,
           arrow = arrow(ends = "both", angle = 90, length = unit(.2,"cm"))) +
  theme_bw()


#Redo of Manchester Data
manHomeless <- totalHomeless[totalHomeless$`CoC Number` == "NH-501",]
manPopulation <- read_csv("manPopulation.csv")
manHomeless$Populations <- manPopulation$Population
manHomeless$`Unsheltered Proportion` <- manHomeless$`Unsheltered Homeless` / manHomeless$Populations


#################################
#DiD for Manchester vs. Cheshire#
#################################

totalHomeless <- rbind(manHomeless, cheHomeless)
totalHomeless$time <- ifelse(totalHomeless$Year >= 2021, 1, 0)
totalHomeless$treated <- ifelse(totalHomeless$`CoC Number` == "NH-501", 1, 0)

preMAN <- mean(totalHomeless$`Unsheltered Proportion`[totalHomeless$time == 0 & totalHomeless$`CoC Number` == "NH-501"])
postMAN <- mean(totalHomeless$`Unsheltered Proportion`[totalHomeless$time == 1 & totalHomeless$`CoC Number` == "NH-501"])
preCHE <- mean(totalHomeless$`Unsheltered Proportion`[totalHomeless$time == 0 & totalHomeless$`CoC Number` == "NH-504"])
postCHE <- mean(totalHomeless$`Unsheltered Proportion`[totalHomeless$time == 1 & totalHomeless$`CoC Number` == "NH-504"])

#Calculate counterfactual outcome
manche_counterfactual <- tibble(
  observation = c("1.Pre(2019-2021)", "3.Post(2021-2023)"),
  county = c("Manchester (Counterfactual)", "Manchester (Counterfactual)"),
  PROPunsheltered = as.numeric(c(preMAN, preMAN-(preCHE-postCHE)))
)

#Data points for treatment event
manche_policy <- tibble(
  observation = c("2.Policy", "2.Policy", "2.Policy"),
  county = c("Manchester", "Cheshire", "Manchester (Counterfactual)"),
  PROPunsheltered = c(0.000795, 0.0002008, 0.000795)
  #First and last values are avg of counterfactual
  #Middle value is avg of non-treated
)

#Differences tibble?
manche_differences <- tibble(
  observation = c("1.Pre(2019-2021)", "1.Pre(2019-2021)", 
                  "3.Post(2021-2023)", "3.Post(2021-2023)"),
  county = c("Manchester", "Cheshire", "Manchester", "Cheshire"),
  PROPunsheltered = c(preMAN, preCHE, postMAN, postCHE)
)

manche_did_data <- bind_rows(manche_differences,
                          manche_counterfactual,
                          manche_policy)

manche_did_data %>%
  mutate(label = if_else(observation == "3.Post(2021-2023)", as.character(county), NA_character_)) %>%
  ggplot(aes(x=observation,y=PROPunsheltered, group=county)) +
  geom_line(aes(color=county), size=1.2) +
  geom_vline(xintercept = "2.Policy", linetype="dotted", 
             color = "black", size=1.1) + 
  scale_color_brewer(palette = "Accent") +
  scale_y_continuous(limits = c(0,0.0015)) +
  ggrepel::geom_label_repel(aes(label = label, color=county),
                            nudge_x = 0.2, nudge_y = 0,
                            na.rm = TRUE) +
  guides(color=FALSE) +
  labs(x="", y="Unemployment Proportion (mean)") +
  annotate("label", x = "3.Post(2021-2023)", y = 0.0009275, label = "Difference in Differences", 
           size = 3.7, color = "black", fill = "white", 
           hjust = 0, vjust = 0.5) +
  annotate("segment", x = "3.Post(2021-2023)", xend = "3.Post(2021-2023)", y = 0.000805, yend = 0.00105,
           arrow = arrow(ends = "both", angle = 90, length = unit(.2,"cm"))) + 
  theme_bw()

#################################
#DiD for Manchester vs. Sullivan#
#################################

totalHomeless <- rbind(manHomeless, sulHomeless)
totalHomeless$time <- ifelse(totalHomeless$Year >= 2021, 1, 0)
totalHomeless$treated <- ifelse(totalHomeless$`CoC Number` == "NH-501", 1, 0)

preMAN <- mean(totalHomeless$`Unsheltered Proportion`[totalHomeless$time == 0 & totalHomeless$`CoC Number` == "NH-501"])
postMAN <- mean(totalHomeless$`Unsheltered Proportion`[totalHomeless$time == 1 & totalHomeless$`CoC Number` == "NH-501"])
preSUL <- mean(totalHomeless$`Unsheltered Proportion`[totalHomeless$time == 0 & totalHomeless$`CoC Number` == "NH-505"])
postSUL <- mean(totalHomeless$`Unsheltered Proportion`[totalHomeless$time == 1 & totalHomeless$`CoC Number` == "NH-505"])

#Calculate counterfactual outcome
mansul_counterfactual <- tibble(
  observation = c("1.Pre(2019-2021)", "3.Post(2021-2023)"),
  county = c("Manchester (Counterfactual)", "Manchester (Counterfactual)"),
  PROPunsheltered = as.numeric(c(preMAN, preMAN-(preSUL-postSUL)))
)

#Data points for treatment event
mansul_policy <- tibble(
  observation = c("2.Policy", "2.Policy", "2.Policy"),
  county = c("Manchester", "Sullivan", "Manchester (Counterfactual)"),
  PROPunsheltered = c(0.000826, (preSUL + postSUL)/2, 0.000826)
  #First and last values are avg of counterfactual
  #Middle value is avg of non-treated
)

#Differences tibble?
mansul_differences <- tibble(
  observation = c("1.Pre(2019-2021)", "1.Pre(2019-2021)", 
                  "3.Post(2021-2023)", "3.Post(2021-2023)"),
  county = c("Manchester", "Sullivan", "Manchester", "Sullivan"),
  PROPunsheltered = c(preMAN, preSUL, postMAN, postSUL)
)

mansul_did_data <- bind_rows(mansul_differences,
                             mansul_counterfactual,
                             mansul_policy)

mansul_did_data %>%
  mutate(label = if_else(observation == "3.Post(2021-2023)", as.character(county), NA_character_)) %>%
  ggplot(aes(x=observation,y=PROPunsheltered, group=county)) +
  geom_line(aes(color=county), size=1.2) +
  geom_vline(xintercept = "2.Policy", linetype="dotted", 
             color = "black", size=1.1) + 
  scale_color_brewer(palette = "Accent") +
  scale_y_continuous(limits = c(0,0.0015)) +
  ggrepel::geom_label_repel(aes(label = label, color=county),
                            nudge_x = -0.2, nudge_y = -0.00003,
                            na.rm = TRUE) +
  guides(color=FALSE) +
  labs(x="", y="Unemployment Proportion (mean)") +
  annotate("label", x = "3.Post(2021-2023)", y = 0.0009585, label = "Difference in Differences", 
           size = 3.7, color = "black", fill = "white", 
           hjust = 0, vjust = 0.5) +
  annotate("segment", x = "3.Post(2021-2023)", xend = "3.Post(2021-2023)", y = 0.000867, yend = 0.00105,
           arrow = arrow(ends = "both", angle = 90, length = unit(.2,"cm"))) +
  theme_bw()


#Replotting Manchester and Neighboring
studiedHomeless <- rbind(manHomeless, sulHomeless, cheHomeless)
ggplot(studiedHomeless, aes(x = Year, y = `Unsheltered Proportion`, color = `CoC Name`)) +
  geom_line() +
  geom_point() + # Optionally add points for clarity
  labs(title = "Unsheltered Homeless Proportion by Year for Manchester and Neighboring",
       x = "Year",
       y = "Unsheltered Homeless") +
  theme_minimal()

#Manchester vs. Cheshire
totalHomeless <- rbind(manHomeless, cheHomeless)
totalHomeless$time <- ifelse(totalHomeless$Year >= 2021, 1, 0)
totalHomeless$treated <- ifelse(totalHomeless$`CoC Number` == "NH-501", 1, 0)
totalHomeless$did <- totalHomeless$time * totalHomeless$treated
manvche <- lm(`Unsheltered Proportion` ~ time + treated + did, data=totalHomeless)
summary(manvche)

#Manchester vs. Sullivan
totalHomeless <- rbind(manHomeless, sulHomeless)
totalHomeless$time <- ifelse(totalHomeless$Year >= 2021, 1, 0)
totalHomeless$treated <- ifelse(totalHomeless$`CoC Number` == "NH-501", 1, 0)
totalHomeless$did <- totalHomeless$time * totalHomeless$treated
manvsul <- lm(`Unsheltered Proportion` ~ time + treated + did, data=totalHomeless)
summary(manvsul)
