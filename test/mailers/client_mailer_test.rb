require 'test_helper'

class ClientMailerTest < ActionMailer::TestCase
  test "new_enquiry" do
    mail = ClientMailer.new_enquiry
    assert_equal "New enquiry", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
