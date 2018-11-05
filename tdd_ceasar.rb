require "minitest/autorun"
require_relative "ceasar.rb"

class My_test < Minitest::Test

  def test_one
    assert_equal(1,1)
  end

  def test_for_y
    assert_equal("y", encoder("t"))
  end

  def test_for_xyz
    assert_equal("", encoder("stu"))
  end




end
