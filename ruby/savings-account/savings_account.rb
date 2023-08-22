module SavingsAccount
  def self.interest_rate(balance)
    if balance.negative?
      3.213
    elsif balance >= 0 && balance < 1_000
      0.5
    elsif balance >= 1_000 && balance < 5_000
      1.621
    else
      2.475
    end
  end

  def self.annual_balance_update(balance)
    balance * (1 + (interest_rate(balance) / 100))
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    year = 0
    balance = current_balance
    while balance <= desired_balance
      balance = annual_balance_update(balance)
      year += 1
    end

    year
  end
end
