require 'pry'


class BankAccount
  attr_reader :array, :hash
  def initialize(array, balance)
    @balance=balance
    @array=array
  end

  def starting_balance(balance)
      puts balance
  end

  def ending_balance(array)
      counter=0
      array.each do |item|
        counter=+item[:amount]
      end
      puts counter
  end


  def summary(array)
    summary_array=[]
    array.each do |transaction|
      summary_array<<transaction
    end
  end
end
