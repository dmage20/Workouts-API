# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'date'

filepath = "/Users/danielmage/code/dmage20/Workout-CrossFit/db/workouts_seed.json"

serialized = File.read(filepath)
workouts = JSON.parse(serialized)
workouts.each do |workout|
    date = Date.parse(workout["date"])
    instructions = workout["text"]

    fresh_workout = Workout.new(date: date, description: instructions)
    fresh_workout.save!
end
