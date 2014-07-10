json.array!(@contributions) do |contribution|
  json.extract! contribution, :id
  json.url contribution_url(contribution, format: :json)
end
