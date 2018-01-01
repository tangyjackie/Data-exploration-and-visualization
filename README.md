Summary

This data visualization shows the number of after-tax income years it takes to be able to afford a down payment
for an average household (2 or more earners) in each of the Canadian metro areas (census metropolitan areas also known as CMAs).
The data was calculated in two stages; first, the average down payment needed was calculated by taking the average price of a home
minus the average mortgage in each of the CMAs. Then, this value  was divided by 2016 census data on after-tax median household 
income in 2015 from Statistics Canada in order to calculate the number of years it would take to afford a down payment for a home 
if they put their entire after-tax salary into their down payment, also known as the variable on the x-axis, income_years.
The goal of this visualization is to show how much variation there is in terms of housing affordability across Canada.



Design

The type of plot chosen for this visualization was a bar plot, and this was chosen because there was only one variable of interest,
which was the number of years of after-tax income needed to afford a down payment as represented by the variable income_years.
By using a bar plot, I would be able to show how this variable (income_years) varied amongst different cities across Canada,
as represented by the variable CMA (census metropolitan area); each bar would be represented by a different CMA. 
The variable CMA is a Canadian-designated name used to represent each metropolitan area within Canada. 
Although the colour choices were chosen by default, I decided to keep the colour variation choices to be the default, 
because feedback from one of the reviewers said that the variation in colours helped them to differentiate between different CMAs and to make
the visualization more visually appealing and colourful.

One of most important design changes I made after collecting feedback (all three reviewers mentioned this issue) was to flip the axes in which 
income_years and CMA were shown. The design in the income_years.html file originally had the CMAs on the x-axis and the variable income_years on the y-axis.
Based on the feedback that I received, it was more visually appealing and easier to understand if the axes for each of those
variables were reversed, with CMA on the y-axis and the income_years variable on the x-axis, which I implemented
for the new version in income_years_final.html. Now, one can read the name of each of the CMAs (ex. Toronto, Quebec, Calgary etc.) 
without having to read upside down. 

Another issue that two of the reviewers mentioned in the feedback section was that the text for some of the longer CMA names were cut off
in the original bar plot in the income_years.html file. While flipping the axes helped to correct this issue a bit, I also increased the width
and height of the plot in order to have all the CMA names shown without any portion being cut off. In doing so, this also allowed the title
to be in a more central location above the plot, and made the plot fit the entire web page.


Finally, another minor design change (based on feedback from one of the reviewers)that I made was that I extended the income_years variable ticks 
on the x-axis to be 9 (after reversing the axes), which allowed some white space between the top bar and the end of the plot, which also preserved 
the one decimal place in the tooltip and the x-axis ticks for the income_years variable. Having the one decimal place showing prevented both 
1.9 and 1.1 from both being classified as 1, which painted a more accurate picture of geographic variation in the income_years variable. 



Feedback

I received both positive and negative feedback regarding my first attempt at telling a story on housing affordability across Canada.
The feedback is shown below for each reviewer below.

Reviewer #1:

The visualization is very interesting as it explains and tells a story about housing affordability issues in Canada which is a major
topic of discussion in everyday life. I really liked how you went with after-tax income as a measure of income to calculate the 
income years needed to afford a down payment, as most housing affordability indicators use before-tax gross income which is not the
actual dollar value that you have in your pocket to pay for the home, which kind of paints a rosier picture of the issue than if it was based
on after-tax income. In terms of visuals, it could be better if the axes were flipped such that the CMAs were showing on the y-axis, and the 
income_years variable showing on the x-axis. This would better highlight differences across different CMAs visually.
I feel the bars between the spacing is appropriate, but if you could create some white space between the top of the Vancouver bar and the axes limit,
that would look a lot better.

Reviewer #2:

I really like how you show Vancouver as being so much more extreme compared to other cities in Canada. I knew there were issues with
the housing market over there, but I did not know it took that much longer (8 years vs. 1-3 in other cities) to afford a down payment for a home.
That really is a story in and of itself! It would be nice if you could see the entire CMA name on the x-axis, as some of the CMA names are cut off.
It would also be better if the axes were flipped with the CMA name on the y-axis and the income years on the x-axis. That way you can see the name
of the city without having to read upside down.
That being said, I do like how there is a rainbow of colours in the plot, which helps me to distinguish between different cities that have
similar values for years needed to afford a down payment. It also makes it more visually attractive and colourful!

Reviewer #3:

This plot is quite informative, as you can clearly see a geographic variation in terms of housing prices across Canadian cities/towns. 
It's fairly obvious that anything in Ontario and British Columbia especially in the regions in and around Toronto and Vancouver are out of control 
in terms of housing affordability, but I was surprised that CMAs in the Prairies and Atlantic provinces were so affordable. I never realized
how much variation there was across the country when it comes to being able to afford that first down payment.
Visually speaking, it would be better if the axes were flipped so that the CMA variable was on the y-axis and the income_years variable was
on the x-axis. I really think that would help show variations in the income years needed variable across geographies. It also makes the names
easier to read as you currently have to read upside down to see the CMA names. Also, some CMA names looked like they were shortened, so displaying
the names in full would be really helpful.




Resources

The following resources were consulted in the construction of this visualization:
Udacity Data Visualization lectures
www.w3schools.com 







