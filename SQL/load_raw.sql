LOAD DATA INTO airbnb.nyc_raw
FROM FILES (format='CSV', uris=['gs://airbnb-pipeline-data/raw/nyc/listings.csv'],
  skip_leading_rows=1, allow_quoted_newlines=true);

LOAD DATA INTO airbnb.la_raw
FROM FILES (format='CSV', uris=['gs://airbnb-pipeline-data/raw/la/listings.csv'],
  skip_leading_rows=1, allow_quoted_newlines=true);

LOAD DATA INTO airbnb.seattle_raw
FROM FILES (format='CSV', uris=['gs://airbnb-pipeline-data/raw/seattle/listings.csv'],
  skip_leading_rows=1, allow_quoted_newlines=true);

LOAD DATA INTO airbnb.chicago_raw
FROM FILES (format='CSV', uris=['gs://airbnb-pipeline-data/raw/chicago/listings.csv'],
  skip_leading_rows=1, allow_quoted_newlines=true);

LOAD DATA INTO airbnb.austin_raw
FROM FILES (format='CSV', uris=['gs://airbnb-pipeline-data/raw/austin/listings.csv'],
  skip_leading_rows=1, allow_quoted_newlines=true);

LOAD DATA INTO airbnb.boston_raw
FROM FILES (format='CSV', uris=['gs://airbnb-pipeline-data/raw/boston/listings.csv'],
  skip_leading_rows=1, allow_quoted_newlines=true);

LOAD DATA INTO airbnb.sf_raw
FROM FILES (format='CSV', uris=['gs://airbnb-pipeline-data/raw/sf/listings.csv'],
  skip_leading_rows=1, allow_quoted_newlines=true);

LOAD DATA INTO airbnb.denver_raw
FROM FILES (format='CSV', uris=['gs://airbnb-pipeline-data/raw/denver/listings.csv'],
  skip_leading_rows=1, allow_quoted_newlines=true);

LOAD DATA INTO airbnb.nashville_raw
FROM FILES (format='CSV', uris=['gs://airbnb-pipeline-data/raw/nashville/listings.csv'],
  skip_leading_rows=1, allow_quoted_newlines=true);

LOAD DATA INTO airbnb.portland_raw
FROM FILES (format='CSV', uris=['gs://airbnb-pipeline-data/raw/portland/listings.csv'],
  skip_leading_rows=1, allow_quoted_newlines=true);

LOAD DATA INTO airbnb.washington_dc_raw
FROM FILES (format='CSV', uris=['gs://airbnb-pipeline-data/raw/washington_dc/listings.csv'],
  skip_leading_rows=1, allow_quoted_newlines=true);

LOAD DATA INTO airbnb.dallas_raw
FROM FILES (format='CSV', uris=['gs://airbnb-pipeline-data/raw/dallas/listings.csv'],
  skip_leading_rows=1, allow_quoted_newlines=true);

LOAD DATA INTO airbnb.new_orleans_raw
FROM FILES (format='CSV', uris=['gs://airbnb-pipeline-data/raw/new_orleans/listings.csv'],
  skip_leading_rows=1, allow_quoted_newlines=true);

LOAD DATA INTO airbnb.san_diego_raw
FROM FILES (format='CSV', uris=['gs://airbnb-pipeline-data/raw/san_diego/listings.csv'],
  skip_leading_rows=1, allow_quoted_newlines=true);

LOAD DATA INTO airbnb.hawaii_raw
FROM FILES (format='CSV', uris=['gs://airbnb-pipeline-data/raw/hawaii/listings.csv'],
  skip_leading_rows=1, allow_quoted_newlines=true);