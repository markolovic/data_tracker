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
    gon.experiment = Experiment.find(params[:id])
    gon.ind_vars = @experiment.independent_vars
    gon.dep_vars = @experiment.dependent_vars
    @experiment.independent_vars.all.each_with_index do |var, counter|
      gon.ind_vars[counter].measurements = var.measurements.all
    end
    @experiment.dependent_vars.all.each_with_index do |var, counter|
      gon.dep_vars[counter].measurements = var.measurements.all
    end

    #gon.experiments.each_with_index do |e, counter|
      #gon.experiments[counter].independent_vars = e.independent_vars
    #end
  end

  def new
    @experiments = Experiment.all
    @experiment = Experiment.new
  end

end
