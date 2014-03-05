
require_relative 'BankAccount'
require_relative 'BankTransaction'
require 'pry'
require 'CSV'

  purchasing_account=[]
  business_checking=[]
  CSV.foreach('bank_data.csv',headers: true, header_converters: :symbol, converters: :all) do |row|
    if row[3]=="Purchasing Account"
      purchasing_account<<row.to_hash
    else row[3]=="Business Checking"
      business_checking<<row.to_hash
    end
  end





  p_balance=0
  b_balance=0
  CSV.foreach('balances.csv',headers: true) do |row|
    if row[0]=="Business Checking"
        b_balance=row[1].to_i
    else row[0]=="Purchasing Account"
        p_balance=row[1].to_i
    end
  end


transaction_1=BankTransaction.new(purchasing_account[0][:date], purchasing_account[0][:amount], purchasing_account[0][:description], purchasing_account[0][:account])




account_balance=BankAccount.new(purchasing_account, p_balance)


puts account_balance.summary(purchasing_account)





binding.pry






# Date,Amount,Description,Account
