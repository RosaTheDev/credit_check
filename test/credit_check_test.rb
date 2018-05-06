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

  def test_that_every_odd_index_in_the_array_is_doubled
    new_card = CreditCheck.new("4929735477250543")

    new_card_array = [3, 4, 5, 0, 5, 2, 7, 7, 4, 5, 3, 7, 9, 2, 9, 4]

    expected = [3, 8, 5, 0, 5, 4, 7, 14, 4, 10, 3, 14, 9, 4, 9, 8]
    assert_equal expected, new_card.double_every_odd_index(new_card_array)
  end

  def test_that_the_doubled_numbers_that_are_greater_than_nine_are_subtracted_by_nine
    new_card = CreditCheck.new("4929735477250543")

    odd_index_doubled_array = [3, 8, 5, 0, 5, 4, 7, 14, 4, 10, 3, 14, 9, 4, 9, 8]

    expected = [3, 8, 5, 0, 5, 4, 7, 5, 4, 1, 3, 5, 9, 4, 9, 8]

    assert_equal expected, new_card.subtracting_numb ers_greater_than_nine_by_nine(odd_index_doubled_array)
  end
end
