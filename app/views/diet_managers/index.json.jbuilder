json.array!(@diet_managers) do |diet_manager|
  json.extract! diet_manager, :id
  json.url diet_manager_url(diet_manager, format: :json)
end
