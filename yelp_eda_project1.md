
# Yelp data set exploration by Jackie Tang

This report contains code, plots, maps and analyses that explores Yelp's academic businesses data set covering over 150,000 Yelp-rated establishments across over 100 variables.

```
## [1] 156639
```


```
## [1] 101
```


'''
The goals of my exploratory analysis of the Yelp (academic) business data set will be as follows.

1) Establish an understanding of two key variables: review_count and stars
2) Understand and visualize how geography, operating status (open or closed) and price_range can end up affecting the two key variables explored in this data set: review_count and ratings
3) Perform the analysis as explained in 1) and 2) on particular segments of Yelp establishments (such as restaurants)


In the univariate plots section, the emphasis will be on analysing some of the key variables that will be discussed later in the bivariate and multivariate analysis such as price range, stars, and review count along with other variables such as the geographic dispersion of establishments as well as some information on alcohol service and noise levels.

![plot of chunk unnamed-chunk-285](figure/unnamed-chunk-285-1.png)
One of the first things that I want to do to start my analysis is to look at stars (ratings) across all establishments.

From the graph above, it seems that most ratings are centred around 3.5 to 4 stars, which seems quite consistent with my prior knowledge of Yelp reviews. Generally, people tend to give fairly good reviews!

Of course, the bar plot above includes both open and closed establishments, and we know that generally speaking establishments that have closed may have closed due to poor business, partly because of poor reviews and opinions of the establishment. What if we only accounted for establishments that were closed and no longer operating? Would this distribution change?

![plot of chunk unnamed-chunk-286](figure/unnamed-chunk-286-1.png)

As we can see from the bar plot above, the distribution in the lower ends of the distribution of ratings does not change much. However, we can see that there is a substantial decline in the proportion of closed establishments that were rated 4.5 and 5 stars. This is definitely a plausible explanation as establishments that are rated highly generally do not close without good reason.

![plot of chunk unnamed-chunk-287](figure/unnamed-chunk-287-1.png)


The Yelp data set does not seem to have an equal representation of the number of establishments by geography, let alone those that were included in the data set. The majority of establishments in this data set are in Arizona, Ontario and Nevada, with smaller numbers of representation in other states such as North Carolina, Ohio and Quebec.



```
## Error in seq_len(m): argument must be coercible to non-negative integer
```



The analysis for review count and ratings is far from complete, however, we will revisit these two variables in greater detail in later sections.
For now, let us concentrate on looking at my favourite part of Yelp ratings, which are restaurants!
In the following sections and analysis, I will concentrate almost exclusively on operating restaurants located in North America.


```
## Error in seq_len(m): argument must be coercible to non-negative integer
```

When we partition only for North American restaurants that are operating in this Yelp data set, we find that the number is only 26,642. Out of 156,639 establishments, my area of interest only represents approximately 17% of all establishments. When we partition only for North American states which have 147,658 establishments, this percentage goes up only slightly to 18% (the number of establishments outside North America are minimal). 

This is obviously because there are many other such establishments such as nail salons, amusement parks, community centres, spas, along with closed restaurants or restaurants outside of North America that are not included in my analysis.

![Figure_1](https://github.com/tangyjackie/Data-exploration-and-visualization/blob/Yelp_eda_project_figures/Figure1.png)


As we saw earlier, while there were large variances in the number of establishments in the data set by state, in terms of operating restaurants, the differences in the number of operating restaurants across different states are only around a few thousand at most versus in the tens of thousands as we saw earlier. It seems that the data on restaurants are more evenly spread out across states.

![Figure_2](https://github.com/tangyjackie/Data-exploration-and-visualization/blob/Yelp_eda_project_figures/Figure2.png)


The spread in terms of the restaurants across being represented in this data set is also similarly more even than when compared to the total number of establishments.


![Figure_3](https://github.com/tangyjackie/Data-exploration-and-visualization/blob/Yelp_eda_project_figures/Figure3.png)


To start our univariate analysis on restaurants, let us look at the price range across all restaurants. 

As we can see from the chart above, the vast majority of restaurants are in the 1-2 low to medium price range, while only a very small proportion (around 6-7 percent) are what we would consider to be the more high-end and expensive type of restaurant. This sort of makes sense because places such as McDonalds and KFC are factored into the restaurant category as well, and by far the vast majority of restaurants are of the fast-food and take-out variety.


![Figure_4](https://github.com/tangyjackie/Data-exploration-and-visualization/blob/Yelp_eda_project_figures/Figure3.png)


In terms of alcohol service levels in restaurants, we find that its about 50/50. Around half of restaurants (50.3%) will actually serve alcohol of some sort with 15% serving only beer and wine while over 35% will have a full bar. 
Of course, having alcohol in a restaurant is great, but do alcohol service levels differ amongst different categories of restaurants? The factor that differentiates restaurants the most would probably be the price range. 


![plot of chunk unnamed-chunk-294](figure/unnamed-chunk-294-1.png)


Alcohol is generally not served in the least expensive restaurants, while those in the price category 2 (average) offer alcohol service at around a 75% rate, and those in in the most expensive restaurants almost all serve alcohol.

![plot of chunk unnamed-chunk-295](figure/unnamed-chunk-295-1.png)


Of course, an introductory exploratory analysis of Yelp-rated restaurants would not be complete without at least knowing some information on the noise levels of the restaurant. Most restaurants, about two-thirds, had average noise levels, while over 20% are quiet. Only a small minority (around 10%) of restaurants are classified as being in the loud or very loud range.



# UNIVARIATE ANALYSIS

## What is the structure of the data set?
There are 156639 data points in the Yelp academic data set, and includes Yelp-rated establishments across a variety of different geographies that are mainly based in North America.
There are 101 variables in the data set and only a few of them were analyzed in my univariate analysis.
These include the noise level, alcohol service, price range, stars, and review_count.

Aside from review_count which is an integer variable, all other variables follow are categorical in nature:

stars <- 1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5
price range <- 1, 2, 3, 4
alcohol service <- none, beer_and_wine, full_bar
noise level <- quiet, average, loud, very_loud


### Interesting observations: 
1) Average number of reviews per establishment is around 30
2) Close to half of ratings are in the 3.5 to 4 stars range
3) Alcohol service is provided in over 50% of restaurants
4) Almost all restaurants are in the 1-2 price range (inexpensive to average)
5) Most restaurants have quiet to average noise levels
6) The sample of establishments provided in the data set are mostly in Arizona, Nevada and Ontario


## What is/are the main feature(s) of interest in your dataset?
The main features of interest in this data set are review_count and stars.


## What other features in the dataset do you think will help support your investigation into your feature(s) of interest?

Price range, alcohol, noise level, geographical features such as longitude and latitude along with state, is_open, as well as numerous restaurant attributes such as table service, delivery, takeout, if its good for lunch, dinner, dessert etc. would be good features that would complement the analysis on stars and review_count.


## Did you create any new variables from existing variables in the dataset?

A new variable called full_service was created for the purposes of my analysis (later used in the bivariate analysis section),  which is a categorical variable that combines table service, delivery and takeout services all being offered or not. Its value is 1 when table service, delivery and takeout services are provided at the restaurant, and 0 if even one of these services is not offered. The rationale behind creating this variable was to see the percentage of restaurants that were able to respond to all sorts of dining options. There were other variables such as catering, but it was not included as it may have been too restrictive.

I also created a new variable called "value" which is defined as Yelp stars divided by price range, which measures the amount of value that you obtain in terms of an experience at an establishment that for each dollar that you spend. A lower price range and a higher Yelp star rating means a higher value, while conversely, a higher price range and lower Yelp star rating equates a lower value.


## Of the features you investigated, were there any unusual distributions? Did you perform any operations on the data to tidy, adjust, or change the form of the data? If so, why did you do this?

There were many cases where null values existed for the restaurant variables and so these values were not included in order to get an approximation of what was considered to be a restaurant. Also, the data has also been subsetted to only account for values in certain states that were operating depending on the analysis. Upon examining the univariate plots, I did not examine any unusual distributions.



# BIVARIATE PLOTS SECTION

The number of reviews (review_count) is a very important variable in the Yelp data set. In fact, it is the only variable that is not discrete or categorical other than latitude and longitude, and can be analyzed along a variety of different categorical variables. 


![plot of chunk unnamed-chunk-296](figure/unnamed-chunk-296-1.png)


As it appears, the review count numbers seem undoubtedly biased towards Nevada and Arizona as shown from the plot above. This sort of makes sense as we saw earlier that the number of establishments were also somewhat biased towards Nevada, Arizona and Ontario. What is odd is that even though NV and ON had a similar number of establishments in this dataset, the number of reviews is substantially higher for NV than it is for ON.

One of the things that I now want to look at is the distribution of review_count by establishment, and to compute the means across each of the states shown above. 




![plot of chunk unnamed-chunk-298](figure/unnamed-chunk-298-1.png)


At first glance, it seems that are certainly a large number of establishments in Nevada that have an extremely high review count, as the mean number of reviews per establishment is actually only around 30 across the entire data set.


![plot of chunk unnamed-chunk-299](figure/unnamed-chunk-299-1.png)


Zooming closer into the box plot, we see that median across all states is somewhere between 7 to 12 reviews, which means that a sizable proportion of Yelp-rated establishments have few to no ratings.





Due to the large number of establishments that have a review count in the thousands, this skews the mean upward considerably such that the mean ends up being double to quadruple the median for each state.

When compared across states, it turns out that the average across each state in terms of the review count per establishment is actually quite different with Nevada having substantially higher review count than other states. This explains why even though the number of Yelp-rated establishments in Ontario and Nevada are roughly equal, the review_count variable was so much higher for Nevada than for Ontario.


Now, moving on from the review count, what about the relationship between price range and stars for restaurants?

And how does this vary with noise levels?
Do more expensive places that are quieter have higher ratings?

![plot of chunk unnamed-chunk-301](figure/unnamed-chunk-301-1.png)


Earlier in the univiarate analysis section, we found that most restaurants were of average and quiet noise levels.
But why might this be the case? The plot above shows that there certainly is a ratings premium to having a quiet restaurant as restaurants that were quieter had higher average ratings in general. FOr example, quiet restaurants had above 3.6 average rating, while very loud restaurants had less than 3.0 average rating.



```
## 
## Call:
## lm(formula = stars ~ attributes.NoiseLevel, data = subset(rest_2))
## 
## Residuals:
##      Min       1Q   Median       3Q      Max 
## -2.59665 -0.53016 -0.03016  0.46984  2.03582 
## 
## Coefficients:
##                                 Estimate Std. Error t value Pr(>|t|)    
## (Intercept)                     3.530159   0.005323 663.184  < 2e-16 ***
## attributes.NoiseLevelloud      -0.280159   0.016210 -17.283  < 2e-16 ***
## attributes.NoiseLevelquiet      0.066491   0.011179   5.948 2.75e-09 ***
## attributes.NoiseLevelvery_loud -0.565983   0.027855 -20.319  < 2e-16 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 0.7003 on 25127 degrees of freedom
## Multiple R-squared:  0.03003,	Adjusted R-squared:  0.02991 
## F-statistic: 259.3 on 3 and 25127 DF,  p-value: < 2.2e-16
```

Although increased noise levels are correlated with decreased Yelp stars for a restaurant, the degree of variance explained from the R-squared is only about 2.8%, meaning that noise levels only explain a very small proportion of the ratings given to a restaurant. There are most certainly other factors that would most likely influence the number of stars given.

But what else might also impact the number of stars that a Yelp-rated restaurant, could price range be one of them?

![plot of chunk unnamed-chunk-303](figure/unnamed-chunk-303-1.png)


It turns out that as the price range for a restaurant increases, ratings also tend to be higher. However, doing a quick regression shows that the amount of variance explained by this model is very much insufficient for explaining how many stars a restaurant gets. Although the results in the regression below show statistical significance, this is most likely because there is only one independent variable (as was in the previous case with noise levels). 
However, the amount of variance explained by price range is even less than for noise levels.



```
## 
## Call:
## lm(formula = stars ~ attributes.RestaurantsPriceRange2, data = subset(rest_2))
## 
## Residuals:
##      Min       1Q   Median       3Q      Max 
## -2.78659 -0.54650  0.07355  0.45350  1.57355 
## 
## Coefficients:
##                                   Estimate Std. Error t value Pr(>|t|)    
## (Intercept)                       3.306409   0.012854  257.22   <2e-16 ***
## attributes.RestaurantsPriceRange2 0.120045   0.007269   16.51   <2e-16 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 0.7072 on 25129 degrees of freedom
## Multiple R-squared:  0.01074,	Adjusted R-squared:  0.0107 
## F-statistic: 272.7 on 1 and 25129 DF,  p-value: < 2.2e-16
```



![plot of chunk unnamed-chunk-305](figure/unnamed-chunk-305-1.png)


Looking at the price range again, we can also see that the distribution of price ranges across different geographies vary quite a bit. In the province of Quebec, there is a much higher proportion of restaurants in the more expensive 3-4 categories, and with a substantially lower percentage of restaurants in the less expensive price range 1. 
This is in stark contrast to AZ (Arizona), NC (North Carolina) and SC (SOuth Carolina) where less expensive ($) restaurants are dominant, and more expensive restaurants are almost non-existent.





And of course printing out the average price range by state, we see that Quebec and Ontario have a much higher average price range compared to the other cities in the data set.


![plot of chunk unnamed-chunk-307](figure/unnamed-chunk-307-1.png)



When we look at a comparison of price ranges across cities, the fact that Montreal and Toronto have the highest price ranges roughly coincides with our findings earlier in which Quebec and Ontario (where Montreal and Toronto are located respectively) had the highest priced restaurants compared to American states. 

One notable exception is Scottsdale in Arizona which had much higher prices than its surrounding municipalities of Phoenix, Tempe and Mesa.

![plot of chunk unnamed-chunk-309](figure/unnamed-chunk-309-1.png)


It seems that although the price range of restaurants for Scottsdale and Montreal are quite high, this is matched by the fact that the Yelp stars for restaurants in these cities are also relatively higher compared to other cities as well. So perhaps paying a little more for your food might not be a bad idea!





Of course, I decided to see go a little further and see what the "value" was for restaurants across different cities. I define value as being the number of stars divided by the average price range. What this calculates is the the amount of value added that you obtain for what you eat and pay for at a restaurant. For example, a city with restaurants that have a higher average number of stars or a lower price range will deliver more value for your dollar than those that have lower number of stars or a higher price range.


![plot of chunk unnamed-chunk-311](figure/unnamed-chunk-311-1.png)


We find that the cities of the Phoenix metropolitan area such as Phoenix, Mesa, and Tempe to be above average in terms of delivering value for the customer, while cities such as Toronto and Montreal in Canada along with Scottsdale do not deliver as much value for the same amount of money being spent.


While we are on the topic of price and restaurants, I want to explore a bit and see if the percentage of those expensive 3-4 restaurants line up with the percentage of restaurants where more formal attire is needed.

![plot of chunk unnamed-chunk-312](figure/unnamed-chunk-312-1.png)


In fact, we see that the percentage of dressy and formal attire does sort of line up with the percentage of expensive (category 3-4) restaurants that we saw in the stacked bar plot earlier. In fact, the percentage of dressy restaurants actually exceeds those in the price category of 4, meaning that there are quite a few of those more expensive (3) restaurants that require a dressy attire. That being said, the percentage of restaurants requiring formal attire is almost non-existent across any North American state.



```
## 
## Call:
## lm(formula = attributes.RestaurantsPriceRange2 ~ attributes.RestaurantsAttire, 
##     data = subset(restaurant_dress))
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -2.0719 -0.6186  0.3814  0.3814  2.3814 
## 
## Coefficients:
##                                    Estimate Std. Error t value Pr(>|t|)
## (Intercept)                         1.61860    0.00363 445.944  < 2e-16
## attributes.RestaurantsAttiredressy  1.45325    0.02222  65.397  < 2e-16
## attributes.RestaurantsAttireformal  0.63140    0.10023   6.299 3.04e-10
##                                       
## (Intercept)                        ***
## attributes.RestaurantsAttiredressy ***
## attributes.RestaurantsAttireformal ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 0.5666 on 25068 degrees of freedom
## Multiple R-squared:  0.1468,	Adjusted R-squared:  0.1467 
## F-statistic:  2156 on 2 and 25068 DF,  p-value: < 2.2e-16
```


Relative to casual attire, dressy and formal attire positively predicted whether or not a restaurants price range was more expensive or not. Perhaps due to the lack of restaurants requiring formal attire, the impact of dressy attire on predicting a restaurants price range was greater than for formal attire. In this case, the regression can be predicted as such that dressy attire is generally 1.6 higher (relative to casual) in terms of price range on average (out of 4), while the price range is only 0.6 higher for formal attire (relative to casual).
It is also of interest that 15% of variance in terms of predicing price range is explained by attire on its own.


![plot of chunk unnamed-chunk-314](figure/unnamed-chunk-314-1.png)


A good restaurant should always provide a large variety of dining options, and so I have constructed a variable called "Full_service" that has a value of 1 whenever delivery, takeout and table services are all provided, and 0 whenever even one of these services were not provided.


![plot of chunk unnamed-chunk-315](figure/unnamed-chunk-315-1.png)

It seems that very few operating restaurants do delivery, take-out and dine-in all at once.
The main reason for this lack of full service offerings is predominately due to the lack of delivery service being offered across restaurants (around 20-25% of restaurants do it). However, virtually all restaurants offer take out service with the notable exception of Quebec having a much lower percentage while also simultaneously having more restaurants that are are dine-in with table service.


Most of the analysis so far has been on a state level, and so I would like to delve more into analyzing restaurants or establishments in general on a city level. Some questions that I really want to explore are: 

1) Where within each city are restaurants located? Are they evenly spread across downtown and suburban areas?
2) And how does this vary by price range
3) And are higher rated restaurants more concentrated in certain parts of the city?
4) Are noisier restaurants spread out across the city or are they mainly in the downtown core?
And lastly:
5) Are alcohol service levels in restaurants consistent throughout different parts of the city?

In this geographic analysis, I am going to focus on two cities, Toronto and Phoenix, and this is because these two cities were among the top 3-4 cities that had the most restaurants represented within Yelp. I also briefly examine Scottsdale (which is to the northeast of Phoenix) because it might be interesting to analyze as the the city seems to have much higher restaurant prices despite its proximity. I also briefly look at Montreal to explain how geographic concentrations of restaurants can vary across cities.


![plot of chunk packages-316](figure/packages-316-1.png)

In Toronto, restaurants are mainly concentrated in the downtown core, and have a large concentrated presence along the main thoroughfare Yonge Street which extends all the up vertically through the centre of the map.

![plot of chunk packages-317](figure/packages-317-1.png)

In Montreal, the restaurants are even more concentrated, particularly in the downtown core and in the Plateau-Mont-Royal area just directly to the northwest of the downtown area. Restaurants outside this area are fairly spread out and are much lower in number, which partly has to do with the fact that Montreal is a much more densely populated city than Toronto.


![plot of chunk packages-318](figure/packages-318-1.png)

In Phoenix, restaurants seem to be spread evenly across the city in a grid-like pattern with a slightly larger concentration in the downtown southcentral square area in the middle of the map (with all four highways surrounding it). One can also see on the map that to the east are Scottdale and Tempe, both of which are separate cities represented within the Yelp data set (though not very well represented compared to Phoenix). Nonetheless, I decide to take a further look at least specifically into Scottsdale (one of the larger cities just outside Phoenix) anyway.

![plot of chunk packages-319](figure/packages-319-1.png)

The concentration of restaurants in Scottsdale seems to be along one narrow vertical street known as Scottsale Road. The restaurants in Scottsdale are much more concentrated in specific areas than was the case with Phoenix which is just to the west of the city.


![plot of chunk packages-320](figure/packages-320-1.png)


Restaurants which are in the average (2) price range are found everywhere through Toronto, and corresponds almost precisely with the earlier map showing restaurants across Toronto. However, inexpensive (1) price range restaurants mainly concentrated in the downtown core and in the north-central part of the city. Other parts of the city (especially just above the downtown area) had far fewer inexpensive restaurants than in the downtown core and the north-central end. 

The restaurants in the  more expensive (3) price range were once again concentrated in the downtown core, but were also prevalent toward the western half othe city and north along Yonge street (the main thoroughfare that runs down the centre of the city). The priciest restaurants (4) were only to be found almost exclusively along Yonge street stretching from the waterfront lake area up to around Hwy 401 in the north-central end of the city.

![plot of chunk packages-321](figure/packages-321-1.png)

It seems that the more expensive restaurants in the 3 range are almost as prevalent as those in the 1 price range, while those in the most expensive price category 4 are actually quite visible in the downtown core. The concentration of more expensive restaurants is definitely higher than in Toronto.

![plot of chunk packages-322](figure/packages-322-1.png)


Restaurants in the 1 price range are found everywhere in Phoenix as in the original Phoenix map with all restaurants across price ranges shown. Average restaurants in the 2 price range were less numerous and were mainly concentrated in the downtown core and the northern part of the city. 
On the other hand, other than a smaller cluster in the city centre and a few restaurants spread out in the northeastern part of the city, the more expensive restaurants in the 3 price range were non-existent. The priciest (4) restaurants are found scattered throughout the city and number no more than 10.

At least compared to Toronto and Montreal, there were fewer pricey restaurants relative to the total number. This kind of makes sense, as we saw earlier that by comparing percentage of restaurants by price range, Ontario (where Toronto is located) and Quebec (where Montreal is located) had far more restaurants in the 3-4 price range than in Arizona (Where Phoenix is located).

![plot of chunk packages-323](figure/packages-323-1.png)

While the 1-2 price range restaurants dominated (as always), there were actually two clusters of restaurants in the more expensive (3) price range in Scottsdale concentrated in downtown Scottsdale and in Paradise Valley along Scottsdale Road. Since both Tempe and Mesa (to the southeast of Phoenix) had similar price ranges for its restaurants, this suggests that the more expensive restaurants in the Phoenix metropolitan area are found in Scottsdale. 

I conclude my bivariate plots section with a quick look at how geographic concentration of restaurants vary by Yelp stars.

![plot of chunk packages-324](figure/packages-324-1.png)

Because of the large number of restaurants in the 3 to 4 star range, there is not much to be said here. However, at the extremes, 1 star and 5 star, there seem to be some degree of geographic concentration that differs from the other star ranges. Restaurants rated 1 and 1.5 tend to be more prevalent in the northwest part of the city, while restaurants rated 5 tend to just to the west of the downtown core.

In Phoenix, what we can see immediately is that the restaurants rated between 1 to 1.5 stars are most likely in the western half (suburban) of the city, but for all other Yelp stars, restaurants could be found all over the city.

So far, this geographical analysis of the location of restaurants in these cities has been interesting. More will be discussed using a greater number of variables later on.

![plot of chunk packages-325](figure/packages-325-1.png)


# Bivariate Analysis

## Talk about some of the relationships you observed in this part of the investigation. How did the feature(s) of interest vary with other features in the dataset?

1) More expensive restaurants in higher price ranges tend to be rated more highly, however the percentage of variance explained by the effect of price on stars is negligible indicating that there are most likely many other factors that explain the average Yelp star rating that a restaurant receives.


2) The review count of all Yelp-rated establishments is disproportionately represented by Nevada and Arizona, with Nevada having a much higher average number of reviews for its establishments compared with the other 8 states in the data set.

3) The Canadian provinces of Quebec and Ontario along with its major cities Toronto and Montreal had the highest average price ranges for its restaurants, while Arizona along with its major cities of the Phoenix metropolitan area (Phoenix, Tempe, and Mesa) had the lowest average price ranges.

4) In terms of ratings, Scottsdale in AZ and Montreal in QC had higher Yelp stars rated for its restaurants than other North American cities.

5) In terms of getting the most value out of your dollar, the cities of the Phoenix metropolitan area scored the highest relative to the other cities.


6) Around only 10-25% of restaurants offer a full suite of dining options such as delivery, take-out and table service (dine-in). This was mainly due to the relatively low percentage of restaurants that did delivery.

7) Restaurants in Toronto are concentrated mainly along its main thoroughfare Yonge Street and in the 
downtown core, while other cities such as Phoenix had its restaurants spread out across the city. 

8) While more expensive restaurants (price range 3-4) were found in the same places as where its highest concentration was in (usually downtown core), this was not necessarily the case in the Phoenix metropolitan area (Phoenix, Scottsdale etc.), where its most expensive restaurants were in nearby Scottsdale, with the Phoenix downtown core being almost devoid of restaurants in the 3-4 price range. More expensive in the 3-4 price range were quite prevalent in Montreal (almost as many as those in the 1 price range) than compared to other cities.


## Did you observe any interesting relationships between the other features (not the main feature(s) of interest)?

1) Restaurants with lower noise levels (quieter) tend to have higher ratings as well, though for the same reasons as price range, this effect (on its own) is negligible.

2) Very few restaurants required formal or dressy attire, though Quebec seemed to score just slightly higher relative to other states.


## What was the strongest relationship you found?

In terms of my geographic analysis of the 4 cities above, the strongest relationship that I found was that all restaurants regardless of price range were almost always concentrated in the downtown core or in some narrow strip outside of a central area. 


# MULTIVARIATE PLOTS SECTION

![plot of chunk packages-326](figure/packages-326-1.png)

Aside from looking at price ranges, let us now explore the geographical distribution of alcohol service across restaurants in Toronto. The map above shows that most full bar services are concentrated downtown, though there is a large area in the very centre of the downtown core in which either no alcohol is provided or only beer and wine is. Most places to the northwest and northeast of the downtown cluster of restaurants in the middle also did not provide alcohol services either.

![plot of chunk packages-327](figure/packages-327-1.png)

In Phoenix, it seems that alcohol is offered in fewer restaurants than was the case in Toronto, and it is clear from the map above that most resturants to the south and west of interstate did not offer a full bar. Even within the centre of Phoenix, there exist large areas that do not offer alcohol or only offer beer and wine.

![plot of chunk packages-328](figure/packages-328-1.png)

In Montreal, it is much harder to tell where the geographic concentration of alcohol service is within restaurants throughout the city. It seems like a massive concentration of full-bar services in the downtown core, with an even mix of alcohol service levels being provided by restaurants in the peripheral areas of the city.

![plot of chunk packages-329](figure/packages-329-1.png)

Next up, I wanted to see if noise levels differed between different downtown and suburban areas of Toronto. In our previous analysis of noise levels, we saw that two-thirds of restaurants were average in terms of noise levels, so it is not surprising to see average noise levels (in red) dominate throughout the city. The restaurants in the southeastern and northwestern parts of the city seem be mainly average or quiet. The rest of the city, however, seems to be sprinkled quite evenly with restaurants with all sorts of noise levels.


![plot of chunk packages-330](figure/packages-330-1.png)

In the case of Phoenix, restaurants of all noise levels were evenly sprinkled throughout the city. It seems there is little to no correlation between restaurant noise levels and geographic dispersion.

In the next few plots, as a matter of personal interest, I am going to look at where places that are good for going out for dinner are located within a city. 

![plot of chunk packages-331](figure/packages-331-1.png)

In Toronto, the best places to find restaurants that are good for dinner are in the downtown core and along Yonge Street (the vertical street through the centre of the city that's filled with restaurants). However, in terms of the percentage of places that are for dinner, the cluster of restaurants in the northern part of the city along Yonge Street, and the downtown area close to the lake but just across from the island in the southcentral part of the city are the best places to go if one wanted to look exclusively for dinner places when going out at night. On the other hand, the northwestern part of Toronto seems to be fairly devoid of places to go out to for dinner.


![plot of chunk packages-332](figure/packages-332-1.png)

Compared to Toronto, it seems that Phoenix has a much wider geographical dispersion of restaurants that are for good for dinner as compared to Toronto, though the north central area of the city seems to have a higher concentration than the southern and western parts of the city.



When it comes to restaurants that are good for dinner as a percentage of total number of restaurants, Toronto and Phoenix seem to be approximately the same in terms of its percentage, even though the geographical concentration of places that are good for dinner vary quite a bit.


![plot of chunk packages-334](figure/packages-334-1.png)

Looking back to Montreal again one last time, we see that dinner places are not as prevalent as in Toronto or Phoenix. Only parts of the downtown core and in Westmount to the immediate southwest of the downtown core have high concentrations of places that are good for dinner.

We now step away from geographic analysis entirely and go back to looking at overall relationships between our main variables of interest, price range, review count and stars on a multivariate level.

![plot of chunk unnamed-chunk-335](figure/unnamed-chunk-335-1.png)

In earlier analyses, the main focus was always on operating restaurants within North America, and in the beginning of the analysis, there was not much discussion on the operating status variable, is_open, and review count was mainly looked at on a more general and geographic level.

In this scatterplot above, the relationship between number of reviews and stars is quite clear. Almost all establishments that have above 1000 reviews continue to be open, while almost all of the establishments that were closed had less than 1000 reviews. We also see above that restaurants with higher review counts tend to be higher on the rating scale as virtually all establishments that had more than 100- reviews had were given a rating of at least 2.5 stars.

![plot of chunk unnamed-chunk-336](figure/unnamed-chunk-336-1.png)

The relationship we saw earlier between number of reviews and ratings across closed and open establishments holds true too for restaurants in North America.

![plot of chunk unnamed-chunk-337](figure/unnamed-chunk-337-1.png)

When we include price range into our earlier scatterplot and have the percentage of reviews as the size of the relationship between price range and ratings, we find virtually all reviews ar efor restaurants that have between a 3.5-4.5 rating on Yelp, and that this is consistent across all price ranges. However, the percent of total review counts within each price range and stars combination at a Yelp star of 3 or lower declines as the price range gets higher.

Now, it is time to do some deeper analysis into the distribution of Yelp stars across different geographies and types of establishments.

![plot of chunk unnamed-chunk-338](figure/unnamed-chunk-338-1.png)

It seems like across all Yelp establishments (both open and closed, whether a restaurant or not), Arizona and Nevada seem to have a much larger percentage of their establishments being rated at 4 stars or higher, and this is more pronounced at 5 stars. 

Our main establishments of interest, however, are for operating restaurants, and not necessarily just any type of establishment, as Yelp-rated establishments could include nail salons, spas, community centres as described earlier at the beginning of this project.

![plot of chunk unnamed-chunk-339](figure/unnamed-chunk-339-1.png)

When we only look at operating restaurants, we find that the story changes quite a bit. Instead of having Arizona and Nevada dominate the rankings, we see that the distribution of stars across all states is relatively the same. Quebec seem to have far more restaurants in higher stars than other states such as Arizona or South Carolina. 



This can be seen in the average stars by state chart above.

Aside from geography, there are also other variables such as noise levels and alcohol service that I would like to explore in terms of its relation to our main variables of interest, price range and stars.

![plot of chunk unnamed-chunk-341](figure/unnamed-chunk-341-1.png)


Earlier, we saw that whenever noise levels were higher, the average number of Yelp stars for a restaurant was lower, resulting in a clear downward relationship between the two variables. However, when we create a multivariate plot to group this relationship by price range, we find that across each price range, a restaurant that is louder will always have a lower average rating (though the effect is minor between average versus quiet noise levels). The only notable exception is at price range 3, where a restaurant with an average noise level does slightly better than those at a quiet noise level.

Also, it is interesting that at the most expensive price range 4, the average stars for a very loud restaurant decreases compared to those at the price range 3, while for a quiet restaurant, the increase in the average number of stars from price range 3 is much greater than in previous price ranges. As a result, the difference in average stars given for a very loud versus a quiet restaurant at the most expensive price range 4 is a different of almost 1 whole star!

Next, let us perform a similar analysis across alcohol service levels.

![plot of chunk unnamed-chunk-342](figure/unnamed-chunk-342-1.png)

The story behind alcohol service levels seem to be a different than was the case for noise levels. Restaurants with greater alcohol service do not necessarily have more Yelp stars on average than those with less alcohol service. As one can see on the plot above, restaurants that only offer beer and wine instead of a full bar almost always consistently outperform restaurants with a full bar alcohol service and this difference becomes much greater at the highest price range 4. However, in the case of more expensive 3-4 price range restaurants, restaurants that offer at least beer and wine outperform restaurants that do not provide alcohol by 1 whole star!



Now, we have analyzed so many different relationships between price range and stars. I wonder which of the variables we analyzed earlier have the most impact on the Yelp stars an operating restaurant in North America might receive. We are going to do this by creating a linear model that takes into account all the other variables we explored as independent variables with stars as the dependent variable.


```
## 
## Call:
## lm(formula = stars ~ attributes.RestaurantsPriceRange2 + attributes.NoiseLevel + 
##     attributes.Alcohol + review_count + is_open + attributes.RestaurantsGoodForGroups + 
##     attributes.RestaurantsAttire + attributes.RestaurantsDelivery + 
##     attributes.RestaurantsTakeOut + attributes.RestaurantsTableService, 
##     data = subset(rest_lm_stars))
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -3.5869 -0.4557  0.0315  0.4864  2.1515 
## 
## Coefficients:
##                                           Estimate Std. Error t value
## (Intercept)                              3.506e+00  2.984e-02 117.473
## attributes.RestaurantsPriceRange2        1.947e-02  8.474e-03   2.297
## attributes.NoiseLevelloud               -2.558e-01  1.450e-02 -17.640
## attributes.NoiseLevelquiet               1.182e-01  9.837e-03  12.017
## attributes.NoiseLevelvery_loud          -4.734e-01  2.430e-02 -19.484
## attributes.Alcoholfull_bar              -1.314e-01  1.233e-02 -10.653
## attributes.Alcoholnone                  -7.692e-02  1.241e-02  -6.197
## review_count                             5.794e-04  2.257e-05  25.671
## is_open                                  7.156e-02  9.461e-03   7.564
## attributes.RestaurantsGoodForGroupsTRUE -3.226e-02  1.287e-02  -2.506
## attributes.RestaurantsAttiredressy       1.632e-01  2.569e-02   6.355
## attributes.RestaurantsAttireformal      -2.339e-01  1.014e-01  -2.307
## attributes.RestaurantsDeliveryTRUE       4.382e-04  9.538e-03   0.046
## attributes.RestaurantsTakeOutTRUE       -9.582e-02  1.770e-02  -5.415
## attributes.RestaurantsTableServiceTRUE   9.086e-02  1.054e-02   8.623
##                                         Pr(>|t|)    
## (Intercept)                              < 2e-16 ***
## attributes.RestaurantsPriceRange2         0.0216 *  
## attributes.NoiseLevelloud                < 2e-16 ***
## attributes.NoiseLevelquiet               < 2e-16 ***
## attributes.NoiseLevelvery_loud           < 2e-16 ***
## attributes.Alcoholfull_bar               < 2e-16 ***
## attributes.Alcoholnone                  5.83e-10 ***
## review_count                             < 2e-16 ***
## is_open                                 4.03e-14 ***
## attributes.RestaurantsGoodForGroupsTRUE   0.0122 *  
## attributes.RestaurantsAttiredressy      2.12e-10 ***
## attributes.RestaurantsAttireformal        0.0211 *  
## attributes.RestaurantsDeliveryTRUE        0.9634    
## attributes.RestaurantsTakeOutTRUE       6.18e-08 ***
## attributes.RestaurantsTableServiceTRUE   < 2e-16 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 0.6768 on 31050 degrees of freedom
##   (988 observations deleted due to missingness)
## Multiple R-squared:  0.06591,	Adjusted R-squared:  0.06549 
## F-statistic: 156.5 on 14 and 31050 DF,  p-value: < 2.2e-16
```

As we had seen in some of the earlier regressions and/or analyses, increased price ranges, being open, having no alcohol service or a full bar, having a higher review count and having lower noise levels were correlated with a higher rating. Other new relationships include the fact that we never looked at in its relationship to Yelp stars were restaurant dining options, in which having table service correlated highly with stars, though having takeout apparently is not.

Nonetheless, the percentage of variance (6.5%) explained by this model is not very high, and this suggests that many other variables such as food quality, type of cuisine, recommendation from a friend were etc. could help to improve this model.


```
## 
## Call:
## lm(formula = attributes.RestaurantsPriceRange2 ~ stars + attributes.NoiseLevel + 
##     attributes.Alcohol + review_count + is_open + attributes.RestaurantsGoodForGroups + 
##     attributes.RestaurantsAttire + attributes.RestaurantsDelivery + 
##     attributes.RestaurantsTakeOut + attributes.RestaurantsTableService, 
##     data = subset(rest_lm_stars))
## 
## Residuals:
##      Min       1Q   Median       3Q      Max 
## -1.96040 -0.24004  0.00653  0.21065  2.84970 
## 
## Coefficients:
##                                           Estimate Std. Error t value
## (Intercept)                              1.906e+00  2.145e-02  88.871
## stars                                    8.729e-03  3.800e-03   2.297
## attributes.NoiseLevelloud                4.592e-03  9.761e-03   0.470
## attributes.NoiseLevelquiet               1.557e-02  6.602e-03   2.358
## attributes.NoiseLevelvery_loud           5.147e-02  1.637e-02   3.145
## attributes.Alcoholfull_bar               2.000e-01  8.194e-03  24.409
## attributes.Alcoholnone                  -2.618e-01  8.183e-03 -31.997
## review_count                             1.671e-04  1.524e-05  10.961
## is_open                                 -1.966e-02  6.341e-03  -3.101
## attributes.RestaurantsGoodForGroupsTRUE -7.245e-02  8.612e-03  -8.413
## attributes.RestaurantsAttiredressy       8.686e-01  1.649e-02  52.666
## attributes.RestaurantsAttireformal       5.794e-01  6.782e-02   8.543
## attributes.RestaurantsDeliveryTRUE       5.755e-02  6.379e-03   9.022
## attributes.RestaurantsTakeOutTRUE       -4.176e-01  1.162e-02 -35.945
## attributes.RestaurantsTableServiceTRUE   3.088e-01  6.844e-03  45.116
##                                         Pr(>|t|)    
## (Intercept)                              < 2e-16 ***
## stars                                    0.02162 *  
## attributes.NoiseLevelloud                0.63803    
## attributes.NoiseLevelquiet               0.01837 *  
## attributes.NoiseLevelvery_loud           0.00166 ** 
## attributes.Alcoholfull_bar               < 2e-16 ***
## attributes.Alcoholnone                   < 2e-16 ***
## review_count                             < 2e-16 ***
## is_open                                  0.00193 ** 
## attributes.RestaurantsGoodForGroupsTRUE  < 2e-16 ***
## attributes.RestaurantsAttiredressy       < 2e-16 ***
## attributes.RestaurantsAttireformal       < 2e-16 ***
## attributes.RestaurantsDeliveryTRUE       < 2e-16 ***
## attributes.RestaurantsTakeOutTRUE        < 2e-16 ***
## attributes.RestaurantsTableServiceTRUE   < 2e-16 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 0.4532 on 31050 degrees of freedom
##   (988 observations deleted due to missingness)
## Multiple R-squared:  0.4637,	Adjusted R-squared:  0.4635 
## F-statistic:  1918 on 14 and 31050 DF,  p-value: < 2.2e-16
```

On the other hand, when build a linear model with the independent variable being stars and using it to predict the price range of a restaurant, we find that the variables chosen do a fairly good job at predicting how expensive a restaurant will be, as over 46% of the variance in the model is explained by these variables alone. 


# MULTIVARIATE ANALYSIS

##  Talk about some of the relationships you observed in this part of the investigation. Were there features that strengthened each other in terms of looking at your feature(s) of interest?

1) In Toronto and Phoenix, restaurants of varying noise levels are all over the city.

2) In terms of alcohol service, the suburban areas of Toronto and Phoenix had less alcohol service in terms of full bar or beer and wine than in the downtown core while for Montreal, full bar alcohol service was virtually everywhere in the city.

3) Places that were good for dinner were found all over Phoenix, while in Toronto, the highest concentrations were found in the downtown core and in the central thoroughfare, and in Montreal, dinner places were onlly found in the downtown core.

4) Holding price range constant, between 80-90% of restaurants were rated between 3.5 to 4.5 stars.

5) Restaurants that had noisier atmospheres had lower average stars than quieter ones and this was true across all price ranges.


## Were there any interesting or surprising interactions between features?

One thing that I found interesting was that restaurants that only served beer and wine tended to do better in terms of Yelp stars than those that had full bar alcohol service.


## OPTIONAL: Did you create any models with your dataset? Discuss the strengths and limitations of your model.

I created two linear models that examined the impact of the variables I discussed earlier on price range and stars. The R-squared for the linear model that predicted stars was only around 6%, meaning that were far more features that could have been better for the model even if the relationships in the model were found to be mostly statistically significant and correlated well with trends we saw earlier in the plots analysis. However, the amount of variance explained by the linear model on price range performed substantially better with 46% of variance being explained by the model.


# FINAL PLOTS AND SUMMARY

## Plot One:
![plot of chunk unnamed-chunk-345](figure/unnamed-chunk-345-1.png)

## Description One: 

The majority of operating establishments were rated between 3 to 5 stars, with a peak at 4 stars where almost 20% of establishments achieved this rating.
Very few establishments (less than 10%) that remained operating were rated between 1 to 2 stars.


## Plot Two:
![plot of chunk unnamed-chunk-346](figure/unnamed-chunk-346-1.png)

## Description Two:

We defined value earlier as stars divided by price range, which gives us the amount of value that we derive for a given price that we pay for our food at an operating restaurant. In the graph above, we find that when it comes to getting the most "bang for your buck", the cities of the Phoenix metropolitan area (except for Scottsdale) are the best for extracting maximum value in your dining experience for the amount of money that you pay.


## Plot Three:
![plot of chunk unnamed-chunk-347](figure/unnamed-chunk-347-1.png)

## Description Three:

Across all North American states, it seems that very few restaurants are able to get a perfect 5 star rating. That being said, the number of restaurants that were rated 2 stars or less were also negligible as well. Almost all restaurants are clustered between 3 stars to 4.5 stars. 


# REFLECTION

The Yelp academic data set contains information on over 150 thousand establishments across 101 variables within North America and beyond. Although the analysis was done on the whole data set from time to time, I was mainly interested in operating restaurants within North America which brough this number down to around 26-27 thousand establishments. But even so, I was able to perform a wide variety of analyses in terms of exploring the relationship between price, Yelp stars, review count among many other variables across a wide range of geographies on a state and city level. In this process, I created many plots, maps, calculated summary statistics and employed linear models to explore this rich and informative data set.

There was a clear trend between price range and stars, with restaurants in higher price ranges generally receiving much higher Yelp star ratings. That being said, having a higher Yelp star rating did not necessarly translate into value, as we saw that cities such as Montreal which scored highly on both indicators ended performing the worst compared to other cities when it came to the value per dollar spent. One other important point is that restaurants in more expensive price ranges tend to be located in downtown areas, though in the case of the Phoenix metropolitan area, these were found mainly in Scottsdale (a suburb to the east). 

Another interesting insight is that across all price ranges, noisier restaurants tended to be rated more poorly than those that were quieter. Restaurants of all noise levels were distributed throughout the cities analyzed, and there was generally not one area where you could find restaurants of a specific noise level.

Although I expected many establishments to have low review counts, I was quite surprised to find that the median number of reviews per establishment was so low, and that the dispersion of review counts across different establishments was so large. Something that did not surprise me, however, was that almost all closed establishments tended to have a lower review count. Finally, one last thing that I found interesting was that restaurants that served only beer and wine tended to be rated higher than those that were full bar.

One of the biggest limitations of the data set was the lack of data from other North American cities. It is not known why or how these cities were chosen, and it is not clear if every establishment in these cities is covered in the data set. The variables present in this data set also skewed heavily towards analysis of restaurants, so that other Yelp-rated establishments such as spas, salons and hotels were harder to analyze. It would be interesting to have a much larger selection of cities to choose from, and to be able to test the linear models above to see if the relationships end up becoming strong or weaker with a richer data set.

