class ItemTest < ActiveSupport::TestCase 

  def setup
    @item = Item.new(name: "Football", description: "A round object for kicking")
  end

  test "item should be valid" do 
    assert @item.valid?
  end

  test "item name should be present" do
    @item.name = ""
    assert_not @item.valid?
  end

  test "item description should be present" do
    @item.description = ""
    assert_not @item.valid?
  end

  test "item name should not be too long" do
    @item.name = "a" * 51
    assert_not @item.valid?
  end

  test "item description should not be too long" do
    @item.description = "a" * 301
    assert_not @item.valid?
  end

 

end