class Recipe < ApplicationRecord
validates :name, presence: true
validates :description, presence: true, length: { minimum: 5, maximum: 500 }
belongs_to :user
has_many :stars, dependent: :destroy
has_many :hero_recipes
has_many :heros, through: :hero_recipes
end
