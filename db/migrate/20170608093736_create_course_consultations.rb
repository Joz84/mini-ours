class CreateCourseConsultations < ActiveRecord::Migration[5.0]
  def change
    create_table :course_consultations do |t|
      t.references :inscription, foreign_key: true
      t.integer :moodle_scorm_id
      t.string :state

      t.timestamps
    end
  end
end
