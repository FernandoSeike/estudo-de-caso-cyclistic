CREATE TABLE `studo-de-caso-analytics.cyclistic_case_study.viagens_consolidadas` AS
SELECT * FROM `studo-de-caso-analytics.cyclistic_case_study.cyclistic_08_2025`
UNION ALL
SELECT * FROM `studo-de-caso-analytics.cyclistic_case_study.cyclistic_09_2025`
UNION ALL
SELECT * FROM `studo-de-caso-analytics.cyclistic_case_study.cyclistic_10_2025`
UNION ALL
SELECT * FROM `studo-de-caso-analytics.cyclistic_case_study.cyclistic_11_2025`
UNION ALL
SELECT * FROM `studo-de-caso-analytics.cyclistic_case_study.cyclistic_12_2025`
UNION ALL
SELECT 
  ride_id, 
  rideable_type, 
  started_at, 
  ended_at, 
  start_station_name, 
  start_station_id, 
  end_station_name, 
  end_station_id, 
  SAFE_CAST(start_lat AS FLOAT64), 
  SAFE_CAST(start_lng AS FLOAT64), 
  SAFE_CAST(end_lat AS FLOAT64), 
  SAFE_CAST(end_lng AS FLOAT64), 
  member_casual 
FROM `studo-de-caso-analytics.cyclistic_case_study.cyclistic_01_2026`
UNION ALL
SELECT * FROM `studo-de-caso-analytics.cyclistic_case_study.cyclistic_02_2026`
UNION ALL
SELECT * FROM `studo-de-caso-analytics.cyclistic_case_study.cyclistic_03_2026`
UNION ALL
SELECT * FROM `studo-de-caso-analytics.cyclistic_case_study.cyclistic_04_2026`
UNION ALL
SELECT * FROM `studo-de-caso-analytics.cyclistic_case_study.cyclistic_05_2026`
UNION ALL
SELECT * FROM `studo-de-caso-analytics.cyclistic_case_study.cyclistic_06_2026`
UNION ALL
SELECT * FROM `studo-de-caso-analytics.cyclistic_case_study.cyclistic_07_2026`
UNION ALL
SELECT * FROM `studo-de-caso-analytics.cyclistic_case_study.cyclistic_08_2026`;   CREATE TABLE `studo-de-caso-analytics.cyclistic_case_study.viagens_processadas` AS
SELECT 
  *,
  TIMESTAMP_DIFF(ended_at, started_at, MINUTE) AS ride_length_minutos,
  EXTRACT(DAYOFWEEK FROM started_at) AS day_of_week
FROM 
  `studo-de-caso-analytics.cyclistic_case_study.viagens_consolidadas`;  SELECT 
  member_casual,
  AVG(ride_length_minutos) AS tempo_de_uso
FROM 
  `studo-de-caso-analytics.cyclistic_case_study.viagens_processadas` 
GROUP BY
  member_casual


SELECT
  member_casual,
  day_of_week,
  COUNT(ride_id) AS total_viagens
FROM 
  `studo-de-caso-analytics.cyclistic_case_study.viagens_processadas`
GROUP BY
  member_casual,
  day_of_week
ORDER BY
  day_of_week DESC
