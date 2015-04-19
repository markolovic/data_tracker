class AddVariableToMeasurement < ActiveRecord::Migration
  def change
    add_reference :measurements, :variable, index: true
  end
end
