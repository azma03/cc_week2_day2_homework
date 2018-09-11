class Bear
  attr_reader :name, :type, :stomach

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def food_count()
    return @stomach.length()
  end

  def roar()
    return "Roar...."
  end

  def eats_fish_from(a_river, prey_fish)
    #adds the fish (from river) to the bear's stomach
    @stomach.push(prey_fish)

    #remove that fish from river
    for fish in a_river.fish
      if fish.name == prey_fish.name
        a_river.delete_fish(fish)
      end
    end
  end

end
