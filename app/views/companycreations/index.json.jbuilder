json.array!(@companycreations) do |companycreation|
  json.extract! companycreation, :id, :companyname
  json.url companycreation_url(companycreation, format: :json)
end
