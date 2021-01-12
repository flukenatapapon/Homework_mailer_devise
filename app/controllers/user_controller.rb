class UserController < ApplicationController
    before_action :authenticate_user!
    skip_before_action :verify_authenticity_token, :only => [:back, :index]
    def index
        # WelcomeMailer.index.deliver_now
    end

    def back
        
    end

    def user_info
        
    end

    def edit_user_info
        @user = User.find(params[:id])
    end
    
end
