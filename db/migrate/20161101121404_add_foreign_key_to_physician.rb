class AddForeignKeyToPhysician < ActiveRecord::Migration
  def change
  	add_column :physicians, :hospital_id, :integer
  end
end
