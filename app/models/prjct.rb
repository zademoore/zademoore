class Prjct < ApplicationRecord
	has_many :pictures, dependent: :destroy
	has_many :comments, dependent: :destroy
end