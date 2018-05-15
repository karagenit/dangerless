#!/usr/bin/env ruby

require_relative 'duplicate.rb'

class Test

  attr_reader :val

  def print!(*args)
    puts *args
  end

  def set_val!(val)
    @val = val
  end

  include Duplicate
end

tester = Test.new
#puts Test.methods.include? :print!
puts tester.methods.include? :print!
puts tester.methods.include? :print
tester.print!(3, 4)
tester.print(3, 4)

tester.set_val! 3
puts tester.val
puts tester.set_val 2
puts tester.val
