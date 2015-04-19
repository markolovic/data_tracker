class ExperimentsController < ApplicationController

  def index
    @experiments = Experiment.all
  end

  def show
    @experiments = Experiment.all
    @experiment = Experiment.find(params[:id])
  end

  def new
    @experiments = Experiment.all
    @experiment = Experiment.new
  end

end
