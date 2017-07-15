# Rails.application.config.middleware.use OmniAuth::Builder do
#   provider :google_oauth2, ENV['GOOGLE_CLIENT_ID'], ENV['GOOGLE_CLIENT_SECRET'],
#   {
#       name: 'google',
#       scope: 'email, profile',
#       prompt: 'select_account',
#       image_aspect_ratio: 'square',
#       image_size: 50
#     }
# end 

# Rails.application.config.middleware.use OmniAuth::Builder do
#   provider :google_oauth2, ENV['Google_Client_ID'], ENV['Google_Client_Secret']
#   {
#      name: 'google',
#      scope: 'email, profile',
#      prompt: 'select_account',
#      image_aspect_ratio: 'square',
#      image_size: 50
#      }
#   on_failure { |env| AuthenticationsController.action(:failure).call(env) }
# end
