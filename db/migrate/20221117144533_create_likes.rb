class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|
      t.string :created_by
      t.string :trageted_by

      t.timestamps
    end
  end
end
