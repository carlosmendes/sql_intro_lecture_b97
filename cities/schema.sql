CREATE TABLE 'cities' (
  'id' INTEGER PRIMARY KEY AUTOINCREMENT,
  'name' VARCHAR
);

CREATE TABLE 'inhabitants' (
  'id' INTEGER PRIMARY KEY AUTOINCREMENT,
  'first_name' VARCHAR,
  'last_name' VARCHAR,
  'age' INTEGER,
  'city_id' INTEGER
);