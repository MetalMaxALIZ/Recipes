class Hero < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :hero_recipes
  has_many :recipes, through: :hero_recipes
end
