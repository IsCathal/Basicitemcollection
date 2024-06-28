class ItemTest < ActiveSupport::TestCase 

  def setup
    @item = Item.new(name: "Football", description:"A round object for kicking")
  end

  test "item should be vaild" do 
    assert @item.valid?
   end

end