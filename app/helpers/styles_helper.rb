module StylesHelper
    def css_currency_bg(number)
        return if number == 0
        number.positive? ? 'bg-success' : 'bg-danger'
    end
end