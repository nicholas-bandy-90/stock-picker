stocks = (1..50).to_a.sort{ rand() - 0.5 }[0..6]

def stock_picker(stocks)
max = 0
days = []

stocks.each do |i|
  if stocks.index(i) < stocks.index(stocks.last)
    stocks.each do |j|
      if stocks.index(j) > stocks.index(i) and i - j > max
        max = i - j
        days = [stocks.index(i), stocks.index(j)]
      end
    end
  end
end
puts "The price of stocks for the next #{stocks.length} days should be #{stocks.to_s}"
puts "For the highest profit, I suggest buying stocks on day #{days[0] + 1} and selling on day #{days[1] + 1} for a profit of $#{max}."
end

stock_picker(stocks)