json.array!(@character_attributes) do |character_attribute|
  json.extract! character_attribute, :id
  json.url character_attribute_url(character_attribute, format: :json)
end
