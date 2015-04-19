class AddExperimentToIndependentVar < ActiveRecord::Migration
  def change
    add_reference :independent_vars, :experiment, index: true
  end
end
