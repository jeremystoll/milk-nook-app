Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET'], 
  scope: 'public_profile,user_location', info_fields: 'id,name,picture,link,age_range,location'
  #scope: user_friends
  #info_fields: friends, mutualfriends
end