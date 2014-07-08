json.array!(@contractors) do |contractor|
  json.extract! contractor, :id
  json.url contractor_url(contractor, format: :json)
end
