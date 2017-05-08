class Picture < ApplicationRecord
  belongs_to :prjct
  validates :prjct, :presence => true
  mount_uploader :image, ImageUploader
end
