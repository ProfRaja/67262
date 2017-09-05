
-- load this file with
--
-- psql -U isdb -d postgres -f babynames_load.sql

DROP TABLE IF EXISTS Baby_Names;

CREATE TABLE Baby_Names (
   state    text,
   gender   text,
   year     integer,
   fname    text,
   number   integer
);

-- the psql \copy command needs to be on one line

-- We can explicitly specify the order of the columns in the CSV file

-- \copy Baby_Names(state, gender, year, fname, number)  from '10.csv' CSV

-- Or if we leave out the list of columns and the order specified
-- in the CREATE TABLE statement will be used

\copy Baby_Names from 'babynames2016_state_gender_year_name_count.csv'   CSV


