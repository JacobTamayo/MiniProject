# frozen_string_literal: true

# Recieves a list of prices and need to find the best days to buy and sell
def stock_picker(prices)
  arr = prices.sort
  max = arr[arr.length - 1]
  min = arr[0]
  finished = [prices.index(min), prices.index(max)]
  p finished
end

stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
