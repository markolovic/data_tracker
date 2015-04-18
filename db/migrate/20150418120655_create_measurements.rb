class CreateMeasurements < ActiveRecord::Migration
  def change
    create_table :measurements do |t|
      t.float :value
      t.string :notes

      t.timestamps
    end
  end
end
