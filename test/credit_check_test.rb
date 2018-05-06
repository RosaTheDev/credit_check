require 'minitest/autorun'
require 'minitest/pride'

class CreditCheckTest < Minitest::Test
  def test_that_it_exists

    new_card = CreditCheck.new("4929735477250543")

    assert_instance_of CreditCheck, new_card
  end
end
