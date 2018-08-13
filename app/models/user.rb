class User < ApplicationRecord
  has_many :scores
  has_many :events
  has_secure_password

  validates :username, presence: true, uniqueness: true
  validates :password, presence: true
end
