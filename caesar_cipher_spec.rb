require "caesar-cipher"

describe "Caesar cipher" do
  describe "initialize" do
    it "works with single letters" do
      expect(CaesarCipher.new("A", 1)).to eq("B")
    end


end
