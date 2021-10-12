def day_trader(prices_array)
  profit = 0
  max_profit = 0
  day_of_buy = 0
  day_of_sell = 0
  
  prices_array.length.times do |n|
    prices_left_array = prices_array[n..-1]
    profit = prices_left_array.max - prices_left_array[0]

    if profit > max_profit
      max_profit = profit
      day_of_buy = n
      day_of_sell = prices_left_array.each_with_index.max[1] + n
    end

  end

  if max_profit > 0
    "Pour un profit maximum de #{max_profit}$ il faut acheter le jour #{day_of_buy} et vendre le jour #{day_of_sell}"
  else
    puts "pas de profit possible"
  end
  return [day_of_buy,day_of_sell]
end



puts day_trader([17, 5,6])
