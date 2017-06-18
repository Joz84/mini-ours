User.destroy_all
Inscription.destroy_all

User.create(email: "admin@barchen.com", password: "azerty")

validations = ["validation interne", "validation externe", "double echelle"]
quiz_types = ["QCM", "Questions ouvertes", "Questions fermées", "Questions refractaires"]
subcategories = ["maths", "phylo", "anglais", "sexologie"]
levels = ["bon", "moyen", "mauvais"]
10.times do |t|
  i = Inscription.create( moodle_id: t,
                          ours_id: t+1,
                          grouping_validation: validations[rand(3)]
                        )
  10.times do
    DailyTime.create( inscription: i,
                      duration: rand(10000)
                    )
  end
  10.times do
    CourseConsultation.create(  inscription: i,
                                moodle_scorm_id: t*2,
                                state: "Cool"
                              )
  end
  3.times do
    qar = QuizAttemptResult.create( quiz_attempt_moodle_id: nil,
                              inscription: i,
                              quiz_type: quiz_types.sample,
                              quiz_date: DateTime.now,
                              quiz_result: [true, false].sample
                            )
    2.times do
      count = rand(100)
      QuizAttemptSlice.create( questions_count: count,
                               correct_answers_count: rand(count),
                               question_subcategory: subcategories.sample,
                               quiz_attempt_result: qar,
                               level: levels.sample
                             )
    end
  end
end
