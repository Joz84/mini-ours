class CreateDailyTimes < ActiveRecord::Migration[5.0]
  def change
    create_table :daily_times do |t|
      t.references :inscription, foreign_key: true
      t.integer :duration

      t.timestamps
    end
  end
end
