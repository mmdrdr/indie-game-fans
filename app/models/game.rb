class Game < ApplicationRecord
  has_many :game_genres, dependent: :destroy
  has_many :genres, through: :game_genres
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  belongs_to :user, optional: true

  attachment :image
  
  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

  validates :title, presence: true
  validates :introduction, presence: true
  validates :image, presence: true

end
