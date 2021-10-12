def caesar_cipher(sentence_string, move=4)
  sentence_array = sentence_string.split('')
  sentence_coded_array = []

  move= move % 26
 

  sentence_array.length.times do |n|
    if sentence_array[n].ord > 64 && sentence_array[n].ord < 91
      if sentence_array[n].ord+move>90
        sentence_coded_array[n] = (sentence_array[n].ord+move-26).chr  
      else 
        sentence_coded_array[n] = (sentence_array[n].ord+move).chr
      end

    elsif sentence_array[n].ord > 96 && sentence_array[n].ord < 123
            if sentence_array[n].ord+move>122
        sentence_coded_array[n] = (sentence_array[n].ord+move-26).chr  
      else 
        sentence_coded_array[n] = (sentence_array[n].ord+move).chr
      end
    else  
      sentence_coded_array[n] = sentence_array[n]
    end
    #sentence_coded_array[n] = (sentence_array[n].ord+5).chr
  end
  return sentence_coded_array.join
end



 puts caesar_cipher("Bonjour comment ca va ?", 7)