require 'solver'

RSpec.describe Solver do
  describe '#factorial' do
    it 'returns the factorial of a positive integer' do
      expect(Solver.factorial(5)).to eq(120)
      expect(Solver.factorial(10)).to eq(3_628_800)
    end

    it 'returns 1 for 0' do
      expect(Solver.factorial(0)).to eq(1)
    end

    it 'returns 0 for a negative integer' do
      expect(Solver.factorial(-5)).to eq(0)
    end
  end

  describe '#reverse' do
    it 'reverses a string' do
      expect(Solver.reverse('hello')).to eq('olleh')
    end

    it 'returns nil for an empty string' do
      expect(Solver.reverse('')).to be_nil
    end
  end

  describe '#fizzbuzz' do
    it 'returns "FizzBuzz" for numbers 0-2 and 5-29' do
      expect(Solver.fizzbuzz(0)).to eq('FizzBuzz')
      expect(Solver.fizzbuzz(2)).to eq('FizzBuzz')
      expect(Solver.fizzbuzz(5)).to eq('FizzBuzz')
      expect(Solver.fizzbuzz(29)).to eq('FizzBuzz')
    end
    it 'returns "Fizz" for numbers 3-29' do
      expect(Solver.fizzbuzz(3)).to eq('Fizz')
      expect(Solver.fizzbuzz(23)).to eq('Fizz')
      expect(Solver.fizzbuzz(27)).to eq('Fizz')
      expect(Solver.fizzbuzz(43)).to eq('Fizz')
    end

    it 'returns "Buzz" for numbers 5-15' do
      expect(Solver.fizzbuzz(5)).to eq('Buzz')
      expect(Solver.fizzbuzz(15)).to eq('Buzz')
    end

    it 'returns "FizzBuzz" for numbers 16-29' do
      expect(Solver.fizzbuzz(16)).to eq('FizzBuzz')
      expect(Solver.fizzbuzz(29)).to eq('FizzBuzz')
    end
    it 'returns the given number for all other numbers' do
      expect(Solver.fizzbuzz(30)).to eq('30')
      expect(Solver.fizzbuzz(40)).to eq('40')
      expect(Solver.fizzbuzz(70)).to eq('70')
    end
  end
end
