class User < ApplicationRecord
  has_many :scores
  has_many :events
  has_secure_password
end
