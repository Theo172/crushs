class CreateCrushIcebreakerQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :crush_icebreaker_questions do |t|
      t.string :crush_id
      t.string :icebreaker_question_id

      t.timestamps
    end
  end
end
