require_relative 'spec_helper'

describe Barracks do

  before :each do
    @barracks = Barracks.new    
  end

  describe "#Barracks_damage" do
    it "barracks should only take half damage from footmen" do
      enemy_unit = Footman.new
      enemy_unit.attack!(@barracks)
      expect(@barracks.health_points).to eq(495)
    end
  end

  

end