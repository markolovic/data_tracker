class ChangeTypeColumnNames < ActiveRecord::Migration
  def change
    rename_column :independent_vars, :type, :mtype
    rename_column :dependent_vars, :type, :mtype
    rename_column :measurements, :type, :mtype
  end
end
