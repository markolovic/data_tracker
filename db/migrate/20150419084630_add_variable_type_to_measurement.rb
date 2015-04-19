class AddVariableTypeToMeasurement < ActiveRecord::Migration
  def change
    add_column :measurements, :variable_type, :string
  end
end
