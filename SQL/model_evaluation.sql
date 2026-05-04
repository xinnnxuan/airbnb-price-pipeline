CREATE OR REPLACE TABLE airbnb.model_evaluation AS
SELECT
  ROUND(mean_absolute_error, 2) AS MAE,
  ROUND(SQRT(mean_squared_error), 2) AS RMSE,
  ROUND(r2_score, 4) AS R2
FROM ML.EVALUATE(MODEL airbnb.price_model);