json.array!(@curators) do |curator|
  json.extract! curator, :id
  json.url curator_url(curator, format: :json)
end
