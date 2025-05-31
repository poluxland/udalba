class AddQ23ToSurveyResponses < ActiveRecord::Migration[8.0]
  def change
    add_column :survey_responses, :q23, :text
  end
end
