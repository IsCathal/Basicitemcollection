class UserTest < ActiveSupport::TestCase 

  def setup
    @users= User.new(name: "Charlie")
  end

  test "category should be vaild" do 
    assert @user.valid?
   end

end