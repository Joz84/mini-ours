class Inscription < ApplicationRecord
  has_many :daily_times, dependent: :destroy
  has_many :course_consultations, dependent: :destroy
  has_many :quiz_attempt_results, dependent: :destroy
  has_many :quiz_attempt_slices, through: :quiz_attempt_results
  validates :moodle_id, presence: true
  validates :ours_id, presence: true
end
