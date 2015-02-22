json.array!(@destinations) do |destination|
  json.extract! destination, :id, :name, :description
  json.url destination_url(destination, format: :json)
end
