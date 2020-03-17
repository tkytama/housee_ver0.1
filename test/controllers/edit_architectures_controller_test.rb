require 'test_helper'

class EditArchitecturesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get edit_architectures_new_url
    assert_response :success
  end

  test "should get edit" do
    get edit_architectures_edit_url
    assert_response :success
  end

  test "should get show" do
    get edit_architectures_show_url
    assert_response :success
  end

end
