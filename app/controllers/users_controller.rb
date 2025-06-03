class UsersController < ApplicationController
  before_action :require_admin, only: [ :index ]
  def index
    @users = User.order(:campus)
  end


  def require_admin
    unless Current.user&.admin?
      redirect_to root_path, alert: "Acceso restringido solo para administradores."
    end
  end
end
