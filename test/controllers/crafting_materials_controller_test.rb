require "test_helper"

class CraftingMaterialsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get crafting_materials_index_url
    assert_response :success
  end

  test "should get show" do
    get crafting_materials_show_url
    assert_response :success
  end
end
