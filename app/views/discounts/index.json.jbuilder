json.array!(@discounts) do |discount|
  json.extract! discount, :id, :description, :text, :value, :picture, :start, :date, :end, :date, :name, :text
  json.url discount_url(discount, format: :json)
end
