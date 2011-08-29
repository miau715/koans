  class Dog
    attr_reader :name

    def initialize(name)
      @name = name
    end

    def bark
      "WOOF"
    end
  end
  
  class GreatDane < Dog
    def growl
      super.bark + ", GROWL"
    end
  end
  
george = GreatDane.new("George")

george.growl