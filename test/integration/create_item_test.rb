require "test_helper"

class CreateItemTest < ActionDispatch::IntegrationTest
  test "go tho the new item form and create item" do
    get "/items/new"
    assert_response :success
    user = User.new(name: "Charlie")
    user.save
    assert_difference 'Item.count', 1 do
      post items_path, params: { item: { name: "Phone", description: "A Communication Device", user_id: 1 }}
      assert_response :redirect
    end
    follow_redirect!
    assert_response :success
    assert_match "Phone", response.body

  end

  test "the new item form and reject invalid item submission" do
    get "/items/new"
    assert_response :success
    user = User.new(name: "Charlie")
    user.save
    assert_no_difference 'Item.count' do
      post items_path, params: { item: { name: " ", description: "A Communication Device", user_id: 1 }}
    end
    assert_match 'You got an error', response.body
    assert_select  'h2'
  end


end