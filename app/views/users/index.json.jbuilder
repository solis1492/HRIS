json.array!(@users) do |user|
  json.extract! user, :id, :name, :password_digest, :campaign_id, :role_id
  json.url user_url(user, format: :json)
end
