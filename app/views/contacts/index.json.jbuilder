json.array!(@contacts) do |contact|
  json.extract! contact, :id, :contact_type_id, :value
  json.url contact_url(contact, format: :json)
end
