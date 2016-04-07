json.array!(@brands) do |brand|
  json.extract! brand, :id, :name, :picture, :description, :country, :string
  json.url brand_url(brand, format: :json)
end
