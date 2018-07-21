OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '464313380676434', '930deb51cf7ed3046bfff41685ccc2cc'
end