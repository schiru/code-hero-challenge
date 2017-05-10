# Largest-Palindrome challenge

Create a function that finds the largest palindromic number made from the product of any amount of at least 2 numeric arguments.

Example:

```ruby
> numeric_palindrome(937, 113)
=>  81518
```

As 937 * 113 = 105881 and the largest palindromic number that can be arranged from this result is: 81518.

Further example:

```ruby
> numeric_palindrome(57, 62, 23)
=> 82128
```

Because you try all possible combinations (57*62,57*23,62*23 and 57*62*23) and find that the product 81282 allow to create the largest 
palindrome (then again: notice that you are must not necessarily use all the digits of a product, as it was by chance in this case).

Note: single digits numbers are still considered (edge) palindromes, so for:

Test.assert_equals(numeric_palindrome(15, 125, 8), 8)
You try all possible combinations (15*125,15*8,125*8,15*125*8) and find that 1875 generates the largest palindrome number, namely 8.

### Note on performance
Your code is expected to run in less than 12000ms for each test case.