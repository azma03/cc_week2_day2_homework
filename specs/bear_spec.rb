require("minitest/autorun")
require("minitest/rg")
require_relative("../bear")
require_relative("../fish")
require_relative("../river")

class BearTest < Minitest::Test

  def setup
    @bear1 = Bear.new("Yogi", "Grizzly")

  end

  def test_can_return_name
    assert_equal("Yogi", @bear1.name)
  end

  def test_can_return_type
    assert_equal("Grizzly", @bear1.type)
  end

  def test_food_count
    assert_equal(0, @bear1.food_count())
  end

  def test_roar
    assert_equal("Roar....", @bear1.roar())
  end

  def test_eats_fish_from
    #arrange
    @river1 = River.new("Amazon")

    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Goldy")

    @river1.add_fish(@fish1)
    @river1.add_fish(@fish2)

    #act
    @bear1.eats_fish_from(@river1, @fish2)

    #assert
    assert_equal(1, @bear1.food_count())
    assert_equal(1, @river1.fish_count())
  end

end
