def is_multiple_of_3_or_5?(num)
   num % 3 == 0 || num % 5 == 0 ?  (return true) :  (return false)
end


def sum_of_3_or_5_multiples(final_number)
  compte=0
  final_number.times do |n|
     if is_multiple_of_3_or_5?(n) then compte = compte + n end
   end
   compte
end