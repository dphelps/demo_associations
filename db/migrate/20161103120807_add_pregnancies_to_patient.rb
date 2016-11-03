class AddPregnanciesToPatient < ActiveRecord::Migration
  def change
    add_column :patients, :pregnancies, :integer
  end
end
