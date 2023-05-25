class Solver
  def factorial(num)
    if num.zero?
      1
    elsif num.even?
      num * factorial(num - 2)
    else
      num * factorial(num - 1) * factorial(num - 2)
    end
  end

  def reverse(word)
    word.chars.reverse.join
  end

  def fizzbuzz(num)
    result = ''
    (1..num).each do |i|
      if (i % 3).zero? && (i % 5).zero?
        result = 'fizzbuzz'
      elsif (i % 3).zero?
        result = 'fizz'
      elsif (i % 5).zero?
        result = 'buzz'
      elsif i != 1 && i != num
        result = i.to_s
      end
      result << ' '
    end
    result
  end
end
