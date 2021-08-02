class UsersController < ApplicationController
    before_action :set_user, only: [:show, :destroy, :edit, :update]
    def index
        @user = User.all
    end
    def destroy
        @user.destroy
        redirect_to @user
    end

    def show 

    end

    def edit

    end
    
    private

    def set_user
        @user = User.find(params[:id])
    end
end