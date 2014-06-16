json.array!(@residences) do |residence|
  json.extract! residence, :id, :name
  json.url residence_url(residence, format: :json)
end
