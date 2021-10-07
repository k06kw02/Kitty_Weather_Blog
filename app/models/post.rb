class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, length: { minimum: 2 }
  validates :content, presence: true, length: { minimum: 50 }
  validates :date, presence: true
  validates :views, numericality: { only_integer: true }, presence: true
end
