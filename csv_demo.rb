require 'csv'

# TODO - let's read/write data from beers.csv
csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }
filepath    = 'data/beers.csv'

i = 0
CSV.foreach(filepath, csv_options) do |beer|
  p beer["Origin"]
end
# If we use the csv_option above, there is no need to use the if statement below:
# p row # row is an Array
# if i > 0
#   name = row[0]
#   appearance = row[1]
#   origin = row[2]
#   puts name
# end
# i += 1
