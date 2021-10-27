class Post < ApplicationRecord
  belongs_to :user
  has_many_attached :images
  has_rich_text :rich_content

  validates :title, presence: true, length: { minimum: 2 }
  validates :rich_content, presence: true, length: { minimum: 50 }
  validates :date, presence: true
  # validates :views, numericality: { only_integer: true }, presence: true
  # validate :acceptable_image
  # attr_accessor :remove_attached_image
  # after_save :purge_attached_image, if: :remove_attached_image?

  # # def acceptable image size and format
  # def acceptable_image
  #   return unless image.attached?

  #   if image.byte_size > 1.megabyte
  #     image_size = (image.byte_size / 1_000_000.0).round(2)
  #     errors.add(:image, "size #{image_size} MB exceeds 1 MB limit")
  #   end

  #   acceptable_types = ['image/jpeg', 'image/jpg', 'image/png', 'image/svg']
  #   errors.add(:image, 'must be a JPEG, SVG or PNG') unless acceptable_types.include?(image.content_type)
  # end

  # define the after_save action to remove an image
#   def remove_attached_image?
#     remove_attached_image == '1'
#   end

#   def purge_attached_image
#     image.purge_later
#   end
end
