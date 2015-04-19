class CreateDependentVars < ActiveRecord::Migration
  def change
    create_table :dependent_vars do |t|
      t.string :name
      t.references :experiment, index: true

      t.timestamps
    end
  end
end
