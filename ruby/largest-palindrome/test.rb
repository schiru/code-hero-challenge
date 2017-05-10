def numeric_palindrome(*args)
  # Enter your code here
end

def assert_equal(actual, expected)
  if actual == expected
    puts "Test Passed: Value == #{actual}"
  else
    puts "Failed, expected #{expected}, got #{actual}"
  end
end


require 'timeout'

puts 'Basic tests...'

Timeout::timeout(1.2) do
  assert_equal(numeric_palindrome(2824,2399),7764677)
  assert_equal(numeric_palindrome(888,91),80808)
  assert_equal(numeric_palindrome(937,113),81518)
  assert_equal(numeric_palindrome(34735,56),191)
  assert_equal(numeric_palindrome(15, 125, 8),8)
  assert_equal(numeric_palindrome(57,62,23),82128)
  assert_equal(numeric_palindrome(48,9,3,0,67),868)
  assert_equal(numeric_palindrome(11,1),11)
  assert_equal(numeric_palindrome(0,0,0),0)
  assert_equal(numeric_palindrome(2211,1,1,1),2112)
end

require 'set'

puts 'Random tests'

def randint(a, b)
  rand(b - a + 1) + a
end

def sol(*args)
  args = args.select{|x| x > 0}
  return 0 if args.length < 2
  if args.index(1) != nil
    args = args.select{ |x| x>1 }+[1]
  end
  if args.length==1
    return sol_max_pal(args[0].to_s.split(''))
  end
  maxval = -1
  sol_get_combo(args,2).each{ |prod|
    maxval=[maxval, sol_max_pal(prod.inject(:*).to_s.split(""))].max
  }
  maxval
end

def sol_get_combo(array,n)
  res = []
  for number in array
    for item in res
      res += [item + [number]]
    end
    res += [[number]]
  end
  res.select{|x| x.length >= n}
end

def sol_max_pal(array)
  even,odd = [],[]
  array.to_set.each{|n|
    if array.count(n) > 1
      even += [n*(array.count(n)/2)]
    end
    if array.count(n)%2==1
      odd += [n]
    end
  }
  even.sort!
  odd = odd.length == 0 ? [''] : odd
  if even.length == 1 and even[0][0] == '0'
    even = []
  end
  (even.reverse + [odd.max] + even).join('').to_i
end

Timeout::timeout(1.2) do
  40.times do
    array=[]
    randint(2, 10).times do
      array += [randint(0,10**randint(1,5))]
    end

    assert_equal(numeric_palindrome(*([]+array)), sol(*array))
  end
end