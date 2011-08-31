class Proxy
  def initialize(target_object)
    @object = target_object
    # ADD MORE CODE HERE
    
    
    
    
  end

  # WRITE CODE HERE
  
end

class Television
  attr_accessor :channel
  
  def power
    if @power == :on
      @power = :off
    else
      @power = :on
    end
  end
  
  def on?
    @power == :on
  end
  
  
end

tv = Proxy.new(Television.new)

puts tv
