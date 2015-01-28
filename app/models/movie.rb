class Movie < ActiveRecord::Base
  # Remember to create a migration!
  validates :name, :presence => true


  belongs_to :user
  has_many :categories
  has_many :genres, through: :categories

end
