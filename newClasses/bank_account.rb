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
    balance = 0
    @transactions.each do |transaction|
      balance += transaction[:amount]
    end
    return balance
  end
  
  def to_s
    "Name: #{name}, Balance: #{sprintf("%0.2f", balance)}"
  end
  
  def print_register
    puts "#{name}'s Bank Account"
    
    puts "Description\tAmount"
    @transactions.each do |transaction|
      puts transaction[:description] + "\t" + transaction[:amount].to_s
    end
  end
  
end

bank_account = BankAccount.new("Toggle")
bank_account.credit("Paycheck", 100)
bank_account.debit("Groceries", 40)
puts bank_account
puts bank_account
puts "Register:"
bank_account.print_register
