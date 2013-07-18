json.array!(@searches) do |search|
  json.extract! search, :drop-down, :criteria
  json.url search_url(search, format: :json)
end
