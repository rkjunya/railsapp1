require 'test_helper'

class KintorePostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get kintore_posts_index_url
    assert_response :success
  end

end
