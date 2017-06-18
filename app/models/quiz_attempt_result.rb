class QuizAttemptResult < ApplicationRecord
  belongs_to :inscription
  has_many :quiz_attempt_slices, dependent: :destroy
end
