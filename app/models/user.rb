class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable
  has_many :comments, dependent: :destroy
  has_many :rates, dependent: :destroy

  has_attached_file :avatar, :styles => {:medium => Settings.user_avatar.medium, :thumb => Settings.user_avatar.thumb},
    :default_url => Settings.user_avatar.missing_url
  validates_attachment_content_type :avatar,
    :content_type => /\Aimage\/.*\Z/

  enum role: [:guest, :admin]
  enum sex: [:male, :female]
end
