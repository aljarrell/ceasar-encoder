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
    assert_equal("*", encoder("*"))
  end

  def test_for_numbers
    assert_equal("6", encoder(1))
  end

  def test_for_decoder_fgh
    assert_equal("abc", decoder("fgh"))
  end

  def test_decoder_for_numbers
    assert_equal("1", decoder(6))
  end

  def test_decoder_for_symbols
    assert_equal("*", decoder("*"))
  end

  def test_for_10th_day_of_month
    assert_equal("k", daily_encoder("a", 10))
  end

  def test_for_whole_word_10th_day_of_month
    assert_equal("rovvy", daily_encoder("hello", 10))
  end

  def test_for_hello_9th_day
    assert_equal("qnuux", daily_encoder("hello", 9))
  end

  def test_for_hello_world_15th_day
    assert_equal("Wtbbe Mehbs", daily_encoder("Hello World", 15))
  end

  def test_for_hello_world_15th_day
    assert_equal("wtbbe mehbs", daily_encoder("hello world", 15))
  end

  def test_for_daily_decoder
    assert_equal("hello", daily_decoder("qnuux", 9))
  end

  def test_for_daily_decoder_kill
     assert_equal("kill", daily_decoder("pnqq", 5))
   end

end
