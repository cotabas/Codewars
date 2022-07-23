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
  p @tokens
    if @tokens[1] == '='
      @vars[@tokens[0]] = @tokens[2].to_i
      return @vars[@tokens[0]]
    end
    
    if @tokens.length == 1
      return error if @vars[@tokens[0]].nil?
      return @vars[@tokens[0]] 
    end
    
    @tokens[0] = @vars[@tokens[0]] unless /[0-9]/.match(@tokens[0])
    @tokens[2] = @vars[@tokens[2]] unless /[0-9]/.match(@tokens[2])
    return @tokens[0].to_i.send @tokens[1], @tokens[2].to_i if /[%+\-\/*]/.match(@tokens[1])
    
  end

  private

  def tokenize program
    return [] if program == ''

    regex = /\s*([-+*\/\%=\(\)]|[A-Za-z_][A-Za-z0-9_]*|[0-9]*\.?[0-9]+)\s*/
    program.scan(regex).select { |s| !(s =~ /^\s*$/) }
  end
end
