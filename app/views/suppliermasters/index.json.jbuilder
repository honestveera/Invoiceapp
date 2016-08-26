json.array!(@suppliermasters) do |suppliermaster|
  json.extract! suppliermaster, :id, :suppliername, :supplieraddress, :supplierfax, :supplierphone, :supplieremail, :suppliertin, :suppliercst
  json.url suppliermaster_url(suppliermaster, format: :json)
end
