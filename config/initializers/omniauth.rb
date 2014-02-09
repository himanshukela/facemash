OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '465792850185180', 'fc76b64c3e41868d23c76f2dd8a6a35b'
      end


