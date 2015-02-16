require 'test_helper'

class AlbumControllerTest < ActionController::TestCase
  test "should get makeAlbum" do
    get :makeAlbum
    assert_response :success
  end

end
