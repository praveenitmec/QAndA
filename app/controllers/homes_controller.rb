class HomesController < ApplicationController

  def index
    if current_user
      redirect_to questions_path
    else
      render 'index'
    end
  end

  def login
    @user = User.find_by(name: params[:name])
    if @user
      flash[:success] = "welcome"
      session[:id] = @user.id
      redirect_to questions_path
    else
      flash[:danger] = "Please enter valid name"
      redirect_to root_path
    end
  end

  def logout
    session[:id] = nil
    redirect_to root_path
  end
end
