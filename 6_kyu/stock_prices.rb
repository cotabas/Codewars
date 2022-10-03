def get_max_profit(stock_prices_yesterday)

  max_profit = 0
  sell_price = 0
  
  stock_prices_yesterday.each_with_index do |price, dex|
    stock_prices_yesterday.each_with_index do |second_price, second_dex|
      next if second_dex <= dex
      if max_profit < (second_price - price)
        max_profit = second_price - price
        sell_price = second_price
      end
    end
  end
  
  [sell_price - max_profit, sell_price, max_profit]
end
