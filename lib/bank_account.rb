class BankAccount


  attr_accessor :balance, :status
    attr_reader :name
def initialize(name,balance,status="open")
  @name=name
  @balance=balance
  @status=status
end
def deposit(summ)
@balance=@balance+summ
end

def display_balance
  a1=@balance
  puts "Your balance is $#{a1}."
end

def valid?
 if (@status=="open")&&(@balance>0)
   return true
 else
   return false
 end
end

def close_account
@status="closed"
end
end
