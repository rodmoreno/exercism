module Port
  IDENTIFIER = :PALE

  def self.get_identifier(city)
    city[0..3].upcase.to_sym
  end

  def self.get_terminal(ship_identifier)
    if ship_identifier.to_s[0..2].match?(/(GAS|OIL)/)
      :A
    else
      :B
    end
  end
end
