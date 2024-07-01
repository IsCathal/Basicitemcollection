class UserTest < ActiveSupport::TestCase 

  def setup
    @user = User.new(name: "Charlie")
  end

  class UserTest < ActiveSupport::TestCase 

    def setup
      @user = User.new(name: "Charlie")
    end

    test "user should be valid" do 
      assert @user.valid?
    end

    test "user name should be present" do 
      @user.name = ""
      assert_not @user.valid?
    end

    test "user name should be at least 3 characters long" do 
      @user.name = "ab"
      assert_not @user.valid?
    end

    test "user name should not exceed 50 characters" do 
      @user.name = "a" * 51
      assert_not @user.valid?
    end

    # Add more test cases here

  end

end