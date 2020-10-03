class CreateHospitals < ActiveRecord::Migration[5.2]
  def change
    create_table :hospitals do |t|
      t.string :name
      t.text :address, :null => true
      t.timestamps
    end
  end
end
