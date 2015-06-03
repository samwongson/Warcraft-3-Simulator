class Unit

  attr_accessor :health_points, :attack_power

  def initialize(health_points, attack_power)
    @health_points = health_points
    @attack_power = attack_power
  end

  def attack!(target)

    if self.dead?
      nil
    elsif target.dead?
      nil
    else
      
      target.damage(self.attack_power)
    end

  end

  def damage(ap)
    self.health_points -= ap
  end

  def dead?
    health_points <= 0
  end



end