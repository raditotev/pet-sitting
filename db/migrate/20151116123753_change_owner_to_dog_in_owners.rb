class ChangeOwnerToDogInOwners < ActiveRecord::Migration
  def change
    rename_column :owners, :owner, :dog
  end
end
