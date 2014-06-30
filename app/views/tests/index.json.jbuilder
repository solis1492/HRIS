json.array!(@tests) do |test|
  json.extract! test, :id, :score, :WPM, :retention, :overall, :user_id, :campaign_id
  json.url test_url(test, format: :json)
end
