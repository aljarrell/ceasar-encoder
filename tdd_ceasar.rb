require "minitest/autorun"
require_relative "ceasar.rb"

class My_test < Minitest::Test

  def test_one
    assert_equal(1,1)
  end

  def test_for_a
    assert_equal("y", encoder("t"))
  end




end
