class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.integer :physician_id
      t.string :name
      t.string :phone

      t.timestamps null: false
    end
  end
end