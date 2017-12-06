class Book < ApplicationRecord
  belongs_to :category
  has_many :comments, dependent: :destroy
  belongs_to :author
  has_many :line_items, dependent: :destroy
  has_many :votes, dependent: :destroy
  validates :category, presence: true
  validates :title, presence: true,
    length: {maximum: Settings.max_length_title_book}
  validates :description, presence: true
  validates :price, presence: true
end
