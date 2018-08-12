class ScoreSerializer < ActiveModel::Serializer
  attributes :id, :title, :composer, :instrumentation
  belongs_to :user
end
