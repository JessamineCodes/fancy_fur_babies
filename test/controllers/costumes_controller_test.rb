require "test_helper"

class CostumesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get costumes_index_url
    assert_response :success
  end
end
