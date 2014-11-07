json.array!(@ingredients) do |ingredient|
  json.extract! ingredient, :id, :name, :measurement, :image
  json.url ingredient_url(ingredient, format: :json)
end
