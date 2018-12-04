require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "export" do
    mail = UserMailer.export
    assert_equal "Export", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
