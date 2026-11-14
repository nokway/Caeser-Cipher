require_relative "../ruby"

# Test 1: Pushes expected letter:  new_array.push(expected_letter)

describe Caesar do
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

  describe "#get new position" do
    subject(:caesar_shift) { described_class.new }

    context "when shift is 0" do
      it "returns the correct letter in shift 0" do
        shifted_letter = caesar_shift.shift("H", 0)
        expect(shifted_letter).to eq("H")
      end
    end

    context "when shift causes index greater than 26" do
      subject(:caesar_shift) { described_class.new }

      it "returns the correct letter in the shift 20" do
        shifted_letter = caesar_shift.shift("W", 5)
        expect(shifted_letter).to eq("B")
      end
    end
  end

  describe "#finished" do
    context "when condition is true" do
      subject(:caesar_finished) { described_class.new }

      it "returns true" do
        chars_array = %w[O R T]
        word = "FIT"
        expect(caesar_finished).to be_finished(chars_array, word)
      end
    end
  end

  describe "#shift loop" do
    context "when given a shift 0" do
      subject(:caesar_loop) { described_class.new }

      it "adds new values to shifted array" do
        expect { caesar_loop.shift_loop("eq", 0) }.to change { caesar_loop.shifted_array.length }.to(2)
      end

      it "returns full word" do
        full_word = caesar_loop.shift_loop("hello", 0)
        expect(full_word).to eq("HELLO")
      end
    end
  end
end

# Check if item is present in the array of letters
# returns the correct letter according to shift
#
