require "rspec"
require "./caesar-cipher.rb"

describe "Caesar cipher" do
  describe "initialize" do
    puts "in test"
    it "works with single letters" do
      puts "in test"
      expect(CaesarCipher.new("A", 1)).to eq("B")
    end
  end
end