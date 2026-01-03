CREATE OR REPLACE TABLE staging.stg_events_flat AS
SELECT
  PARSE_DATE('%Y%m%d', event_date)                     AS event_date,
  event_timestamp,
  event_name,
  user_pseudo_id,

  -- session id
  (SELECT value.int_value
   FROM UNNEST(event_params)
   WHERE key = 'ga_session_id')                       AS session_id,

  -- page url
  (SELECT value.string_value
   FROM UNNEST(event_params)
   WHERE key = 'page_location')                       AS page_location,

  -- engagement time
  (SELECT value.int_value
   FROM UNNEST(event_params)
   WHERE key = 'engagement_time_msec')                AS engagement_time_msec,

  device.category                                     AS device_category,
  traffic_source.source                               AS traffic_source,
  traffic_source.medium                               AS traffic_medium,
  geo.country                                         AS country

FROM `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`
WHERE event_name IN (
  'page_view',
  'view_item',
  'add_to_cart',
  'begin_checkout',
  'purchase'
);

