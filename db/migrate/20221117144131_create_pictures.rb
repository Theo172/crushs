class CreatePictures < ActiveRecord::Migration[7.0]
  def change
    create_table :pictures do |t|
      t.string :profil_id
      t.text :image_url
      t.text :comment

      t.timestamps
    end
  end
end
