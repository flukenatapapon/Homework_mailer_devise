class LandingmailController < ApplicationController

    skip_before_action :verify_authenticity_token, only: [:edit_user]
    invisible_captcha only: [:send_mail], on_spam: :cc, on_timestamp_spam: :custom_callback
   
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
        puts "before pass"
        WelcomeMailer.index(params[:email], params[:message]).deliver

        @ip_address = request.remote_ip
        puts @ip_address

        @listing = ProjectHoneypot.lookup("iizzeceesnqs", @ip_address)
        puts  @listing.safe?
        puts "Pass"

        redirect_to a_path
    end

    def a
        
    end
    
    private
    def custom_callback
        puts "fails"
        redirect_to root_path, alert: 'Spam detected'
    end 

    def method_name
        puts "fails cc"
    end


    def user_params
        params.require(:user).permit(:prefix, :full_name, :nickName, :phone, :address)
    end  
end
