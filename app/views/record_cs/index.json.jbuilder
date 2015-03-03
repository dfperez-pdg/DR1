json.array!(@record_cs) do |record_c|
  json.extract! record_c, :id, :attr1, :attr2, :attr3, :attr4, :attr5, :attr6
  json.url record_c_url(record_c, format: :json)
end
