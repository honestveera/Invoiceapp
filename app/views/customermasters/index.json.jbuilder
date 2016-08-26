json.array!(@customermasters) do |customermaster|
  json.extract! customermaster, :id, :customername, :customeraddress, :customerfax, :customerphone, :customeremail, :customertin, :customercst
  json.url customermaster_url(customermaster, format: :json)
end
