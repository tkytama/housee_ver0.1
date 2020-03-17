require 'test_helper'

class ArchitectureListControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get architecture_list_index_url
    assert_response :success
  end

end
