require 'json'
require 'open-uri'

# TODO - Let's fetch name and bio from a given GitHub username
url = 'https://api.github.com/users/jamilemarcele'

serialized_user = open(url).read # serialized_user is a String
user = JSON.parse(serialized_user) # user is a Hash

puts "#{user["name"]} has #{user["public_repos"]} repositories"
