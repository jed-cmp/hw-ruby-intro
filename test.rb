class Account
    def initialize(name, balance = 0)
        @name = name
        @balance = balance
    end

    def showBalance
        puts "Hello #{@name}, your account balance is #{@balance}"
    end
end


newBank1 = Account.new('Chase', 12345)
newBank2 = Account.new('JPMorgan', 12345)
newBank3 = Account.new('Fidelity', 12345)
newBank4 = Account.new('Bank of America', 12345)

Banks = Array.new()

Banks.push(newBank1)
Banks.push(newBank2)
Banks.push(newBank3)
Banks.push(newBank4)

Banks.each { |bank| bank.showBalance }








