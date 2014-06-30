json.array!(@people) do |person|
  json.extract! person, :id, :firstName, :middleName, :lastName, :secondLastName, :DOB, :HID, :EnglishLevel, :SpanishLevel
  json.url person_url(person, format: :json)
end
