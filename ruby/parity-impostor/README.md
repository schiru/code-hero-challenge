# Find the parity impostor

You are given an array (which will have a length of at least 3, but could be very large) containing integers. 
The array is either entirely comprised of odd integers or entirely comprised of even integers except for a single integer N. 
Write a method that takes the array as an argument and returns N.

For example:

```ruby
> impostor([2, 4, 0, 100, 4, 11, 2602, 36])
=> 11

> impostor([160, 3, 1719, 19, 11, 13, -21])
=> 160
```

Enter your solution in test.rb and test it by running
```ruby
ruby -Ilib:test ruby/find-impostor/test.rb 
```