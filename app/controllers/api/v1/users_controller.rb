class Api::V1::UsersController < ApplicationController
  respond_to :json

  def show
    begin
      set_user
      respond_with @user
    rescue => exception
      head 404
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
