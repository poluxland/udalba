class Block2SurveyResponsesController < ApplicationController
  before_action :require_admin, only: [ :index ]
  before_action :set_block2_survey_response, only: [ :show, :edit, :update ]
  before_action :prevent_locked_edit, only: [ :edit, :update ]

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

  def show; end

  def edit; end

  def update
    if @block2_survey_response.update(block2_survey_response_params)
      redirect_to @block2_survey_response, notice: "Encuesta actualizada correctamente."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def index
    @block2_survey_responses = Block2SurveyResponse.includes(:user).order(created_at: :desc)
  end

  private

  def set_block2_survey_response
    @block2_survey_response = Block2SurveyResponse.find(params[:id])
  end

  def prevent_locked_edit
    if Current.user.locked?
      redirect_to block2_survey_response_path(@block2_survey_response), alert: "No puedes editar esta encuesta."
    end
  end

  def require_admin
    redirect_to root_path, alert: "Acceso restringido solo para administradores." unless Current.user&.admin?
  end

  def block2_survey_response_params
    params.require(:block2_survey_response).permit(
      :q1, :q2, :q3, :q4, :q5, :q6,
      :qoa1, :qoa2, :qoa3, :qoa4
    )
  end
end
