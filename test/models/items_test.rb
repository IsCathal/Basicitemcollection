class CategoryTest < ActiveSupport::TestCase 

  def setup
    @item = Item.new(name: "Football", description:"A round object for kicking")
  end

  test "category should be vaild" do 
    assert @item.valid?
   end

end