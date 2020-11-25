class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  FOOD_TYPE = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: FOOD_TYPE }
end
