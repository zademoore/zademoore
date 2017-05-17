Rails.application.config.middleware.use OmniAuth::Builder do

	provider :facebook, Rails.application.secrets.facebook_id, Rails.application.secrets.facebook_secret
  # OmniAuth.config.on_failure = Proc.new do |env|
  # 	SessionsController.action(:auth_failure).call(env)
  # end
end