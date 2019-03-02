DROP DATABASE IF EXISTS indexed_cars;
DROP USER IF EXISTS indexed_cars_user;
DROP INDEX IF EXISTS title;
DROP INDEX IF EXISTS code;
DROP INDEX IF EXISTS model_code;
CREATE USER indexed_cars_user;
CREATE DATABASE indexed_cars WITH OWNER indexed_cars_user;

\c indexed_cars;

\i scripts/car_models.sql;

\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;

\timing
SELECT DISTINCT make_title FROM car_models
WHERE make_code ='LAM';

-- SELECT DISTINCT model_title FROM car_models
-- WHERE make_code = 'NISSAN' and model_code='GT-R';

-- SELECT make_code, model_code, model_title, year FROM car_models
-- WHERE make_code = 'LAM';

-- SELECT DISTINCT COUNT(*) FROM car_models
-- WHERE year BETWEEN 2010 AND 2015;

SELECT COUNT(*) from car_models where year = 2010;


CREATE INDEX title
ON car_models (make_title);

CREATE INDEX code 
ON car_models (make_code);

CREATE INDEX model_code
ON car_models (model_code);

CREATE INDEX year 
ON car_models (year);

-- \timing

-- SELECT DISTINCT make_title FROM car_models
-- WHERE make_code = 'LAM';

-- SELECT DISTINCT make_title FROM car_models WHERE make_code = 'NISSAN' AND model_code ='GT-R';

-- SELECT DISTINCT COUNT(*) FROM car_models 
-- WHERE year BETWEEN 2010 AND 2015;

SELECT COUNT(*) FROM car_models WHERE year = 2010;

