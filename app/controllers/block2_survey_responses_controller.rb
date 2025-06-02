class Block2SurveyResponsesController < ApplicationController
  before_action :require_admin, only: [ :index ]
  def new
    if Current.user.block2_survey_response.present?
      redirect_to block2_survey_response_path(Current.user.block2_survey_response), notice: "Ya has respondido esta encuesta."
    else
      @block2_survey_response = Block2SurveyResponse.new
    end
  end

  def create
    @block2_survey_response = Current.user.build_block2_survey_response(block2_survey_response_params)
    if @block2_survey_response.save
      redirect_to @block2_survey_response, notice: "Gracias por completar la encuesta."
    else
      render :new, alert: "Hubo un error al guardar sus respuestas."
    end
  end

  def show
    @block2_survey_response = Block2SurveyResponse.find(params[:id])
  end

  def index
    @block2_survey_responses = Block2SurveyResponse.includes(:user).order(created_at: :desc)
  end

  def edit
    @block2_survey_response = Block2SurveyResponse.find(params[:id])
  end

  def update
    @block2_survey_response = Block2SurveyResponse.find(params[:id])
    if @block2_survey_response.update(block2_survey_response_params)
      redirect_to @block2_survey_response, notice: "Encuesta actualizada correctamente."
    else
      render :edit, status: :unprocessable_entity
    end
  end


  private


  def require_admin
    unless Current.user&.admin?
      redirect_to root_path, alert: "Acceso restringido solo para administradores."
    end
  end

  def block2_survey_response_params
    params.require(:block2_survey_response).permit(:q1, :q2, :q3, :q4, :q5, :q6, :qoa1, :qoa2, :qoa3, :qoa4)
  end
end
