require_relative "../ruby"

# Test 1: Pushes expected letter:  new_array.push(expected_letter)

describe CaesarCipher do
  describe "#select-letter" do
    subject(:caesar_select) { described_class.new }
    let(:expected_letter) { "h" }
    context "when letters_array includes letter" do
      it "pushes the expected letter to new array" do
        new_array = []
        expect { caesar_select.pushletter(expected_letter, new_array) }.to change {
          new_array.length
        }.from(0).to(1)
      end
    end
  end
end
