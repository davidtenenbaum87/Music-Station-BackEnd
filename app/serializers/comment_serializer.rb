class CommentSerializer < ActiveModel::Serializer
  attributes :id, :measure, :description, :score_id
  belongs_to :score, include_nested_associations: true
end
