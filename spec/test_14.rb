require_relative 'spec_helper'

describe SeigeEngine do
  
  before :each do
    @seige = SeigeEngine.new
  end

  describe "#SeigeStats" do
    it "should start off with 400 hp" do
      expect(@seige.health_points).to eq(400)
    end
  end

  describe "#Seige attacking rax" do
    it "should do double damage to rax (100)" do
      rax = Barracks.new
      @seige.attack!(rax)
      expect(rax.health_points).to eq(400)
    end
  end

  describe "#Seige engine cost" do
    it "should cost 200 gold to build a seige unit" do
      rax = Barracks.new
      seige = rax.train_seige_engine
      expect(rax.gold).to eq(800)
    end
  end



end