json.array!(@stuffs) do |stuff|
  json.extract! stuff, :id, :pet_id, :name, :size, :weight, :description, :brand, :discount_id
  json.url stuff_url(stuff, format: :json)
end
