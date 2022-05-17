class GrammarStats
    def initialize
        @correct = 0
        @amount = 0
    end
  
    def check(text) # text is a string
      @amount += 1
      if /[[:upper:]]/.match(text[0]) && text[-1].match("\\p{Punct}")
        @correct += 1
        return true
      else 
        return false
      end
    end
  
    def percentage_good
        x = @amount
        y = @correct
        if x == 0 || y == 0
          return 0
        else
          return (y.to_f/x). * 100
        end
    
    end
  end