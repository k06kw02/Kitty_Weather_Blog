class Post < ApplicationRecord
  belongs_to :user
  # has_one_attached :photo
  # has_many_attached :images
  # has_rich_text :rich_content

  validates :title, presence: true, length: { minimum: 2 }
  # validates :rich_content, presence: true, length: { minimum: 50 }
  validates :date, presence: true
  # validates :views, numericality: { only_integer: true }, presence: true
  # validate :acceptable_photo
  # attr_accessor :remove_attached_photo
  # after_save :purge_attached_photo, if: :remove_attached_photo?

  # def acceptable photo size and format
#   def acceptable_photo
#     return unless photo.attached?

#     if photo.byte_size > 1.megabyte
#       photo_size = (photo.byte_size / 1_000_000.0).round(2)
#       errors.add(:photo, "size #{photo_size} MB exceeds 1 MB limit")
#     end

#     acceptable_types = ['photo.jpeg', 'photo.jpg', 'photo/png', 'photo/svg']
#     errors.add(:photo, 'must be a JPEG, SVG or PNG') unless acceptable_types.include?(photo.content_type)
#   end

#   # define the after_save action to remove an photo
#   def remove_attached_photo?
#     remove_attached_photo == '1'
#   end

#   def purge_attached_photo
#     photo.purge_later
#   end
end
