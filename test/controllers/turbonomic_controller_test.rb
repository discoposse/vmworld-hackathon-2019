require 'test_helper'

class TurbonomicControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get turbonomic_index_url
    assert_response :success
  end

end
