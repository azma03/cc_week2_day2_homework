class River
  attr_reader :name, :fish

  def initialize(name)
    @name = name
    @fish = []
  end

  def fish_count()
    return @fish.length()
  end

  def add_fish(a_fish)
    @fish.push(a_fish)
  end

  def delete_fish(a_fish)
    @fish.delete(a_fish)
  end

end
