json.array!(@race_attributes) do |race_attribute|
  json.extract! race_attribute, :id
  json.url race_attribute_url(race_attribute, format: :json)
end
