class Array
  def each(&block)
    self.length.times do |pos|    
      block.call(self[pos])
    end
  end
end
