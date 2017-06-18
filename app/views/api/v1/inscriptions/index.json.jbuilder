json.inscriptions do
  json.array! @inscriptions do |inscription|
    json.id inscription.id
    json.moodle_id inscription.moodle_id
    json.ours_id inscription.ours_id
    json.course_consultations inscription.course_consultations do |course_consultation|
      json.id course_consultation.id
      json.moodle_scorm_id course_consultation.moodle_scorm_id
      json.state course_consultation.state
    end
    json.quiz_attempt_results inscription.quiz_attempt_results do |quiz_attempt_result|
      json.quiz_attempt_moodle_id quiz_attempt_result.quiz_attempt_moodle_id
      json.quiz_type quiz_attempt_result.quiz_type
      json.quiz_date quiz_attempt_result.quiz_date
      json.quiz_result quiz_attempt_result.quiz_result
      json.quiz_attempt_slices quiz_attempt_result.quiz_attempt_slices do |quiz_attempt_slice|
          json.questions_count quiz_attempt_slice.questions_count
          json.correct_answers_count quiz_attempt_slice.correct_answers_count
          json.question_subcategory quiz_attempt_slice.question_subcategory
          json.level quiz_attempt_slice.level
      end
    end
  end
end
