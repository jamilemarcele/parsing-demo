require 'json'

# TODO - let's read/write data from beers.json
filepath    = 'data/beers.json'

serialized_beers = File.read(filepath)
p serialized_beers

# Deserialize the file
# Hard-Drive (String) -> Memory(Hash)

json_file = JSON.parse(serialized_beers)

# TODO: Display the name of second beer in file
p json_file["beers"][1]["name"]
# Ask question: is it an array or a hash?
#            Array
#                     Hash

# TODO: Display all the unique origins (sorted)
origins = []
json_file["beers"].each do |beer|
  # beer is a hash
  origins << beer["origin"]
end

p origins.uniq.sort
