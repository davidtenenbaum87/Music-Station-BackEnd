class CommentSerializer < ActiveModel::Serializer
  attributes :id, :measure, :description
  belongs_to :score
end
