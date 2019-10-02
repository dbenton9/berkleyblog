class UsersController < ApplicationController

    # before_action :require_admin, only: [:admin]
    before_action :set_user, only: [:show, :edit, :update, :destroy]

    def admin
        @users = User.all 
    end
    
    # set_user identifies
    def show
    end

    def new
        @user = User.new
    end

    # set_user identifies
    def edit
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to '/'
        else
            redirect_to '/signup'
        end
    end

    def update
        respond_to do |format|
            if @user.update(user_params)
              format.html { redirect_to admin_path, notice: 'Post was successfully updated.' }
            else
              format.json { render json: @user.errors, status: :unprocessable_entity }
            end
          end
    end

    #delete
    def destroy
        @user.destroy
        respond_to do |format|
          format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
          format.json { head :no_content }
        end
      end
    private
        # used to identify individual user for showing, editing, updating, and deleting
        def set_user
            @user = User.find(params[:id])
        end

        def user_params
            params.require(:user).permit(:first, :last, :email, :password, :role)
        end
end
