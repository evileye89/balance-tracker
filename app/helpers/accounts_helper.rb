module AccountsHelper
    def calc_balances_per_month(month, balances_per_year)
        value = balances_per_year.find_by(:month => month)
        balance = value.present? ? value.balance : 0
    end

    def calc_balances_per_year(balances_per_year)
        balances_per_year.inject(0) { |sum, item| sum + item.balance }
    end

    def calc_category_per_month(month, bookings)
        bookings_per_month = bookings.select { |booking| booking.booked_at.mon == month}
        bookings_per_month.inject(0) { |sum, item| sum + item.amount }
    end

    def calc_category_per_year(bookings)
        bookings.inject(0) { |sum, item| sum + item.amount } 
    end
end
