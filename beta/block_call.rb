def exec_block_on_arr(array, iterations, &block)
  answer = []
  iterations.times do 
    array.each do |val|
     answer << block.call(val)
    end
  end
  answer
end
