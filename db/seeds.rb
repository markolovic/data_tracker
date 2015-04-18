# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
Experiment.delete_all
IndependentVar.delete_all
Measurement.delete_all

sleep = Experiment.create(name: "Sleep quality")
running = Experiment.create(name: "Diet and Running")

time =  sleep.independent_vars.create(name: "Wake up time")
tired = sleep.independent_vars.create(name: "Tired upong waking")

(1..5).each do |i|
  time.measurements.create(value: i)
end
