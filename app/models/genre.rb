class Genre < ActiveRecord::Base
  # Remember to create a migration!
  validates :name, :presence => true

  has_many :categories
  has_many :movies, through: :categories
end
