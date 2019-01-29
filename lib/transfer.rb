class Transfer
  attr_accessor :sender, :receiver, :amount, :status

def initialize(sender,receiver, amount,status="pending")
  @sender=sender
  @receiver=receiver
  @amount=amount

  @status=status
end


def valid?
  t1=@sender.valid?
  t2=@receiver.valid?
 if ((t1==true) && (t2==true))
  return true
 else
  return false

end
end


def execute_transaction
  t=self.valid?
  if (t==true)&&(@status=="pending")
    a=@sender.balance
    b=@receiver.balance
@sender.balance=a-@amount
@receiver.balance=b+@amount
@status="complete"
else
puts "Transaction rejected. Please check your account balance."


  end
end


def reverse_transfer
end
end
