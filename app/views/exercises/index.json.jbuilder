json.array!(@exercises) do |exercise|
  json.extract! exercise, :id, :fName, :descr, :calories, :intensity
  json.url exercise_url(exercise, format: :json)
end
