class Prjct < ApplicationRecord
	has_many :pictures, dependent: :destroy
end
