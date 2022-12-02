class RemoveColumnFromProfil < ActiveRecord::Migration[7.0]
  def change
    remove_column :profils, :email
    remove_column :profils, :password
  end
end
