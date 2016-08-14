class Array
  def keep
    each_with_object([]) do |element, arr|
      arr.push(element) if yield element
    end
  end

  def discard
    each_with_object([]) do |element, arr|
      arr.push(element) unless yield element
    end
  end
end