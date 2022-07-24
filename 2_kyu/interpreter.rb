class Interpreter

  def initialize
    @vars = {}
    @functions = {}
    @tokens = []
  end  

  def input expr
    # your code here - feel free to use and/or modify the provided tokenizer
    @tokens = tokenize(expr).map{|a|a[0]}
    return '' if @tokens.empty?

    if @tokens[1] == '='
      replace_var_values
      if (@tokens.grep /[%\/*+\-]/).size > 0
        parens while @tokens.include?('(')
        @vars[@tokens[0]] = operate @tokens[2..-1] 
      else
        @vars[@tokens[0]] = @tokens[2].to_i
      end
      return @vars[@tokens[0]]
      
    end
    
    if @tokens.length == 1
#       haha? is there a correct way to return an error?
      return error if @vars[@tokens[0]].nil?
      
      return @vars[@tokens[0]] 
      
    end
    
    replace_var_values
 
    parens while @tokens.include?('(')
    
    return operate @tokens
    
  end

  private
  
  def parens
      start = 0
      stop = 0
      count = 0
      last = false
      exp = []
      @tokens.each_with_index do |toke, dex|
        if toke == '('
          start = dex 
          last = true
        end
        
        if toke == ')' && last == true
          stop = dex 
          last = false
        end
        
      end

#       This - 1 is here to leave the ')' to be replaced by the operated value below
      (start..stop - 1).each do |dex|      
        exp << @tokens.delete_at(dex - count)
        count += 1
      end
      exp.delete('(')

      @tokens[start] = operate exp
  end
    
  def operate exp
    while (exp.grep /[%\/*]/).size > 0
      exp.each_with_index do |toke, dex|
        if /[%\/*]/.match(toke.to_s)
          exp[dex - 1] = exp[dex - 1].to_i.send(toke, exp[dex + 1].to_i) 
          exp.delete_at(dex)
          exp.delete_at(dex)
        end
      end
    end
    while (exp.grep /[+\-]/).size > 0
      exp.each_with_index do |toke, dex|
        if /[+\-]/.match(toke.to_s)
          exp[dex - 1] = exp[dex - 1].to_i.send(toke, exp[dex + 1].to_i) 
          exp.delete_at(dex)
          exp.delete_at(dex)
        end
      end
    end
    exp[0]
  end
  
  def replace_var_values
    @tokens.each_with_index do |toke, dex|
      @tokens[dex] = @vars[toke] if @vars.include?(toke)
    end
  end
  
  def tokenize program
    return [] if program == ''

    regex = /\s*([-+*\/\%=\(\)]|[A-Za-z_][A-Za-z0-9_]*|[0-9]*\.?[0-9]+)\s*/
    program.scan(regex).select { |s| !(s =~ /^\s*$/) }
  end
end
