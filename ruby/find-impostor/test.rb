require 'minitest/autorun'

def impostor(array)

end

class Test < Minitest::Test
  def test_solution
    assert_equal(impostor([0, 1, 2]), 1)
    assert_equal(impostor([1, 2, 3]), 2)

    ints1 = [2,6,8,10,3]; # odd at the back
    ints2 = [2,6,8,200,700,1,84,10,4]; # odd in the middle
    ints3 = [17,6,8,10,6,12,24,36]; # odd in the front
    ints4 = [2,1,7,17,19,211,7]; # even in the front
    ints5 = [1,1,1,1,1,44,7,7,7,7,7,7,7,7]; # even in the middle
    ints6 = [3,3,3,3,3,3,3,3,3,3,3,3,3,3,35,5,5,5,5,5,5,5,5,5,5,7,7,7,7,1000]; # even at the end
    ints7 = [2,-6,8,-10,-3]; # odd at the back, negative
    ints8 = [2,6,8,2,-66,34,-35,66,700,1002,-84,10,4]; # odd in the middle, negative
    ints9 = [-100000000000000007,-18,6,-8,-10,6,12,-24,36]; # odd in the front, negative
    ints10 = [-20,1,7,17,19,211,7]; # even in the front, negative
    ints11= [1,1,-1,1,1,-44,7,7,7,7,7,7,7,7]; # even in the middle, negative
    ints12 = [1,0,0]; # odd answer, zeroes
    ints13 = [3,7,-99,81,90211,0,7]; # even in the middle, zero

    inputs = [ints1, ints2, ints3, ints4, ints5, ints6, ints7, ints8, ints9, ints10, ints11, ints12, ints13]
    expected = [3, 1, 17, 2, 44, 1000, -3, -35, -100000000000000007, -20, -44, 1, 0]

    for i in 0...inputs.length do
      assert_equal(impostor(inputs[i]), expected[i])
    end

    def randint(a,b) rand(b-a+1)+a end

    30.times do
      test_integers = []
      base = 100000000
      q = randint(1,2)
      expected = nil
      test_integers << randint(-base,base) * 2 - q
      expected = test_integers[0]
      (randint(10,1000)).times do
        test_integers << randint(-base,base) * 2 - (q + 1)
      end
      assert_equal(impostor(test_integers), expected)
    end
  end
end