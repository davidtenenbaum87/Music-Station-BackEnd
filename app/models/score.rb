class Score < ApplicationRecord
  belongs_to :user
  has_one_attached :music_score

  # validates :title, presence: true, uniqueness: true
  # validates :composer, presence: true, uniqueness: true
  # validates :instrumentation, presence: true, uniqueness: true
  # validates :music_score, presence: true, uniqueness: true

end
