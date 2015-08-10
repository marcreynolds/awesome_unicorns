gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'unicorn'

# has a name
# has a color -- though it's normally white
# says sparkly things ??
class UnicornTest < Minitest::Test
  def test_it_has_a_name
    unicorn = Unicorn.new 'Comel'
    assert_equal 'Comel', unicorn.name
  end

  def test_its_not_always_named_comel
    unicorn = Unicorn.new 'Sally'
    assert_equal 'Sally', unicorn.name
  end

  def test_it_is_white_by_default
    unicorn = Unicorn.new 'Fredrick'
    assert_equal 'white', unicorn.color
  end

  def test_it_knows_if_it_is_white
    unicorn = Unicorn.new 'Elizabeth'
    assert unicorn.white?, "Elizabeth should be white, but isn't"
  end

  def test_it_is_not_always_white
    unicorn = Unicorn.new 'Sammy', 'purple'
    assert_equal 'purple', unicorn.color
  end

  def test_it_knows_when_its_not_white
    unicorn = Unicorn.new 'Yoda', 'green'
    refute unicorn.white?, "Yoda should not be white, but he is!"
  end

  def test_unicorn_says_sparkly_stuff
    unicorn = Unicorn.new 'Gertrude'
    assert_equal '****;* Wonderful! ****;*', unicorn.say('Wonderful!')
  end

  def test_unicorn_says_different_sparkly_stuff
    unicorn = Unicorn.new 'Sparkles'
    assert_equal '****;* This nasi is tak sedap ****;*', unicorn.say('This nasi is tak sedap')
  end
end
