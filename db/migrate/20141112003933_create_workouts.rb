class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :workout_name
      t.string :date
      t.text :whats_done
      t.text :notes

      t.timestamps
    end
  end
end
