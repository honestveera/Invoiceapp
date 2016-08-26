json.array!(@yearcreations) do |yearcreation|
  json.extract! yearcreation, :id, :year
  json.url yearcreation_url(yearcreation, format: :json)
end
