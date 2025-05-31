class UsersController < ApplicationController
  def index
    @users = User.order(:full_name)
  end
end
