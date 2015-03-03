json.array!(@record_as) do |record_a|
  json.extract! record_a, :id, :attr1, :attr2, :attr3, :attr4, :attr5
  json.url record_a_url(record_a, format: :json)
end
