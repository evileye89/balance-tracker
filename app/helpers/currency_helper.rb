module CurrencyHelper
    def currency_as_euro(number)
        number_to_currency(number, unit: "€", separator: ",", delimiter: ".", format: "%n%u")
    end
end