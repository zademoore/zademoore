Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'heBxFq3kzcOXcwuMWRWkOA5re', 'gqKe6HGKUGLI1seJ95Ik4ahsNqHequeCaBNDw4DNN07PrrndVP'
  provider :facebook, '1065128226954807', 'a6c12a31ff65c3fb840ec9dfc0b67782',
  	scope: 'public_profile', info_fields: 'id,name,link'
  # provider :instagram, '886ed3d1b4cf44d09b07fd6b2cf9f90a', '4c82f985c47543a89ce58ff6a42a6db6'

  # OmniAuth.config.on_failure = Proc.new do |env|
  # 	SessionsController.action(:auth_failure).call(env)
  # end
end