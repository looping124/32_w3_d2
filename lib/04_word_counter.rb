dictionnary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
dictionnary2 = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]


def word_counter(sentence_string, dictionnary)

  frequence ={}
  dictionnary.each do |mot|
    if sentence_string.downcase.scan(mot).size > 0
      if frequence[mot]
        frequence[mot] = frequence[mot] + sentence_string.downcase.scan(mot).size
      else
        frequence[mot]= sentence_string.downcase.scan(mot).size
      end
    else
    end
  end
  print frequence
end



word_counter(File.read('./shakespeare.txt'), dictionnary2)