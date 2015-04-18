class CreateIndependentVars < ActiveRecord::Migration
  def change
    create_table :independent_vars do |t|
      t.string :name

      t.timestamps
    end
  end
end
