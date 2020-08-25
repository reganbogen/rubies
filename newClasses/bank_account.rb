class BankAccount 
  attr_reader :name 
  
  def initialize(name)
    @name = name
    @transactions = []
  end
  
  def add_transation(description, amount)
    @transactions.push(description: description, amount: amount)
  end
end

bank_account = BankAccount.new("Toggle")
puts bank_account.inspect
bank_account.add_transaction("Groceries", 40)
puts bank_account.inspect


