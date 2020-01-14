require "word_processor"

describe Wordprocessor do

  describe "empty string and one word spelled correctly" do

    it "takes in an empty string and returns an empty string" do
      expect(subject.spell_checker("")).to eq ""
    end

    it "takes in a and returns a" do
      expect(subject.spell_checker("a")).to eq "a"
    end

    it "takes in an and returns an" do
      expect(subject.spell_checker("an")).to eq "an"
    end

    it "takes in I and returns I" do
      expect(subject.spell_checker("I")).to eq "I"
    end

  end

  describe "one word spelled incorrectly" do

    it "takes in i and returns ~i~" do
      expect(subject.spell_checker("i")).to eq "~i~"
    end

  end


end
