require 'test_helper'

class ConceptControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get concept_index_url
    assert_response :success
  end

end
