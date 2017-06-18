class QuizAttemptSlice < ApplicationRecord
  belongs_to :quiz_attempt_result
  belongs_to :inscription
  delegate :inscription, to: :quiz_attempt_result, allow_nil: true
end
