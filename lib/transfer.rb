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
end
end
