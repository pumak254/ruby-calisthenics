class Dessert
  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  def healthy?
    calories < 200
  end
  def delicious?
    true
  end
  def name 
    @name
  end
  # setters & getters
  def name=(new_name)
    @name = new_name
  end
  def calories
    @calories
  end
  def calories=(new_calories)
    @calories = new_calories
  end
end

class JellyBean < Dessert
  def initialize(flavor)
    @name = flavor + " " + "jelly bean"
    @calories = 5
    @flavor = flavor
  end
  def flavor
    @flavor
  end
  def flavor=(new_flavor)
    @flavor = new_flavor
  end
  def delicious?
    true unless flavor == "licorice"
  end
end
