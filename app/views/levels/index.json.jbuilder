json.array!(@levels) do |level|
  json.extract! level, :id
  json.url level_url(level, format: :json)
end
