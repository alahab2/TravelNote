class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @notes = Note.all
  end
end
