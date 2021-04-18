class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :recipes
  has_many :likes
  has_many :like_recipes, through: :likes, source: :recipe
  has_many :comments

  mount_uploader :profile_image, ProfileImageUploader

  with_options presence: true do
    validates :username
    validates :email
  end

  def already_liked?(recipe)
    likes.exists?(recipe_id: recipe.id)
  end
end
