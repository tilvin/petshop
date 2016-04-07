json.array!(@pets) do |pet|
  json.extract! pet, :id, :name, :size
  json.url pet_url(pet, format: :json)
end
