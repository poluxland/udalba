class AddQ21AndQ22ToSurveyResponses < ActiveRecord::Migration[8.0]
  def change
    add_column :survey_responses, :q21, :integer
    add_column :survey_responses, :q22, :string
  end
end
