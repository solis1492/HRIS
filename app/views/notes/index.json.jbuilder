json.array!(@notes) do |note|
  json.extract! note, :id, :value, :person_id
  json.url note_url(note, format: :json)
end
