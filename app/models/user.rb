class User < ApplicationRecord
  has_secure_password
validates :name, :password, :presence => true
validates :password, :length => { :minimum => 10 }
validates :name, :length => { :minimum => 2, :maximum => 15}
validates :name, :uniqueness => true

    has_many :post
    has_many :comments
end