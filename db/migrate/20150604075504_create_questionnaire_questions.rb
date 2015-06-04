class CreateQuestionnaireQuestion < ActiveRecord::Migration
  def change
    create_table "questionnairequestion", id: true, force: :cascade do |t|
      t.integer :QuestionID 
      t.integer :QuestionnaireID
    end
  end
end
