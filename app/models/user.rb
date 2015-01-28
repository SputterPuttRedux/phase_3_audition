class User < ActiveRecord::Base


  validates :name, {
    :presence => true,
    uniqueness: true
  }

  has_secure_password
  validates_presence_of :password, :on => :create

  has_many :movies
end
