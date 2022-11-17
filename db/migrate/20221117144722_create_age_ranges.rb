class CreateAgeRanges < ActiveRecord::Migration[7.0]
  def change
    create_table :age_ranges do |t|
      t.integer :min
      t.integer :max

      t.timestamps
    end
  end
end
