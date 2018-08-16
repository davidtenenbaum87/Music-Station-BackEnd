class ScoreSerializer < ActiveModel::Serializer
  attributes :id, :title, :composer, :instrumentation
  belongs_to :user
  has_many :comments
end
