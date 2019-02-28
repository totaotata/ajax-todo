require 'test_helper'

class MailersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mailers_index_url
    assert_response :success
  end

  test "should get new" do
    get mailers_new_url
    assert_response :success
  end

  test "should get create" do
    get mailers_create_url
    assert_response :success
  end

end
