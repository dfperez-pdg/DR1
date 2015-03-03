json.array!(@record_bs) do |record_b|
  json.extract! record_b, :id, :attr1, :attr2, :attr3, :attr4, :attr5
  json.url record_b_url(record_b, format: :json)
end
