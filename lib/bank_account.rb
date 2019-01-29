class BankAccount
  attr_accessor :name, :balance, :status
def initialize(name,balance=1000,status='open')
  @name=name
  @balance=balance
  @status=status
end
def deposit(sum)
@balance=@balance+sum
end

def display_balance
  puts "Your balance is $#{@balance}."
end

def valid?
 if (@status=="open")&&(balance>0)
   return true
 else
   return false
 end
end

def close_account
@status="closed"
end
end
