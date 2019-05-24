class HeroRecipe < ApplicationRecord
  belongs_to :recipe
  belongs_to :hero
end
