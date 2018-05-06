class CreditCheck
  attr_reader :card_number
  def initialize(card_number)
    @card_number = card_number.to_i.digits
  end
end
