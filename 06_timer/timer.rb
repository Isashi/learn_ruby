class Timer
  #write your code here

  attr_accessor :seconds
  
  def initialize
  	@seconds=0
  end

  def time_string
  		hour = (@seconds/3600)
  		min = ((@seconds-3600*hour)/60)
  		sec = (@seconds-3600*hour-60*min)
  		
  		result = add_zero(hour)+":"+add_zero(min)+":" + add_zero(sec)
  end

  def add_zero(x)
  		if x < 10
  			x = "0" + x.to_s
  		else
  			x= x.to_s
  		end
  	end
end