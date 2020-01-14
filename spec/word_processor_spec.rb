require "word_processor"

describe Wordprocessor do

  describe "empty string and one word" do

    it "takes in an empty string and returns an empty string" do
      expect(subject.spell_checker("")).to eq ""
    end

    it "takes in a and returns a" do
      expect(subject.spell_checker("a")).to eq "a"
    end

    it "takes in an and returns an" do
      expect(subject.spell_checker("an")).to eq "an"
    end


  end





end
