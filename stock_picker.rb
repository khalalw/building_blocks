# Project 2: Stock Picker
# Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

def stock_picker(prices)
  max_profit = [0, 0]
  buy_sell = [0, 0]
  j = prices.length - 1
  prices.length.times do |i|
    while j > i
      if prices[j] - prices [i] > max_profit[1] - max_profit[0]
        max_profit = [prices[i], prices[j]]
        buy_sell = [i, j]
      end
      j -= 1
    end
    j = prices.length - 1
  end
  buy_sell
end

stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
