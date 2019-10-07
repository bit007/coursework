Problem Statement
You are the sales manager for "BeerMart", an online beer store in the United States. You want to build a recommendation system (collaborative) for your store, where customers will be recommended the beer that they are most likely to buy. You collect data about the ratings that the customers have given in the past. You can download the dataset from the link below.

Beer Datasetfile_download	Download
Description: Each record includes a beer's name and the user's name, along with the ratings he/she has given to the beer. All ratings are on a scale from 1 to 5, with 5 being the best rating.

 

As you solve the case study, you need to complete the following tasks:

Data preparation

Choose only those beers that have at least N number of reviews.
Figure out an appropriate value of N using EDA; this may not have one correct answer, but you should not choose beers that have an extremely low number of ratings.

Data exploration

What are the unique values of ratings?

Visualise the rating values and notice:

The average beer ratings

The average user ratings

The average number of ratings given to the beers

The average number of ratings given by the users

Recommendation Models

Divide your data into training and testing dataset.

Build user-based and item-based models.

Determine how similar the first 10 users are to each other and visualise it.
Compute and visualise the similarity between the first 10 beers.
Compare the performance of the two models using test data and suggest the one that should be deployed.

 Give the names of the top 5 beers that you would recommend to the users 'cokes', 'genog' and 'giblet' using both the models.