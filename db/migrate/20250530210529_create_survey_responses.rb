class CreateSurveyResponses < ActiveRecord::Migration[8.0]
  def change
    create_table :survey_responses do |t|
      t.references :user, null: false, foreign_key: true
      t.string :q1
      t.string :q2
      t.string :q3
      t.integer :q4
      t.string :q5
      t.integer :q6
      t.string :q7
      t.string :q8
      t.string :q9
      t.integer :q10
      t.integer :q11
      t.string :q12
      t.integer :q13
      t.string :q14
      t.integer :q15
      t.integer :q16
      t.boolean :q17a
      t.boolean :q17b
      t.boolean :q17c
      t.boolean :q17d
      t.boolean :q17e
      t.boolean :q18f
      t.boolean :q18g
      t.boolean :q18h
      t.boolean :q18i
      t.text :qoa1
      t.text :qoa2
      t.integer :q19
      t.string :q20
      t.text :qoa3

      t.timestamps
    end
  end
end
