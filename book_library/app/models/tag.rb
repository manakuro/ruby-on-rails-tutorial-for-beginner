class Tag < ApplicationRecord
  has_many :books, through: :taggings
end
