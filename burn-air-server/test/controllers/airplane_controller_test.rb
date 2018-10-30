require 'test_helper'

class AirplaneControllerTest < ActionDispatch::IntegrationTest
  test "should get name:text" do
    get airplane_name:text_url
    assert_response :success
  end

  test "should get rows:integer" do
    get airplane_rows:integer_url
    assert_response :success
  end

  test "should get cols:text" do
    get airplane_cols:text_url
    assert_response :success
  end

end
