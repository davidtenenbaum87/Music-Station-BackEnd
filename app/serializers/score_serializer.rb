class ScoreSerializer < ActiveModel::Serializer
  attributes :id, :title, :composer
  belongs_to :user
end
