json.array!(@getopis) do |getopi|
  json.extract! getopi, :id, :title, :description
  json.url getopi_url(getopi, format: :json)
end
