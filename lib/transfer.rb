class Transfer
  attr_accessor :sender, :receiver, :amount, :status
  attr_reader :name
def initialize(sender,receiver, amount,status="pending")
  @sender=sender
  @receiver=receiver
  @amount=amount

  @status=status
end
def deposit(summ)
@balance=@balance+summ
end

def display_balance
  puts "Your balance is $#{@balance}."
end

def valid?
 if (@sender.valid?==true)&&(@receiver.valid?==true)
   return true
 else
   return false

end
end


def execute_transaction
end
end
