require 'omniauth'
require 'omniauth-bnet'

OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :bnet, ENV['BNET_ID'], ENV['BNET_SECRET'], scope: 'wow.profile'
end
