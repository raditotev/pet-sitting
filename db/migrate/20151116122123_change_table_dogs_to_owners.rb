class ChangeTableDogsToOwners < ActiveRecord::Migration
  def change
    rename_table :dogs, :owners
  end
end
