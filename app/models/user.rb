class User < ActiveRecord::Base

  has_secure_password

  validates :first_name, :last_name, :email, length: {minimum: 3}, presence: true
  has_many :member 
  has_many :group, through: :member





end
