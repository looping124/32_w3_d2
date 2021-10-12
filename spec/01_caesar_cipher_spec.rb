require_relative '../lib/01_caesar_cipher.rb'


describe "test of final result" do
  it "should return the final result" do
    expect(caesar_cipher("abce", 5)).to eq("fghj")
    expect(caesar_cipher("Bonjour comment ca va ?", 5)).to eq("Gtsotzw htrrjsy hf af ?")
    expect(caesar_cipher("a", 5)).to eq("f")
    expect(caesar_cipher("e", 5)).to eq("j")
  end
end