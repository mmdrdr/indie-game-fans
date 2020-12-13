class GameImage < ApplicationRecord
  belongs_to :game
  attachment :image

  validates :image, presence: true
end
