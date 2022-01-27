module StylesHelper
    def css_currency_bg(number)
        return if number == 0
        number.positive? ? 'bg-positive' : 'bg-negative'
    end
end