class Author < ApplicationRecord
  has_many :books
  validates :name, presence: true,
    length: {maximum: Settings.max_length_name_author}
end
