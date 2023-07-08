-- Select each the quickest lap time from each race for each pilot
SELECT pilot_id, race_id, MIN(lap_time) FROM lap GROUP BY race_id, pilot_id, id;

-- Save the result of the previous query in a new table called best_lap
DROP TABLE IF EXISTS best_lap;
-- Create auxiliar table where we save the result of the previous query but because of adding the id we duplicate the rows
CREATE TABLE IF NOT EXISTS best_lap as (SELECT row_id, id, race_id, pilot_id, lap_number, MIN(lap_time) FROM lap GROUP BY pilot_id, race_id, lap_number, row_id, id);
SELECT COUNT(*) FROM best_lap;

-- Delete the duplicated rows
-- ???