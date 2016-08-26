json.array!(@usercreations) do |usercreation|
  json.extract! usercreation, :id, :usertype
  json.url usercreation_url(usercreation, format: :json)
end
