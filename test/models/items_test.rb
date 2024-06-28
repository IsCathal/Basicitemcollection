class ItemTest < ActiveSupport::TestCase 

  def setup
    user = User.new(name: "Charlie")
    user.save

    @item = Item.new(name: "Football", description:"A round object for kicking", user_id: 1)
  end

  test "item should be vaild" do 
    assert @item.valid?
   end

end