class Review < ApplicationRecord
  belongs_to :reviewer
  belongs_to :style
  belongs_to :brewery
  has_many :comments
  is_impressionable counter_cache: true

  mount_uploader :image, ImageUploader
end
