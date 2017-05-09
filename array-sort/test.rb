def sort(array)

end

def test(input, expected)
  output = sort(input)
  if expected == output
    puts '.'
  else
    puts "When sort(#{input}) expected #{expected} but got #{output}"
  end
end

test( [] , [] )
test( [1], [1])
test( [8, 9, 9, 5, 2, 0, 6, 0, 6, 4, 6, 9, 3, 7, 4, 5] , [8, 2, 6, 3, 7, 4, 5, 9, 0, 5, 9, 9, 0, 4, 6, 6])