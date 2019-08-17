require 'test_helper'

class VmwareControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get vmware_index_url
    assert_response :success
  end

end
