require 'test_helper'

class PodcastControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get podcast_index_url
    assert_response :success
  end

end
