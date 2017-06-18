class CreateInscriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :inscriptions do |t|
      t.integer :moodle_id
      t.integer :ours_id
      t.string :grouping_validation

      t.timestamps
    end
  end
end
