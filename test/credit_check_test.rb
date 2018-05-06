require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_check'
class CreditCheckTest < Minitest::Test
  def test_that_it_exists

    new_card = CreditCheck.new("4929735477250543")

    assert_instance_of CreditCheck, new_card
  end

  def test_that_the_card_number_is_converted_into_an_array
    new_card = CreditCheck.new("4929735477250543")
    
    expected = [3, 4, 5, 0, 5, 2, 7, 7, 4, 5, 3, 7, 9, 2, 9, 4]

    assert_equal expected, new_card.card_number
  end
end
