class RenameWalkerIdToSitterIdInAppointments < ActiveRecord::Migration
  def change
    rename_column :appointments, :walker_id, :sitter_id
  end
end
