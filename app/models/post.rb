class Post < ApplicationRecord
  belongs_to :user
  has_rich_text :content
  has_one_attached :photo
  # has_many_attached :uploads


  validates :title, presence: true, length: { minimum: 2 }
  validates :content, presence: true, length: { minimum: 50 }
  validates :blurb, presence: true,  :length => { :maximum => 1000,
    :too_long => "%{count} characters is the maximum allowed" }
  validates :date, presence: true
end
