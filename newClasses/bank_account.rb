class BankAccount 
  attr_reader :name 
  
  def initialize(name)
    @name = name
    @transactions = []
    add_transaction("Beginning Balance", 0)
  end
  
  def credit(description, amount)
    add_transaction(description, amount)
  end
    
  def debit(description, amount)
    add_transaction(description, -amount)
  end
  
  def add_transaction(description, amount)
    @transactions.push(description: description, amount: amount)
  end
  
  def balance
    blanace = 0
    @transactions.each do |transaction|
      balance += transaction[:amount]
    end
    return balance
  end
end

bank_account = BankAccount.new("Toggle")
band_account.credit("Paycheck", 100)

bank_account.debit("Groceries", 40)
puts bank_account.balance


