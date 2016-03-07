require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  test "should get form_newpost" do
    get :form_newpost
    assert_response :success
  end

  test "should get display_entry" do
    get :display_entry
    assert_response :success
  end

  test "should get form_editentry" do
    get :form_editentry
    assert_response :success
  end

end
