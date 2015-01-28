class Movie < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user
  has_many :categories
  has_many :genres, through: :categories

end
