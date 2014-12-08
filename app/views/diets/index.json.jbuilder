json.array!(@diets) do |diet|
  json.extract! diet, :id, :fName, :descr, :calories
  json.url diet_url(diet, format: :json)
end
