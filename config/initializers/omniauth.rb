Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV['GOOGLE_CLIENT_ID'], ENV['GOOGLE_CLIENT_SECRET'],
  {
    name: 'google',
    scope: 'email, profile, plus.me, http://gdata.youtube.com',
    prompt: 'select_account',
    image_aspect_ratio: 'square',
    image_size: 50
  }
  # :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_APP_SECRET']
end
OmniAuth.config.allowed_request_methods = %i[get]


