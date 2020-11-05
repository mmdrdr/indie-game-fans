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
  
  validates :image_ids, presence: true
  validates :title, presence: true
  validates :introduction, presence: true, length: { maximum: 200 }
  validates :genre_ids, presence: true
end
