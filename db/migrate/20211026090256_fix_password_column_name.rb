class FixPasswordColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :password, :password_digest
    change_column :users, :password_digest, :string
  end
end
