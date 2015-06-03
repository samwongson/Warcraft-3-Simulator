require_relative 'spec_helper'

describe Unit do 

  
  describe "#Dead_units" do
      it "dead units can't attack" do
        @unit  = Unit.new(0, 20)
        @footman = Footman.new
        expect(@unit.attack!(@footman)).to eq(nil)
      end
  end

  describe "#alive units attacking dead" do
    it "alive units can not attack dead units" do 
      @bob = Footman.new
      @joe = Unit.new(0, 20)
      expect(@bob.attack!(@joe)).to eq(nil)
    end
  end

  
end