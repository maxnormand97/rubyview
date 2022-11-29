class CreateAssessmentQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :assessment_questions do |t|
       t.references :question, foreign_key: true, index: true, type: :integer
       t.references :assessment, foreign_key: true, index: true, type: :integer

      t.timestamps
    end
  end
end
