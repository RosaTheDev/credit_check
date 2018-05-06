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
end
