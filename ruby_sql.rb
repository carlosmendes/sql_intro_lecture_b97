# Schema: Set of tables
# Table: Tab on excel / class
# Column: column on tab / attribute / instance variable
# Row: Object / Record

# SQL
# SELECT columns -> use * to return all columns
# FROM table(s) -> Runs this first!
# WHERE conditions on columns -> Runs 2nd
# ORDER BY -> Runs last


# LIKE allows you to apply regex in the WHERE clause
# % - any character 0 or many times
# _ - any character 1 time

# AGREGATION FUNCTIONS
# Get several records and only return one value!!!
# MAX, MIN, COUNT, AVG, SUM

require 'sqlite3'

db = SQLite3::Database::new('db.sqlite')

query = "SELECT * FROM doctors"


results = db.execute(query)

# THis returns an array of arrays
# Each inner array is a record
p results

results.each do |doctor|
  puts "#{doctor[1]} is #{doctor[3]}"
end

db.results_as_hash = true
#  now the records are hashes!
results = db.execute(query)
p results
