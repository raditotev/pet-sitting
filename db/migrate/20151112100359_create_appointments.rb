class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :walker_id
      t.integer :dog_id
      t.date :date

      t.timestamps null: false
    end
    add_index :appointments, :walker_id
    add_index :appointments, :dog_id
    add_index :appointments, [:walker_id, :dog_id]
  end
end
