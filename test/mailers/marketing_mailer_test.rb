require 'test_helper'

class MarketingMailerTest < ActionMailer::TestCase
  test "campaign" do
    mail = MarketingMailer.campaign
    assert_equal "Campaign", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
