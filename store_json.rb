require 'json'

filepath    = 'data/updated_beers.json'


beers = { beers: [
    {
        name:       'Edelweiss',
        appearance: 'White',
        origin:     'Austria'
    },
    {
        name:       'Guinness',
        appearance: 'Stout',
        origin:     'Ireland'
    },
# etc...
]}

File.open(filepath, 'wb') do |file|
  file.write(JSON.generate(beers))
end
