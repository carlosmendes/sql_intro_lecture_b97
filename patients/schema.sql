CREATE TABLE 'patients' (
  'id' INTEGER PRIMARY KEY AUTOINCREMENT,
  'first_name' VARCHAR,
  'last_name' VARCHAR,
  'social_security_number' VARCHAR,
  'age' INTEGER
);

CREATE TABLE 'doctors' (
  'id' INTEGER PRIMARY KEY AUTOINCREMENT,
  'first_name' VARCHAR,
  'last_name' VARCHAR,
  'specialty' VARCHAR
);

CREATE TABLE 'consultations' (
  'doctor_id' INTEGER,
  'patient_id' INTEGER,
  'created_at' DATE
);