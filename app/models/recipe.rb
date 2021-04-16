class Recipe < ApplicationRecord
  belongs_to :user, optional: true

  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy

  mount_uploader :image, ImageUploader

  with_options presence: true do
    validates :title
    validates :content
    validates :image
  end
end
