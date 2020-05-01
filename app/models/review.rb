class Review < ApplicationRecord
  belongs_to :reviewer
  belongs_to :style
  belongs_to :brewery

end
