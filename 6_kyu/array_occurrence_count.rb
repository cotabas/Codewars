def delete_nth(order,max_e)
  keeper = {}
  
  order.map do |num|
    keeper[num] = keeper[num].nil? ? 1 : keeper[num] + 1
    keeper[num] > max_e ? nil : num
  end.compact
end
