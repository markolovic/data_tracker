class AddIndependentVarToMeasurement < ActiveRecord::Migration
  def change
    add_reference :measurements, :independent_var, index: true
  end
end
