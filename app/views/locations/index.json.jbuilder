json.array!(@locations) do |location|
  json.extract! location, :id, :employees, :courses, :city
  json.url location_url(location, format: :json)
end
