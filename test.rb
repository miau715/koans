  class CanBeTreatedAsString
    def to_s
      "string-like"
    end

    def to_str
      to_s
    end
  end
  
puts File.exist?(CanBeTreatedAsString.new)