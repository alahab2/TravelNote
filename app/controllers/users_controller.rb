class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user_notes = @user.notes.order('updated_at DESC')
  end
end
