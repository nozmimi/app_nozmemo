require 'test_helper'

class NozmemoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get nozmemo_index_url
    assert_response :success
  end

end
