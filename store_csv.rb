require 'csv'

csv_options = { col_sep: ',', force_quotes: true, quote_char: '"' }
filepath    = 'data/new_beers.csv'

beers = [
    { name: "Asahi", appearance: "Pale Larger", origin: "Japan" },
    { name: "Guiness", appearance: "Stout", origin: "Ireland" },
    { name: "Edelweiss", appearance: "White", origin: "Australia"}
]

CSV.open(filepath, 'wb', csv_options) do |csv|
  csv << ['Name', 'Appearance', 'Origin']
  beers.each do |beer|
    # Put the beer in the CSV
    # 'beer' is a *Hash*
    csv << [beer[:name], beer[:appearance], beer[:origin]]
  end
end

