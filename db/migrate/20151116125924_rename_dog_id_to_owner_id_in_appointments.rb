class RenameDogIdToOwnerIdInAppointments < ActiveRecord::Migration
  def change
    rename_column :appointments, :dog_id, :owner_id
  end
end
