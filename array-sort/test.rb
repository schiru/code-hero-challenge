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

test(
  [3, 2, 4, 1, 7, 1, 8, 5, 9],
  [3, 1, 8, 5, 9, 1, 4, 2, 7]
)

test(
  [8, 9, 9, 5, 2, 0, 6, 0, 6, 4, 6, 9, 3, 7, 4, 5],
  [8, 2, 6, 3, 7, 4, 5, 9, 0, 5, 9, 9, 0, 4, 6, 6]
)

test(
  [6, 4, 6, 9, 3, 7, 4, 5, 9, 8, 9, 7, 3, 0, 6, 9, 1, 0, 3, 0, 6, 4, 6, 9, 3],
  [6, 7, 9, 9, 6, 4, 6, 9, 3, 0, 6, 8, 3, 9, 6, 4, 4, 7, 1, 0, 3, 0, 9, 5, 3]
)
