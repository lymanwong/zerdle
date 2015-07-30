json.array!(@postings) do |posting|
  json.extract! posting, :id, :title, :description, :category, :condition, :price, :offer_shipping, :shipping_size, :offer_local_pickup
  json.url posting_url(posting, format: :json)
end
