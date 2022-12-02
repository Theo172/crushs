class AddUserProfilLink < ActiveRecord::Migration[7.0]
  def change
    add_column :profils, :user_id, :string
  end
end
