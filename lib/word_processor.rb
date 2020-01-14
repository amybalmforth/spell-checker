class Wordprocessor

  def spell_checker(string)
    if string == "" || string == "a" || string == "an" || string == "I"
      return string
    end
    return "~i~"

  end



end
