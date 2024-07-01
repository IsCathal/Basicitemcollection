require "test_helper"

class ItemControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item = Item.new(name: "Football", description: "A round object for kicking")
  end

  test "should get index" do
    get items_url
    assert_response :success
  end

  test "should create item" do
    user = User.new(name: "Charlie")
    user.save
    assert_difference("Item.count", 1) do
      post items_url, params: { item: { name: "Phone", description: "A Communication Device", user_id: 1 } }
    end
  end

  test "should show item" do
    @item.save
    get item_url(@item)
    assert_response :success
  end

  test "should get new" do
    get new_item_url
    assert_response :success
  end

  test "should redirect to items path after successful item creation" do
    post items_url, params: { item: { name: "Phone", description: "A Communication Device", user_id: 1 } }
    assert_redirected_to items_path
  end

  test "should set flash notice after successful item creation" do
    post items_url, params: { item: { name: "Phone", description: "A Communication Device", user_id: 1 } }
    assert_equal "Item was successfully created", flash[:notice]
  end

  test "should set flash notice if item creation fails" do
    post items_url, params: { item: { name: "", description: "" } }
    assert_equal "There was an error", flash[:notice]
  end
end