class AddQ17AndQ18ToSurveyResponses < ActiveRecord::Migration[7.1]
  def change
    add_column :survey_responses, :q17, :text
    add_column :survey_responses, :q18, :text
  end
end
