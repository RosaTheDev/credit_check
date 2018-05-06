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
end
