-- Average price by city
CREATE OR REPLACE TABLE airbnb.analysis_price_by_city AS
SELECT city, COUNT(*) AS listings,
  ROUND(AVG(price_usd), 2) AS avg_price,
  ROUND(MIN(price_usd), 2) AS min_price,
  ROUND(MAX(price_usd), 2) AS max_price
FROM airbnb.listings_clean
GROUP BY city ORDER BY avg_price DESC;

-- Price by room type
CREATE OR REPLACE TABLE airbnb.analysis_price_by_room_type AS
SELECT room_type, COUNT(*) AS listings,
  ROUND(AVG(price_usd), 2) AS avg_price
FROM airbnb.listings_clean
GROUP BY room_type ORDER BY avg_price DESC;

-- Availability tiers vs price
CREATE OR REPLACE TABLE airbnb.analysis_availability AS
SELECT
  CASE
    WHEN availability_365 < 30  THEN 'Rarely Available (<30 days)'
    WHEN availability_365 < 90  THEN 'Occasional (30-90 days)'
    WHEN availability_365 < 180 THEN 'Moderate (90-180 days)'
    ELSE 'Highly Available (180+ days)'
  END AS availability_tier,
  COUNT(*) AS listings,
  ROUND(AVG(price_usd), 2) AS avg_price
FROM airbnb.listings_clean
GROUP BY availability_tier ORDER BY avg_price DESC;

-- Review scores vs price
CREATE OR REPLACE TABLE airbnb.analysis_review_vs_price AS
SELECT
  CASE
    WHEN review_score >= 4.8 THEN '4.8-5.0 (Excellent)'
    WHEN review_score >= 4.5 THEN '4.5-4.8 (Great)'
    WHEN review_score >= 4.0 THEN '4.0-4.5 (Good)'
    WHEN review_score > 0    THEN 'Below 4.0'
    ELSE 'No Rating'
  END AS score_bucket,
  COUNT(*) AS listings,
  ROUND(AVG(price_usd), 2) AS avg_price
FROM airbnb.listings_clean
GROUP BY score_bucket ORDER BY avg_price DESC;

-- Top 50 neighborhoods by price
CREATE OR REPLACE TABLE airbnb.analysis_top_neighborhoods AS
SELECT city, neighborhood, COUNT(*) AS listings,
  ROUND(AVG(price_usd), 2) AS avg_price
FROM airbnb.listings_clean
GROUP BY city, neighborhood HAVING listings > 20
ORDER BY avg_price DESC LIMIT 50;