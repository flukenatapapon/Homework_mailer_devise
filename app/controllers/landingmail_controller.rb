class LandingmailController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:send_mail, :landing_send_mail, :edit_user]

    def edit_user
        @user = User.find(params[:id])
        @user.update(user_params)

        redirect_to landing_send_mail_path
    end
    
    def landing_send_mail
        # @user = User.find(params[:id])
        # @user.update(user_params)
    end

    def send_mail
        WelcomeMailer.index(params[:email], params[:message], current_user.email).deliver_now
    end
    
    private
        def user_params
            params.require(:user).permit(:prefix, :full_name, :nickName, :phone, :address)
        end
        
end
