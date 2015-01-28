class Category < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :movie
  belongs_to :genre
end
