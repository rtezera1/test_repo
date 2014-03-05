
require 'pry'


class BankTransaction

  attr_writer :date, :amount, :description, :account

  def initialize(date, amount, description, account)
    @date=date
    @amount=amount
    @description=description
    @account=account
  end

  def debit?
    if @amount<0
      true
    else
      false
    end
  end


  def credit?
    if @amount>0
      true
    else
      false
    end
  end

  def summary
    if debit? == true
       puts "$#{@amount},  DEBIT #{@description}, #{@account}"
     else debit? == false
       puts "$#{@amount},  CREDIT #{@description}, #{@account}"
     end
  end
end




