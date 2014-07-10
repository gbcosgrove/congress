json.array!(@search_parameters) do |search_parameter|
  json.extract! search_parameter, :id
  json.url search_parameter_url(search_parameter, format: :json)
end
