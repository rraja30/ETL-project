## ETL Project
### Proposal
Alison Faulkner, Annalyse Bergman, and Ramya Nivedha Raja

Is there any coorelation between the existence of bike infrastructure and the frequency of accidents? We decided to perform a case study on bike accidents Philadelphia. We will compare two datasets, one detailing the location of accidents involving cyclists and the other dataset which details the type of bike infrastructure in place based on location. 

Datasets: 
https://www.opendataphilly.org/dataset/bike-network 
https://data.philly.com/datasets/crashes/pedestrian_bicyclist/?cType=fm  

We will be using a relational database and using SQL to combine the two databases. 

### Extraction
We used data from two datasets, one detailing information regarding Philadelphia's bike infrastructure based on location, and the other dataset detailing bike accident information and incidents throughout Philadelphia. We will refer to these datasets as D1 and D2 respectively. D1 was a downloadable csv file while D2 was a website table that we converted to a csv file. 


### Transformation
Once we extracted our data from the two datasets, we transformed the data by filtering out the columns containing data we did not need. We then deleted all duplicates in D1 and cleaned the data in D2. In order to have our two dataframes matching to join, we split the column "Street_Name_Lane" and and removed extra spaces in the street names in D2.


### Load
With out datsets newly transformed, we used Pandas to load our data in the the data tables created in SQL. Using Postgres, we performed a full outer join to combine our data tables. By doing this, we were able to compare both datasets by street names to determine where bike accidents occured on a road with bike infrastructure. This infomration can be used to determine if bike infrastructure makes it safer for bicyclist sharing the road, and further determines which type of bike infrastructure is the safest. 


Extract: indicates the original
data sources and how the data
were formatted at a professional
level
Transform: explains what data
clearing or transformation was
required at a professional level
Load: explains the final
database, tables/collections, and
why the topic was chosen at a
professional leve
