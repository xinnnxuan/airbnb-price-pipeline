# airbnb-price-pipeline

End-to-end data analytics pipeline on GCP that ingests 600K+ Airbnb listings
across 15 U.S. cities, transforms and analyzes the data in BigQuery, trains a
price prediction model with BigQuery ML, and visualizes insights in Looker Studio.

## Tech Stack

- **Google Cloud Storage** — raw CSV landing zone
- **BigQuery** — data cleaning, transformation, and analysis
- **BigQuery ML** — linear regression price prediction model
- **Looker Studio** — interactive dashboard

## Pipeline
Inside Airbnb CSVs (15 cities)
↓
Google Cloud Storage (raw layer)
↓
BigQuery (staging → cleaned → analysis tables)
↓
BigQuery ML (linear regression)
↓
Looker Studio (dashboard)


## Dataset

Listing data from [Inside Airbnb](http://insideairbnb.com/get-the-data/) for
15 U.S. cities: Austin, Boston, Chicago, Dallas, Denver, Hawaii, Los Angeles,
Nashville, New Orleans, New York City, Portland, San Diego, Seattle, San
Francisco, and Washington DC.

- **613,434** raw rows ingested
- **248,496** listings after cleaning and filtering

## How to Reproduce

1. Download city CSVs from [Inside Airbnb](http://insideairbnb.com/get-the-data/)
2. Upload each CSV to a GCS bucket under `gs://your-bucket/raw/{city}/listings.csv`
3. Run the SQL files in order:
   - `sql/01_load_raw.sql` — load all 15 city CSVs into BigQuery
   - `sql/02_clean.sql` — clean and unify into `airbnb.listings_clean`
   - `sql/03_analysis.sql` — build analysis tables
   - `sql/04_ml_model.sql` — train the BigQuery ML model
   - `sql/05_model_evaluation.sql` — evaluate model performance
4. Connect `airbnb.listings_clean` and analysis tables to Looker Studio

## Key Findings

- **Hawaii** is the most expensive market at $394 avg/night; **Denver** the most
  affordable at $166
- **Hotel rooms** average the highest nightly price ($367) but make up less than
  1% of listings; **entire home/apt** dominates at 87% of all listings
- **6-bedroom listings** average ~$950/night vs ~$175 for 1-bedroom
- **Unrated listings** have the highest average price ($399), likely reflecting
  new or luxury properties without accumulated reviews
- Listings that are **rarely available (<30 days/year)** average $295/night —
  higher than moderately or occasionally available listings

## Model Performance

Trained a linear regression model on city, neighborhood, room type, review
score, availability, bedrooms, and amenity count.

| Metric | Value |
|--------|-------|
| R²     | 0.34  |
| RMSE   | $296.19 |
| MAE    | $144.54 |

The model explains ~34% of price variance. The main limitation is the absence
of fine-grained location features (coordinates, proximity to landmarks) which
are likely the strongest price drivers.

## Dashboard

https://datastudio.google.com/reporting/cfbf3e74-1fb3-42a6-9df7-fbd5af684fa2 
