require "test_helper"

class MailControllerTest < ActionDispatch::IntegrationTest
  setup do
    @request = recordings(:Ivan)
  end
  test "new" do
    get mail_url
    assert_respose :success
  end
end
