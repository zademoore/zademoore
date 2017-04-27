class Picture < ApplicationRecord
  belongs_to :prjct
  validates :prjct, :presence => true
end
