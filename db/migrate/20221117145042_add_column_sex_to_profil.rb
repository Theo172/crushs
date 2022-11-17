class AddColumnSexToProfil < ActiveRecord::Migration[7.0]
  def change
    add_column :profils, :gender, :text
  end
end
