json.array!(@exercise_managers) do |exercise_manager|
  json.extract! exercise_manager, :id
  json.url exercise_manager_url(exercise_manager, format: :json)
end
