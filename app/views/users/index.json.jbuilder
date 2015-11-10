json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :last_name, :email, :social_security_number
  json.url user_url(user, format: :json)
end
