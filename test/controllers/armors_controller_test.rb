require "test_helper"

class ArmorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get armors_index_url
    assert_response :success
  end
end
