class CreditCheck
  attr_reader :card_number
  def initialize(card_number)
    @card_number = card_number.to_i.digits
  end

  def double_every_odd_index(card_number_array)
    card_number_array.map.with_index do |card_num, index|
      if index.odd?
        card_num * 2
      else
        card_num
      end
    end
  end

  def subtracting_numbers_greater_than_nine_by_nine(odd_index_doubled_array)
    odd_index_doubled_array.map do |odd_index_double|
      if odd_index_double > 9
        odd_index_double - 9
      else
        odd_index_double
      end
    end
  end

  def sum_all_the_numbers(numbers_subtracted_by_nine_array)
    subtracting_numbers_greater_than_nine_by_nine(numbers_subtracted_by_nine_array).sum
  end

  def will_the_modulo_return_zero(numbers_subtracted_by_nine_array)
    the_card_evaluates_to_zero_or_not = sum_all_the_numbers(numbers_subtracted_by_nine_array) % 10
  end

  def checking_validity(numbers_subtracted_by_nine_array)
    if will_the_modulo_return_zero(numbers_subtracted_by_nine_array) == 0
    puts "Valid"
  else
    puts "Invalid Card Mother Fucker"
    end
  end

end
