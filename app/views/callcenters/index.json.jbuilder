json.array!(@callcenters) do |callcenter|
  json.extract! callcenter, :id, :name, :date, :people_id
  json.url callcenter_url(callcenter, format: :json)
end
