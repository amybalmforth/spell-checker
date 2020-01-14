class Wordprocessor

  def spell_checker(string)
    if string == "" || string == "a" || string == "an" || string == "I"
      return string
    end
    if string == "i"
      return "~i~"
    end
    return "~b~"

  end



end
