class ExperimentsController < ApplicationController

  def index
    @experiments = Experiment.all
    gon.experiments = Experiment.all
    gon.experiments.each_with_index do |e, counter|
      gon.experiments[counter].independent_vars = e.independent_vars
    end
  end

  def show
    @experiments = Experiment.all
    @experiment = Experiment.find(params[:id])

    #ind_vars = @experiment.independent_vars.
    ind_vars = Array.new
    dep_vars = []
    measurements = []

    @experiment.independent_vars.all.each do |var|
      var.measurements.all.each do |m|
        measurements << m.value
      end
      ind_vars << measurements
      measurements = []
    end
    @experiment.dependent_vars.all.each do |var|
      var.measurements.all.each do |m|
        measurements << m.value
      end
      dep_vars << measurements
      measurements = []
    end

    gon.experiment = Experiment.find(params[:id])
    gon.ind_vars = ind_vars
    gon.dep_vars = dep_vars

    #gon.experiments.each_with_index do |e, counter|
      #gon.experiments[counter].independent_vars = e.independent_vars
    #end
  end

  def new
    @experiments = Experiment.all
    @experiment = Experiment.new
  end

end
