require 'rails_helper'

RSpec.describe "Landingmail", type: :request do

    let(:landingmail_params) {
        { email: "natapapon.r@gmail.com", message: "This is a test mails" }
    } 

    describe "POST /send_mail" do
        it "send email successfully" do
        expect { 
                post send_mail_url, 
                params: { landingmail_params }
            }.to change{ ActionMailer::Base.deliveries.count }.by(1)
        end
    end
    
end
