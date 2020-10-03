class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :email
      t.string :title, :null => true
      t.string :phone, :null => true
      t.text :address, :null => true
      t.string :gender, :null => true
      t.text :about, :null => true
      t.timestamps
    end
  end
end
