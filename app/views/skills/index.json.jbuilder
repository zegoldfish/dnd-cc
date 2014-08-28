json.array!(@skills) do |skill|
  json.extract! skill, :id, :skill_name, :description
  json.url skill_url(skill, format: :json)
end
