class Statement

  attr_reader :history

  def initialize
    @history = []
  end

  def add_transaction(transaction)
    history << transaction
  end

  def print
    statement_header
    history.reverse.each do |transaction|
      transaction.class == Deposit ? print_deposit(transaction) : print_withdrawal(transaction)
    end
  end

  private

  def statement_header
    puts "date || credit || debit || balance"
  end

  def print_deposit(transaction)
    puts "#{transaction.date} || #{transaction.amount} || || #{transaction.latest_balance}"
  end

  def print_withdrawal(transaction)
    puts "#{transaction.date} || || #{transaction.amount} || #{transaction.latest_balance}"
  end

end



