json.array!(@companies) do |company|
  json.extract! company, :id, :locations, :name
  json.url company_url(company, format: :json)
end
