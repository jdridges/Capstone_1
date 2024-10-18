SELECT * FROM market_research.median_income_in_chicago;

-- What is the average cook county income across all municipalities?
SELECT AVG(median_income_2000_to_2009)
FROM median_income_in_chicago;

/* The average income across all municipalities is $69,155.90. This could potentially help me in
understanding what my customer base will be able to spend and what specific municipality I would want
to locate my store in.*/

-- What municipalities have a median close to the overall average of $69,155.90?
SELECT * FROM median_income_in_chicago
WHERE median_income_2000_to_2009 BETWEEN 65000 AND 75000;

/* This query gave me 19 different municipalities to choose from. Based on my business model, I want to 
offer a good balance of expensive and affordable products. These areas are fairly close to the average income
in cook county, so I think this would be a good group to choose from for location of the store. I would
specifically like to open my store in Schaumburg, which showed up in this table with a median income of $68,594. */

-- What is the median income of the municipalities that border Schaumburg?
SELECT * FROM median_income_in_chicago
WHERE municipality = 'Hoffman Estates' OR 'Elk Grove Village' OR 'Rolling Meadows'
ORDER BY median_income_2000_to_2009 DESC;

/* It looks like the only municipality bordering Schaumburg in Cook County is
Hoffman Estates. With that being said, the median income is $76,171, which is 
fairly close to that of Schaumburg. This further enhances the business model 
I am trying to produce.*/