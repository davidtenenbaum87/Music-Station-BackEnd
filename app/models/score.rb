class Score < ApplicationRecord
  belongs_to :user
  has_one_attached :music_score
end
