require "test_helper"

class SyndicatesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get syndicates_index_url
    assert_response :success
  end
end
