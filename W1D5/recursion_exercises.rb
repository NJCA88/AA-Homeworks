def exponent(number, power)
  return 1 if power == 0
  return number if power == 1
  number * exponent(number, power-1)
end

puts exponent(3,2)

def deep_dup(array)
  new_array = []
  array.each do |el|
    if el.is_a?(Array)
      new_array << deep_dup(el)
    else
      new_array << el
    end
  end
  new_array
end

a =  deep_dup([1,2,[3]])
puts a.inspect


def fib(steps)
  return [] if steps == 0
  return [1] if steps == 1
  return [0, 1] if steps == 2


  fibs = fib(steps-1)
  fibs << fibs[-1] + fibs[-2]
end

b = fib(5)
puts b.inspect

# def subsets(array)
#   return [[]] if array.length == 0
#   subs = subsets(
#   end
# end


# def subsets
#   return [[]] if empty?
#   subs = take(count - 1).subsets
#   subs.concat(subs.map { |sub| sub + [last] })
# end

def permutations(array)
  return [array] if array.length ==1
  first = array.shift
  perms = permutations(array)
  answer = []

  perms.each do |perm|
    (0..perm.length).each do |index|
      answer << perm[0...index] + [first] + perm[index..-1]
    end
  end
  answer
end

d = permutations([1,2,3])
puts d.inspect

SMALLS = ['if', 'and', 'on', 'the', 'of', 'a', 'is']

def titleize(string)

  list = string.split(" ")
  new_list = list.map.with_index {|word, idx|
   if SMALLS.include?(word) && idx != 0
     word.downcase
   else
     word.capitalize
   end
    }
  puts new_list.join(" ")
  end

titleize("and this is a house")
