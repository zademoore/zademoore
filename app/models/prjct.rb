class Prjct < ApplicationRecord
	acts_as_votable

	has_many :pictures, dependent: :destroy
	has_many :comments, dependent: :destroy
end