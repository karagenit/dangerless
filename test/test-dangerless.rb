#!/usr/bin/env ruby

require_relative '../lib/dangerless.rb'
require 'test/unit'

class TestClass
  attr_reader :val

  def set_val!(val)
    @val = val
  end

  include Dangerless

  def other_test!(val)
    val
  end
end

class TestDangerless < Test::Unit::TestCase
  def test_exist
    test = TestClass.new

    assert test.respond_to? :set_val!
    assert test.respond_to? :set_val
    assert test.respond_to? :other_test!
    assert !(test.respond_to? :other_test)
  end

  def test_mutate
    test = TestClass.new
    
    test.set_val! 3
    testClone = test.set_val 2

    assert_equal test.val, 3
    assert_equal testClone.val, 2
  end
end
