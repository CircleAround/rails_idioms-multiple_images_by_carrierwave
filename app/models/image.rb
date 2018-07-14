class Image < ApplicationRecord
  belongs_to :book
  mount_uploader :path, ImageUploader
end
