class Wordprocessor

  def spell_checker(string)

    dictionary = ["", "a", "an", "I", "as", "an", "we", "are", "yes", "no"]

    words = string.split(" ")

    returned_string = []
    words.each do |w|
      if dictionary.include?(w)
        returned_string << w
      else
        returned_string << "~" + w + "~"
      end
    end
    return returned_string.join(" ")

  end

end
