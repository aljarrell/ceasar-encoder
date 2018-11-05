require "minitest/autorun"
require_relative "ceasar.rb"

class My_test < Minitest::Test

  def test_one
    assert_equal(1,1)
  end

  def test_for_y
    assert_equal("y", encoder("t"))
  end

  def test_for_stu
    assert_equal("xyz", encoder("stu"))
  end

  def test_for_abc
    assert_equal("fgh", encoder("abc"))
  end

  def test_for_hello_world
    assert_equal("mjqqt btwqi", encoder("hello world"))
  end

  def test_for_uppercase_y
    assert_equal("D", encoder("Y"))
  end

  def test_for_symbols
    assert_equal("", encoder("*"))
  end



end
