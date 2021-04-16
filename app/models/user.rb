class User < ApplicationRecord
  has_many :recipes
  has_many :likes
  has_many :comments

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  mount_uploader :profile_image, ProfileImageUploader

  with_options presence: true do
    validates :username
    validates :email
  end

  def already_liked?(recipe)
    self.likes.exists?(recipe_id: recipe.id)
  end
end
