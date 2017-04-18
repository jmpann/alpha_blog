class Category < ApplicationRecord

  has_many :post_categories
  has_many :posts, through: :post_categories
  validates :name, presence: true, uniqueness: true, length: {minimum: 2, maximum: 25}


end
