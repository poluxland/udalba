class SurveyResponsesController < ApplicationController
  def new
    if Current.user.survey_response.present?
      redirect_to survey_response_path(Current.user.survey_response), notice: "Ya has respondido la encuesta."
    else
      @survey_response = SurveyResponse.new
    end
  end

  def index
    @survey_responses = SurveyResponse.includes(:user).order(created_at: :desc)
  end

  def show
    @survey_response = SurveyResponse.find(params[:id])
  end

  def edit
    @survey_response = SurveyResponse.find(params[:id])
  end

  def update
    @survey_response = SurveyResponse.find(params[:id])
    if @survey_response.update(survey_response_params)
      redirect_to @survey_response, notice: "Encuesta actualizada correctamente."
    else
      render :edit, status: :unprocessable_entity
    end
  end


  def create
    @survey_response = Current.user.build_survey_response(survey_response_params)
    if @survey_response.save
      redirect_to survey_response_path(@survey_response), notice: "Gracias por completar la encuesta."
    else
      render :new, alert: "Hubo un problema al guardar sus respuestas."
    end
  end

  private

  def survey_response_params
    params.require(:survey_response).permit(
      :q1, :q2, :q3, :q4, :q5, :q6, :q7, :q8, :q9, :q10,
      :q11, :q12, :q13, :q14, :q15, :q16,
      :q17a, :q17b, :q17c, :q17d, :q17e,
      :q17, # ← agregado
      :q18f, :q18g, :q18h, :q18i,
      :q18, # ← agregado
      :qoa1, :qoa2,
      :q19, :q20, :qoa3,
      :q21, :q22, :q23 # ← agregados
    )
  end
end
