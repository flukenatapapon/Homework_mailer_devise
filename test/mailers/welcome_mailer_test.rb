require "test_helper"

class WelcomeMailerTest < ActionMailer::TestCase
  test "index" do
    mail = WelcomeMailer.index
    assert_equal "Index", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
