CREATE OR REPLACE MODEL airbnb.price_model
OPTIONS (
  model_type = 'linear_reg',
  input_label_cols = ['price_usd'],
  data_split_method = 'RANDOM',
  data_split_eval_fraction = 0.2
) AS
SELECT
  city,
  neighborhood,
  room_type,
  review_score,
  availability_365,
  bedrooms,
  amenity_count,
  price_usd
FROM airbnb.listings_clean
WHERE price_usd IS NOT NULL
  AND review_score IS NOT NULL;