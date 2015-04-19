class IndependentVariablesController < ApplicationController

  def edit
    @ind_var = IndependentVar.id(params[:id])
  end
end
