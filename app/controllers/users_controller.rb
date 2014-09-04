class UsersController < ApplicationController

  #def show
  #  @user = User.find(params[:id])
  #end

   def destroy
    @user = User.find(params[:id])
    if @user.destroy
      redirect_to login_index_path, notice: "User deleted."
    end

   end


end
