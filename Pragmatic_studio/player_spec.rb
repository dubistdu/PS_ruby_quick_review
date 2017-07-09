require_relative 'player'

describe Player do
  before do
    @initial_health=150
    @player = Player.new("larry",@initial_health)
  end
  it "has a capitalized nam" do
    expect(@player.name).to eq("Larry")
  end
  it "has an initial health" do
    expect(@player.health).to eq(150)
  end
  it "has a string representation" do
    expect(@player.to_s).to eq("I'm Larry with a health of 150 and a score of 155")
  end
  it "computes a score as the sum of its health and length of name" do
    expect(@player.score).to eq(155)
  end
  it "increases health by 15 when w00ted" do
    @player.w00t
    expect(@player.health).to eq(@initial_health+15)
  end
  it "decreases health by 10 when blammed"do
    @player.blam
    expect(@player.health).to eq(@initial_health-10)
  end
end

context "with a health of less than 100"  do
  before do
    @initial_health=90
    @player = Player.new("larry",@initial_health)
  end
  it "is weak" do
    expect(@player.strong?).to eq("weak")
  end
end
context "with a health of more than 100"  do
  before do
    @initial_health=101
    @player = Player.new("larry",@initial_health)
  end
  it "is strong " do
    expect(@player.strong?).to eq("strong")
  end
end

# Every spec file has this same basic structure.
# In this case, the spec file will describe the expected behavior of a player.
# To do that, we'll need to make calls against the Player class.
# So the first thing we do is require the code in the player.rb file.
# The describe method either takes the name of the group as a string or,
# as we've done here, you can give it a class name.
# The describe method also takes a block (code between do and end).
# Inside the block you put the code examples that make up the group.
