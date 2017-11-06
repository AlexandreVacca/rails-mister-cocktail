require 'json'
require 'open-uri'

url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
data_serialized = open(url).read
data = JSON.parse(data_serialized)

data["drinks"].each do |elem|
  new_ingredient = Ingredient.new({name: elem["strIngredient1"]})
  new_ingredient.save
  end




