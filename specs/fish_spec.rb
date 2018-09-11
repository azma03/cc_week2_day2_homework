require("minitest/autorun")
require("minitest/rg")
require_relative("../fish")

class FishTest < Minitest::Test

  def setup
    @fish1 = Fish.new("Nemo")
  end

  def test_can_return_name
    assert_equal("Nemo", @fish1.name)
  end

end
