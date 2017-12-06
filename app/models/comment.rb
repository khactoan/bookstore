class Comment < ApplicationRecord
  belong_to :user
  belong_to :book

  validates :content, presence: true
  validates :book, presence: true
  validates :user, presence: true
end
