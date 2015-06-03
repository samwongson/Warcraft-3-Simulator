class SeigeEngine < Unit

  def initialize
    super(400, 50)
  end

  def attack!(target)
    if self.dead?
      nil
    elsif target.dead?
      nil
    elsif target.class == Barracks
      target.damage(self.attack_power * 4)
    else      
      target.damage(self.attack_power)
    end
  end



end