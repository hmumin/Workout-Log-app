class Workout < ActiveRecord::Base
	validates :workout_name, presence: true
	validates :date, presence: true
	validates :whats_done, presence: true

	belongs_to :user
end
