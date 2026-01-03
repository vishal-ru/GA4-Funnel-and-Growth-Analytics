CREATE OR REPLACE TABLE analytics.fact_sessions AS
SELECT
  user_pseudo_id,
  session_id,
  MIN(event_date)                                    AS session_date,
  MIN(event_timestamp)                              AS session_start_time,

  COUNT(*)                                          AS total_events,
  SUM(IFNULL(engagement_time_msec,0))               AS total_engagement_time,

  MAX(IF(event_name = 'view_item', 1, 0))            AS viewed_item,
  MAX(IF(event_name = 'add_to_cart', 1, 0))          AS added_to_cart,
  MAX(IF(event_name = 'begin_checkout', 1, 0))       AS began_checkout,
  MAX(IF(event_name = 'purchase', 1, 0))             AS purchased,

  device_category,
  traffic_source,
  traffic_medium,
  country

FROM analytics.fact_events
GROUP BY
  user_pseudo_id,
  session_id,
  device_category,
  traffic_source,
  traffic_medium,
  country;

