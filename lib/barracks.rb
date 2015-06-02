class Barracks < Unit
  attr_reader :gold, :food 



  def initialize
    super(500, 0)
    @gold = 1000
    @food = 80
  end

  def can_train_footman?
    gold >= 135 && food >= 2
  end

  def can_train_peasant?
    gold >= 90 && food >= 5
  end

  def train_footman
    if can_train_footman? == false
      nil
    else
    @gold -= 135
    @food -= 2
    Footman.new
    end
  end

  def train_peasant
   if can_train_peasant? == false
    nil
   else
    @gold -= 90
    @food -= 5
    Peasant.new
    end
  end

  def damage(ap)
    self.health_points -= (ap/2).ceil
  end

  


end
