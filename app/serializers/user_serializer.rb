class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password_digest
  has_many :scores, include_nested_associations: true
  has_many :events
end
