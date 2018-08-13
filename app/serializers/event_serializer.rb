class EventSerializer < ActiveModel::Serializer
  attributes :id, :event_title, :description, :event_date, :start_time, :end_time
  belongs_to :user
end
