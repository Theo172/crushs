class CreateIcebreakerQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :icebreaker_questions do |t|
      t.string :answer1
      t.string :answer2

      t.timestamps
    end
  end
end
