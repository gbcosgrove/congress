json.array!(@politicians) do |politician|
  json.extract! politician, :id
  json.url politician_url(politician, format: :json)
end
