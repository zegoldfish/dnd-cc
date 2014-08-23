json.array!(@character_attribute_types) do |character_attribute_type|
  json.extract! character_attribute_type, :id
  json.url character_attribute_type_url(character_attribute_type, format: :json)
end
