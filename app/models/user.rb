class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable

  has_many :games, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy

  has_many :follower, class_name: "Relationship", foreign_key: "follower_id", dependent: :destroy
  has_many :followed, class_name: "Relationship", foreign_key: "followed_id", dependent: :destroy
  has_many :following_user, through: :follower, source: :followed
  has_many :follower_user, through: :followed, source: :follower

  has_many :active_notifications, class_name: "Notification", foreign_key: "visitor_id", dependent: :destroy
  has_many :passive_notifications, class_name: "Notification", foreign_key: "visited_id", dependent: :destroy

  attachment :image

  validates :name, presence: true, length: { maximum: 10 }
  validates :introduction, length: { maximum: 200 }

  def follow(user_id)
    follower.create(followed_id: user_id)
  end

  def unfollow(user_id)
    follower.find_by(followed_id: user_id).destroy
  end

  def following?(user)
    following_user.include?(user)
  end

  def create_notification_follow!(current_user)
    # すでにフォロワーか確認
    temp = Notification.where(["visitor_id = ? and visited_id = ? ", current_user.id, id])
    if temp.blank?
      notification = current_user.active_notifications.new(visited_id: id)
      notification.save if notification.valid?
    end
  end

  def self.find_for_oauth(auth)
    user = User.where(uid: auth.uid, provider: auth.provider).first

    user ||= User.create!(
      uid: auth.uid,
      provider: auth.provider,
      email: auth.info.email,
      password: Devise.friendly_token[0, 20]
    )
    user
  end

  def self.guest
    find_or_create_by!(email: 'guest@guest.com') do |user|
      user.password = SecureRandom.urlsafe_base64
    end
  end
end
