json.array!(@character_backgrounds) do |character_background|
  json.extract! character_background, :id
  json.url character_background_url(character_background, format: :json)
end
