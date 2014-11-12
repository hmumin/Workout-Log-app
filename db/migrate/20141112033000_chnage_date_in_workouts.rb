class ChnageDateInWorkouts < ActiveRecord::Migration
  def up
    change_column :workouts, :date, :date
  end

  def down
    change_column :workouts, :date, :string
  end
end
