require 'test_helper'

class LevelsControllerTest < ActionDispatch::IntegrationTest
  test "should get begginer" do
    get levels_begginer_url
    assert_response :success
  end

  test "should get intermediate" do
    get levels_intermediate_url
    assert_response :success
  end

  test "should get expert" do
    get levels_expert_url
    assert_response :success
  end

end
