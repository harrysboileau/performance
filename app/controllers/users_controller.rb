class UsersController < ApplicationController
  def index
    puts params
    @counter = params[:page].to_i
    if params[:page] == 0 || params[:page] ==nil
      @users = User.page(1)
    else
      @users = User.page(params[:page].to_i)
   end
  end
end







