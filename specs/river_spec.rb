require("minitest/autorun")
require("minitest/rg")
require_relative("../river")
require_relative("../fish")

class RiverTest < Minitest::Test

  def setup
    @river1 = River.new("Amazon")

    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Goldy")
    @fish3 = Fish.new("Star")

    # Initially add three fish to the river

    @river1.add_fish(@fish1)
    @river1.add_fish(@fish2)
    @river1.add_fish(@fish3)

  end

  def test_can_return_name
    assert_equal("Amazon", @river1.name)
  end

  def test_fish_count
    assert_equal(3, @river1.fish_count())
  end

  def test_add_fish()
    @fish4 = Fish.new("Molly")
    @river1.add_fish(@fish4)
    assert_equal(4, @river1.fish_count())
  end

  def test_delete_fish()
    @river1.delete_fish(@fish3)
    assert_equal(2, @river1.fish_count())
  end

end
