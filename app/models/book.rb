class Book < ApplicationRecord
  has_many :images

  # @see https://github.com/carrierwaveuploader/carrierwave/issues/670#issuecomment-5456573
  accepts_nested_attributes_for :images,
    allow_destroy: true,
    reject_if: proc { |attributes| attributes["path"].blank? && attributes["path_cache"].blank? }

  validates :title, presence: true
end
