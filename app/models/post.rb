class Post < ApplicationRecord
  belongs_to :user
  # has_one_attached :photo
  has_many_attached :photos
  # has_rich_text :rich_content

  validates :title, presence: true, length: { minimum: 2 }
  # validates :rich_content, presence: true, length: { minimum: 50 }
  validates :date, presence: true
end
