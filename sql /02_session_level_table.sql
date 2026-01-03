CREATE OR REPLACE TABLE analytics.fact_events AS
SELECT
  event_date,
  event_timestamp,
  event_name,
  user_pseudo_id,
  session_id,
  device_category,
  traffic_source,
  traffic_medium,
  country,
  engagement_time_msec
FROM staging.stg_events_flat
WHERE session_id IS NOT NULL;

