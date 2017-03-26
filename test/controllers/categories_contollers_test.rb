require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase

  def setup
    @category = Category.create(name: "sports")
  end

  test "should get show" do
    get :show, params: { id: @category.id }
    assert_response :success
  end
end
