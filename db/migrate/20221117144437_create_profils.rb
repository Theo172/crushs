class CreateProfils < ActiveRecord::Migration[7.0]
  def change
    create_table :profils do |t|
      t.text :name
      t.date :birth_date
      t.string :city_id
      t.string :prefered_gender
      t.text :email
      t.text :password
      t.string :gender_id
      t.string :age_range_id

      t.timestamps
    end
  end
end
