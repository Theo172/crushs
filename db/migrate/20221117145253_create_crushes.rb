class CreateCrushes < ActiveRecord::Migration[7.0]
  def change
    create_table :crushes do |t|
      t.integer :status

      t.timestamps
    end
  end
end
