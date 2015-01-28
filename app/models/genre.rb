class Genre < ActiveRecord::Base
  # Remember to create a migration!
  has_many :categories
  has_many :movies, through: :categories
end
