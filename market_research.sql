SELECT * FROM market_research.retained_earnings_retail;

-- What quarter has the most retained earnings on average?
SELECT avg(q1), avg(q2), avg(q3), avg (q4)
FROM retained_earnings_retail;

/* It looks like the average retained earnings increases slightly by quarter with 
Q4 being the highest average. That being said, it may be beneficial to set plans to
enter into the retail industry during Q4*/

-- What does the retained earnings look like over the past 5 years?
SELECT * FROM retained_earnings_retail
WHERE year> 2018;

/* Looking at the retained earnings in retail over the past 5 years, they look to be trending slightly
downwards slightly. This would be the perfect time to enter the industry as I expect a rise in the coming
years. */

-- What year had the highest and lowest retained earnings in the retail industry for Q4?
SELECT q4, year
FROM retained_earnings_retail
WHERE q4= (SELECT MAX(q4) FROM retained_earnings_retail)
OR q4 =(SELECT MIN(q4) FROM retained_earnings_retail);

/* 2001 had the lowest retained earnings at 90,628 million dollars and 2013 had the highest
retained earnings with 169,631 million dollars. This data helps me undertand more information
about the recent trends in the retail industry as it applies to when I would ideally like to
enter the industry. From my last query I wrote, I found the previous years retained earnings 
were 138,170 million dollars, which shows there is a downwards trend and gives me an idea of
what these numbers mean as it pertains to the business I would like to create.*/

/* What did the rest of the year of 2013 look like when Q4 had its highest retained earnings
recorded?*/
SELECT * FROM retained_earnings_retail
WHERE year=2013;

/* It looks like this entire year had high retained earning values. Using this information, and
knowing where the retained earnings have been in the recent days, it seems like they have dropped a 
fair amount since 2013 and this was not just an outlier. */

-- What did the rest of 2001 look like when Q4 had the lowest retained earnings rcorded?
SELECT * FROM retained_earnings_retail
WHERE year=2001;
/* This table, similarly to 2013, shows this is not an outlier value. The other values are very much on 
par with this minimum.*/