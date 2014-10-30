json.array!(@products) do |product|
  json.extract! product, :id, :name, :area, :detail
  json.url product_url(product, format: :json)
end
