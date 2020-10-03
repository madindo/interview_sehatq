class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.belongs_to :doctor
      t.belongs_to :user
      t.datetime :start
      t.datetime :end
      t.timestamps
    end
  end
end
