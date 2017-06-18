class CreateQuizAttemptResults < ActiveRecord::Migration[5.0]
  def change
    create_table :quiz_attempt_results do |t|
      t.integer :quiz_attempt_moodle_id
      t.references :inscription, foreign_key: true
      t.string :quiz_type
      t.datetime :quiz_date
      t.boolean :quiz_result

      t.timestamps
    end
  end
end
