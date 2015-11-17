class AddRememberDigestToSitters < ActiveRecord::Migration
  def change
    add_column :sitters, :remember_digest, :string
  end
end
