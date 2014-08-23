json.array!(@race_attribute_types) do |race_attribute_type|
  json.extract! race_attribute_type, :id
  json.url race_attribute_type_url(race_attribute_type, format: :json)
end
