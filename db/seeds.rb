Experiment.delete_all
IndependentVar.delete_all
DependentVar.delete_all
Measurement.delete_all

sleep = Experiment.create(name: "Curva de Balmer")
running = Experiment.create(name: "Comer antes de correr")

# Ind vars
time =  sleep.independent_vars.create(name: "Cervezas", mtype: "number")
#sleep.independent_vars << IndependentVar.create(name: "Wake up timee")
tired = sleep.dependent_vars.create(name: "Eficiencia al programar", mtype: "number")

# Dep vars
#dinner =  sleep.dependent_vars.create(name: "Cuanto he comido", mtype: "number")


# Ind vars
itime =  running.independent_vars.create(name: "Cuanto he comido?", mtype: "number")
#sleep.independent_vars << IndependentVar.create(name: "Wake up timee")
itired = running.independent_vars.create(name: "Como de bien he corrido?	", mtype: "number")

# Dep vars
idinner =  running.dependent_vars.create(name: "Dinner time", mtype: "number")

arr = [4, 8, 2, 4, 0, 8, 6, 8, 5]

arr.each do |i|
  #time.measurements.create(value: i)
  time.measurements << Measurement.create(value: i)
  time.save
end

[5,3,8,9,4,3,5,7,3].each do |i|
  dinner.measurements.create(value: i)
end

[4,3,2,9,9,3,2,1,3].each do |i|
  tired.measurements.create(value: i)
end
