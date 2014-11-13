class ChnageDateInWorkouts < ActiveRecord::Migration
  def up
    change_column :workouts, :date, 'date USING CAST("date" AS date)'
  end

  def down
    change_column :workouts, :date, :string
  end
end
