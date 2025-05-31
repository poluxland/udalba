class CreateBlock2SurveyResponses < ActiveRecord::Migration[8.0]
  def change
    create_table :block2_survey_responses do |t|
      t.references :user, null: false, foreign_key: true
      t.string :q1
      t.string :q2
      t.string :q3
      t.string :q4
      t.string :q5
      t.string :q6
      t.text :qoa1
      t.text :qoa2
      t.text :qoa3
      t.text :qoa4

      t.timestamps
    end
  end
end
