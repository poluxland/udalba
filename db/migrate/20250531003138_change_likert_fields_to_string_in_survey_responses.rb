class ChangeLikertFieldsToStringInSurveyResponses < ActiveRecord::Migration[6.1]
  def change
    change_column :survey_responses, :q4, :string
    change_column :survey_responses, :q6, :string
    change_column :survey_responses, :q10, :string
    change_column :survey_responses, :q11, :string
    change_column :survey_responses, :q13, :string
    change_column :survey_responses, :q15, :string
    change_column :survey_responses, :q16, :string
    change_column :survey_responses, :q21, :string
    change_column :survey_responses, :q19, :string
  end
end
