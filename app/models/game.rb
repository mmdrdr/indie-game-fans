class Game < ApplicationRecord
  has_many :game_images, dependent: :destroy
  accepts_attachments_for :game_images, attachment: :image
  has_many :game_genres, dependent: :destroy
  has_many :genres, through: :game_genres
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  belongs_to :user
  
  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

  validates_associated :game_images
  validates_associated :game_genres
  validates :game_images, presence: true
  validates :title, presence: true
  validates :introduction, presence: true
  validates :game_genres, presence: true

end
