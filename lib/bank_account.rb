class BankAccount


  attr_accessor :balance, :status
    attr_reader :name
def initialize(name,balance=1000,status="open")
  @name=name.freeze
  @balance=balance
  @status=status
end
def deposit(summ)
@balance=@balance+summ
end

def display_balance
  puts "Your balance is $#{@balance}."
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
