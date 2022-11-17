class CreateCrushMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :crush_messages do |t|
      t.text :content
      t.string :profil_crush_id

      t.timestamps
    end
  end
end
