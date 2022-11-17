class CreateProfileCrushes < ActiveRecord::Migration[7.0]
  def change
    create_table :profile_crushes do |t|
      t.string :crush_id
      t.string :profil_id

      t.timestamps
    end
  end
end
