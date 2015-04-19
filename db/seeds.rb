Experiment.delete_all
IndependentVar.delete_all
Measurement.delete_all

sleep = Experiment.create(name: "Curva de balmer")
running = Experiment.create(name: "Diet and Running")

# Ind vars
time =  sleep.independent_vars.create(name: "Cervezas", mtype: "number")
#sleep.independent_vars << IndependentVar.create(name: "Wake up timee")
tired = sleep.independent_vars.create(name: "Eficiencia al programar", mtype: "number")

# Dep vars
dinner =  sleep.dependent_vars.create(name: "Dinner time", mtype: "number")

(1..5).each do |i|
  time.measurements.create(value: i)
end

(1..5).each do |i|
  dinner.measurements.create(value: i)
end
