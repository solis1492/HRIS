json.array!(@colleges) do |college|
  json.extract! college, :id, :name, :career, :people_id
  json.url college_url(college, format: :json)
end
