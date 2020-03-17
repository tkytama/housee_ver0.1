require 'test_helper'

class EditArchitectureControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get edit_architecture_show_url
    assert_response :success
  end

  test "should get new" do
    get edit_architecture_new_url
    assert_response :success
  end

  test "should get edit" do
    get edit_architecture_edit_url
    assert_response :success
  end

end
