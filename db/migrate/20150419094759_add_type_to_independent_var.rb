class AddTypeToIndependentVar < ActiveRecord::Migration
  def change
    add_column :independent_vars, :type, :string
  end
end
