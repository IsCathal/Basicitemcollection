require "test_helper"

class ItemControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item = Item.new(name: "Football", description:"A round object for kicking")
  end


  test "should get index" do
    get items_url
    assert_response :success
  end







end