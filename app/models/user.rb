class User < ApplicationRecord
	has_many :authorizations, :dependent => :destroy
	validates :name, :email, presence: true

	def add_provider(auth_hash)
		unless authorizations.find_by_provider_and_uid(auth_hash['provider'], auth_hash['uid'])
			Authorization.create :user => self, :provider => auth_hash['provider'], :uid => auth_hash['uid']
		end
	end
end

