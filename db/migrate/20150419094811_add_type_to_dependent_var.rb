class AddTypeToDependentVar < ActiveRecord::Migration
  def change
    add_column :dependent_vars, :type, :string
  end
end
