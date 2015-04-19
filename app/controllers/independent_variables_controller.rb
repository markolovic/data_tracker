class IndependentVariablesController < ApplicationController

  def edit
    #@ind_var = IndependentVar.id(params[:id])
  end

  def update
    @var = IndependentVar.find(params[:id])
    @var.measurements << Measurement.create(value: params[:value])
    @var.save
    redirect_to @var.experiment
  end
  private
    #def var_params
      #params.require(:independent_var).permit(:name, :credits)
    #end
end

