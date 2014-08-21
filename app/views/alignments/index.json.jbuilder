json.array!(@alignments) do |alignment|
  json.extract! alignment, :id
  json.url alignment_url(alignment, format: :json)
end
