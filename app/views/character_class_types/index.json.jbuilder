json.array!(@character_class_types) do |character_class_type|
  json.extract! character_class_type, :id
  json.url character_class_type_url(character_class_type, format: :json)
end
