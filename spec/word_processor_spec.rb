require 'word_processor'

describe Wordprocessor do
  describe 'empty string and one word spelled correctly' do
    it 'takes in an empty string and returns an empty string' do
      expect(subject.spell_checker('')).to eq ''
    end

    it 'takes in a and returns a' do
      expect(subject.spell_checker('a')).to eq 'a'
    end

    it 'takes in an and returns an' do
      expect(subject.spell_checker('an')).to eq 'an'
    end

    it 'takes in I and returns I' do
      expect(subject.spell_checker('I')).to eq 'I'
    end
  end

  describe 'one word spelled incorrectly' do
    it 'takes in i and returns ~i~' do
      expect(subject.spell_checker('i')).to eq '~i~'
    end

    it 'takes in b and returns ~b~' do
      expect(subject.spell_checker('b')).to eq '~b~'
    end

    it 'takes in ab and returns ~ab~' do
      expect(subject.spell_checker('ab')).to eq '~ab~'
    end
  end

  describe 'two words spelled correctly' do
    it 'takes in as an and returns as an' do
      expect(subject.spell_checker('as an')).to eq 'as an'
    end
  end

  describe 'three words spelled correctly' do
    it 'takes in as we are and returns as we are' do
      expect(subject.spell_checker('as we are')).to eq 'as we are'
    end
  end

  describe 'two words spelled incorrectly' do
    it 'takes in ab b and returns ~ab~ ~b~' do
      expect(subject.spell_checker('ab b')).to eq '~ab~ ~b~'
    end
  end

  describe 'three words spelled incorrectly' do
    it 'takes in ab b b and returns ~ab~ ~b~ ~b~' do
      expect(subject.spell_checker('ab b b')).to eq '~ab~ ~b~ ~b~'
    end
  end

  describe 'one correct word and one incorrect word' do
    it 'takes in and abb and returns an ~abb~' do
      expect(subject.spell_checker('an abb')).to eq 'an ~abb~'
    end
  end

  describe 'four words two correct two incorrect' do
    it 'takes in yes no tt ff and returns yes no ~tt~ ~ff~' do
      expect(subject.spell_checker('yes no tt ff')).to eq 'yes no ~tt~ ~ff~'
    end
  end

end
