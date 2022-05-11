require './lib/caesars_cipherv2'

describe "#cesears_cipher" do
  it "returns a modified letter that is 3 spots further in the alphabet" do 
    expect(cesears_cipher('a', 3)).to eql('d')
  end 

  it "returns a modified letter that is loops from z back to a" do
    expect(cesears_cipher('a', 50)).to eql('y')
  end 

  it "can work with captial letters" do
    expect(cesears_cipher('A', 4)).to eql('E')
  end 
end

describe "#input" do 
  it "will only accept valid inputs" do 
    expect(input).to eql(true)
  end 
end
