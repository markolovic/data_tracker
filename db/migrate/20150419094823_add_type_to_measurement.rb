class AddTypeToMeasurement < ActiveRecord::Migration
  def change
    add_column :measurements, :type, :string
  end
end
