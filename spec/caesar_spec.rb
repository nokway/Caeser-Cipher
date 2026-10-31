require_relative "../ruby"

# Test 1: Pushes expected letter:  new_array.push(expected_letter)

describe CaesarCipher do
  describe "#verify input" do
    subject(:caesar_verify) { described_class.new }
    context "when input is valid" do
      it "returns the given letter" do
        valid_letter = "R"
        new = caesar_verify.includes(valid_letter)
        expect(new).to eq("R")
      end
    end
  end
end
