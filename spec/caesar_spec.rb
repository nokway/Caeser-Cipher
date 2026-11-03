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

  describe "#get new position" do
    subject(:caesar_shift) { described_class.new }
    let(:array) { double("index_array") }
    context "when shift is 0" do
      before do
        allow(array).to receive(:index)
        allow(caesar_shift).to receive(:get_index).and_return(7)
      end

      it "returns the correct letter in shift 0" do
        shifted_letter = caesar_shift.shift("h", 0)
        expect(shifted_letter).to eq("H")
      end
    end

    context "when shift causes index greater than 26" do
      subject(:caesar_shift) { described_class.new }
      let(:array) { double("index_array") }
      before do
        allow(array).to receive(:index)
        allow(caesar_shift).to receive(:get_index).and_return(22)
        # is 23
      end

      it "returns the correct letter in the shift 20" do
        shifted_letter = caesar_shift.shift("W", 5)
        expect(shifted_letter).to eq("B")
      end
    end
  end

  describe "#shift loop" do
    context "when given a shift 0" do
      subject(:caesar_loop) { described_class.new }

      it "joins shifted array" do
        allow(caesar_loop.instance_variable_get(:@shifted_array)).to receive(:push).and_return("M", "I", "S", "S", "G")
        expect(caesar_loop.instance_variable_get(:@shifted_array)).to receive(:join).and_return("MISSG")
      end

      xit "returns full word " do
        full_word = caesar_loop.shift_loop("hello", 0)
        expect(full_word).to eq("hello")
      end
    end
  end
end

# Check if item is present in the array of letters
# returns the correct letter according to shift
#
