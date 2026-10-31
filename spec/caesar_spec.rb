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

  describe "#verify shift" do
    subject(:caesar_shift) { described_class.new }
    context "when shift is 0" do
      it "returns the correct letters position in the shifted index" do
        # The reason we dont test that the whole word is shifted, is because we have isolated each task into independent tasks, so we dont have one # rubocop:disable Layout/LineLength
        # super method which is in charge of the whole shifting but rather we have one method for getting the letter, one method for pushing to new array etc # rubocop:disable Layout/LineLength

        shifted_letter = caesar_shift.shift("h", 0)
        expect(shifted_letter).to eq("h")
      end
    end
  end
end

# Check if item is present in the array of letters
# returns the correct letter according to shift

# THE REASON TESTS WORK IS BECAUSE EACH ITEM DOESNT CARE WHAT IT IS GIVEN, THAT IS WHAT ISOLATION OF METHODS MEANS
