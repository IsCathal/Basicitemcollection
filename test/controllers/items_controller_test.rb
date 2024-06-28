require "test_helper"

class ItemControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item = Item.new(name: "Football", description: "A round object for kicking" )
  end


  test "should get index" do
    get items_url
    assert_response :success
  end

  # test "should get new" do
  #   get new_items_url
  #   assert_response :success
  # end

  test "should create item" do
    user = User.new(name: "Charlie")
    user.save
    assert_difference("Item.count", 1 ) do
      post items_url, params: { item: { name: "Phone", description: "A Communication Device", user_id: 1 } }
    end
  end




end