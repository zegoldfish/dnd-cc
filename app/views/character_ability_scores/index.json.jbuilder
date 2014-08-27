json.array!(@character_ability_scores) do |character_ability_score|
  json.extract! character_ability_score, :id
  json.url character_ability_score_url(character_ability_score, format: :json)
end
