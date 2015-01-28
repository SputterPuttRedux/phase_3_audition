class User < ActiveRecord::Base
  validates :name, {
    :presence => true,
    uniqueness: true
  }

  validates :password, :presence => true

  has_many :movies
end
