CREATE OR REPLACE TABLE airbnb.listings_clean AS

SELECT 'nyc' AS city, neighbourhood_cleansed AS neighborhood, room_type,
  CAST(REGEXP_REPLACE(REGEXP_REPLACE(price, r'\$', ''), r',', '') AS FLOAT64) AS price_usd,
  COALESCE(bedrooms, 1) AS bedrooms,
  COALESCE(review_scores_rating, 0.0) AS review_score,
  availability_365,
  ARRAY_LENGTH(SPLIT(REGEXP_REPLACE(REGEXP_REPLACE(amenities, r'[\[\]"]', ''), r'\s*,\s*', ','), ',')) AS amenity_count
FROM airbnb.nyc_raw WHERE price IS NOT NULL AND price != ''

UNION ALL SELECT 'la', neighbourhood_cleansed, room_type,
  CAST(REGEXP_REPLACE(REGEXP_REPLACE(price, r'\$', ''), r',', '') AS FLOAT64),
  COALESCE(bedrooms, 1), COALESCE(review_scores_rating, 0.0), availability_365,
  ARRAY_LENGTH(SPLIT(REGEXP_REPLACE(REGEXP_REPLACE(amenities, r'[\[\]"]', ''), r'\s*,\s*', ','), ','))
FROM airbnb.la_raw WHERE price IS NOT NULL AND price != ''

UNION ALL SELECT 'seattle', neighbourhood_cleansed, room_type,
  CAST(REGEXP_REPLACE(REGEXP_REPLACE(price, r'\$', ''), r',', '') AS FLOAT64),
  COALESCE(bedrooms, 1), COALESCE(review_scores_rating, 0.0), availability_365,
  ARRAY_LENGTH(SPLIT(REGEXP_REPLACE(REGEXP_REPLACE(amenities, r'[\[\]"]', ''), r'\s*,\s*', ','), ','))
FROM airbnb.seattle_raw WHERE price IS NOT NULL AND price != ''

UNION ALL SELECT 'chicago', neighbourhood_cleansed, room_type,
  CAST(REGEXP_REPLACE(REGEXP_REPLACE(price, r'\$', ''), r',', '') AS FLOAT64),
  COALESCE(bedrooms, 1), COALESCE(review_scores_rating, 0.0), availability_365,
  ARRAY_LENGTH(SPLIT(REGEXP_REPLACE(REGEXP_REPLACE(amenities, r'[\[\]"]', ''), r'\s*,\s*', ','), ','))
FROM airbnb.chicago_raw WHERE price IS NOT NULL AND price != ''

UNION ALL SELECT 'austin', neighbourhood_cleansed, room_type,
  CAST(REGEXP_REPLACE(REGEXP_REPLACE(price, r'\$', ''), r',', '') AS FLOAT64),
  COALESCE(bedrooms, 1), COALESCE(review_scores_rating, 0.0), availability_365,
  ARRAY_LENGTH(SPLIT(REGEXP_REPLACE(REGEXP_REPLACE(amenities, r'[\[\]"]', ''), r'\s*,\s*', ','), ','))
FROM airbnb.austin_raw WHERE price IS NOT NULL AND price != ''

UNION ALL SELECT 'boston', neighbourhood_cleansed, room_type,
  CAST(REGEXP_REPLACE(REGEXP_REPLACE(price, r'\$', ''), r',', '') AS FLOAT64),
  COALESCE(bedrooms, 1), COALESCE(review_scores_rating, 0.0), availability_365,
  ARRAY_LENGTH(SPLIT(REGEXP_REPLACE(REGEXP_REPLACE(amenities, r'[\[\]"]', ''), r'\s*,\s*', ','), ','))
FROM airbnb.boston_raw WHERE price IS NOT NULL AND price != ''

UNION ALL SELECT 'sf', neighbourhood_cleansed, room_type,
  CAST(REGEXP_REPLACE(REGEXP_REPLACE(price, r'\$', ''), r',', '') AS FLOAT64),
  COALESCE(bedrooms, 1), COALESCE(review_scores_rating, 0.0), availability_365,
  ARRAY_LENGTH(SPLIT(REGEXP_REPLACE(REGEXP_REPLACE(amenities, r'[\[\]"]', ''), r'\s*,\s*', ','), ','))
FROM airbnb.sf_raw WHERE price IS NOT NULL AND price != ''

UNION ALL SELECT 'denver', neighbourhood_cleansed, room_type,
  CAST(REGEXP_REPLACE(REGEXP_REPLACE(price, r'\$', ''), r',', '') AS FLOAT64),
  COALESCE(bedrooms, 1), COALESCE(review_scores_rating, 0.0), availability_365,
  ARRAY_LENGTH(SPLIT(REGEXP_REPLACE(REGEXP_REPLACE(amenities, r'[\[\]"]', ''), r'\s*,\s*', ','), ','))
FROM airbnb.denver_raw WHERE price IS NOT NULL AND price != ''

UNION ALL SELECT 'nashville', neighbourhood_cleansed, room_type,
  CAST(REGEXP_REPLACE(REGEXP_REPLACE(price, r'\$', ''), r',', '') AS FLOAT64),
  COALESCE(bedrooms, 1), COALESCE(review_scores_rating, 0.0), availability_365,
  ARRAY_LENGTH(SPLIT(REGEXP_REPLACE(REGEXP_REPLACE(amenities, r'[\[\]"]', ''), r'\s*,\s*', ','), ','))
FROM airbnb.nashville_raw WHERE price IS NOT NULL AND price != ''

UNION ALL SELECT 'portland', neighbourhood_cleansed, room_type,
  CAST(REGEXP_REPLACE(REGEXP_REPLACE(price, r'\$', ''), r',', '') AS FLOAT64),
  COALESCE(bedrooms, 1), COALESCE(review_scores_rating, 0.0), availability_365,
  ARRAY_LENGTH(SPLIT(REGEXP_REPLACE(REGEXP_REPLACE(amenities, r'[\[\]"]', ''), r'\s*,\s*', ','), ','))
FROM airbnb.portland_raw WHERE price IS NOT NULL AND price != ''

UNION ALL SELECT 'washington_dc', neighbourhood_cleansed, room_type,
  CAST(REGEXP_REPLACE(REGEXP_REPLACE(price, r'\$', ''), r',', '') AS FLOAT64),
  COALESCE(bedrooms, 1), COALESCE(review_scores_rating, 0.0), availability_365,
  ARRAY_LENGTH(SPLIT(REGEXP_REPLACE(REGEXP_REPLACE(amenities, r'[\[\]"]', ''), r'\s*,\s*', ','), ','))
FROM airbnb.washington_dc_raw WHERE price IS NOT NULL AND price != ''

UNION ALL SELECT 'dallas', neighbourhood_cleansed, room_type,
  CAST(REGEXP_REPLACE(REGEXP_REPLACE(price, r'\$', ''), r',', '') AS FLOAT64),
  COALESCE(bedrooms, 1), COALESCE(review_scores_rating, 0.0), availability_365,
  ARRAY_LENGTH(SPLIT(REGEXP_REPLACE(REGEXP_REPLACE(amenities, r'[\[\]"]', ''), r'\s*,\s*', ','), ','))
FROM airbnb.dallas_raw WHERE price IS NOT NULL AND price != ''

UNION ALL SELECT 'new_orleans', neighbourhood_cleansed, room_type,
  CAST(REGEXP_REPLACE(REGEXP_REPLACE(price, r'\$', ''), r',', '') AS FLOAT64),
  COALESCE(bedrooms, 1), COALESCE(review_scores_rating, 0.0), availability_365,
  ARRAY_LENGTH(SPLIT(REGEXP_REPLACE(REGEXP_REPLACE(amenities, r'[\[\]"]', ''), r'\s*,\s*', ','), ','))
FROM airbnb.new_orleans_raw WHERE price IS NOT NULL AND price != ''

UNION ALL SELECT 'san_diego', neighbourhood_cleansed, room_type,
  CAST(REGEXP_REPLACE(REGEXP_REPLACE(price, r'\$', ''), r',', '') AS FLOAT64),
  COALESCE(bedrooms, 1), COALESCE(review_scores_rating, 0.0), availability_365,
  ARRAY_LENGTH(SPLIT(REGEXP_REPLACE(REGEXP_REPLACE(amenities, r'[\[\]"]', ''), r'\s*,\s*', ','), ','))
FROM airbnb.san_diego_raw WHERE price IS NOT NULL AND price != ''

UNION ALL SELECT 'hawaii', neighbourhood_cleansed, room_type,
  CAST(REGEXP_REPLACE(REGEXP_REPLACE(price, r'\$', ''), r',', '') AS FLOAT64),
  COALESCE(bedrooms, 1), COALESCE(review_scores_rating, 0.0), availability_365,
  ARRAY_LENGTH(SPLIT(REGEXP_REPLACE(REGEXP_REPLACE(amenities, r'[\[\]"]', ''), r'\s*,\s*', ','), ','))
FROM airbnb.hawaii_raw WHERE price IS NOT NULL AND price != ''

WHERE price_usd BETWEEN 10 AND 5000;