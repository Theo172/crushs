class CreateIcebreakerQuestionAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :icebreaker_question_answers do |t|
      t.text :content
      t.string :profil_crush_id
      t.string :crush_icebreaker_question_id

      t.timestamps
    end
  end
end
