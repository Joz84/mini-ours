class CreateQuizAttemptSlices < ActiveRecord::Migration[5.0]
  def change
    create_table :quiz_attempt_slices do |t|
      t.integer :questions_count
      t.integer :correct_answers_count
      t.string :question_subcategory
      t.references :quiz_attempt_result, foreign_key: true
      t.string :level

      t.timestamps
    end
  end
end
