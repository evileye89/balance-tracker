module DatesHelper
    def date_as_en_locale(date)
        date.strftime("%Y-%m-%d")      
    end
end