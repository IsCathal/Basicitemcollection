require "test_helper"

class ItemControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item = Item.new(name: "Football", description:"A round object for kicking")
  end


  test "should get index" do
    get items_url
    assert_response :success
  end

  # test "should get new" do
  #   get new_items_url
  #   assert_response :success
  # end

  test "should create category" do
    assert_difference("Item.count", 1 ) do
      post items_url, params: { category: { name: "Phone", description:"A Communication Device" } }
    end
  end




end