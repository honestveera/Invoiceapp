json.array!(@authorizedusers) do |authorizeduser|
  json.extract! authorizeduser, :id, :companyname, :usertype, :username, :year
  json.url authorizeduser_url(authorizeduser, format: :json)
end
