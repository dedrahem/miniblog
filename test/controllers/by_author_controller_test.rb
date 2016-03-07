require 'test_helper'

class ByAuthorControllerTest < ActionController::TestCase
  test "should get listof_authors" do
    get :listof_authors
    assert_response :success
  end

  test "should get author_bio" do
    get :author_bio
    assert_response :success
  end

end
