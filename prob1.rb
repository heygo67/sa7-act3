require 'csv'

file_name = "data.csv"

data = []

CSV.foreach(file_name, headers: true) do |row|
  data << row.to_h
end

puts data
