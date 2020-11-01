class GameGenre < ApplicationRecord
  belongs_to :game
  belongs_to :genre

  validates :name, presence: true

end
