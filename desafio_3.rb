class Appointment
    attr_accessor :location, :purpose, :hour, :min
    def initialize(location, purpose, hour, min)

        @location = location
        @purpose = purpose
        @hour = hour
        @min = min
    
    end
end

class MonthlyAppointment < Appointment
    attr_accessor :day
    def initialize(location, purpose, day, hour, min)
        super(location, purpose, hour, min)
        @day = day        
    end
    def occurs_on?(day)
        if @day == day
           puts true
        else
           puts false             
        end
    end
    def to_s
        "Reunión mensual en #{@location} sobre #{purpose} el día #{@day} a las(s) #{@hour}: #{@min}"
    end
end

class DailyAppointment < Appointment
    def initialize(location, purpose, hour, min)
        super(location, purpose, hour, min)
    end
    def occurs_on?(hour, min)
        if @hour == hour && @min == min 
           puts true
        else
           puts false             
        end
    end
    def to_s
        "Reunión diaria en #{@location} sobre #{purpose} a la(s) #{@hour}: #{@min}"
    end
end

class OneTimeAppointment < Appointment
    attr_accessor :day, :month, :year
    def initialize(location, purpose, hour, min, day, month, year)
        super(location, purpose, hour, min)
        @day = day 
        @month = month
        @year = year
    end
    def occurs_on?(day, month, year)
        if @day == day && @month == month && @year == year
           puts true
        else
           puts false             
        end
    end
    def to_s
        "Reunión diaria en #{@location} sobre #{@purpose} el #{@day}/#{@month}/#{@year} a la(s) #{@hour}:#{@min}."
    end
end

Monthly = MonthlyAppointment.new('NASA', 'Aliens', 8, 15, 23)
Daily = DailyAppointment.new('Desafío Latam', 'Educación', 8, 15)
OneTime = OneTimeAppointment.new('Desafío Latam', 'Trabajo', 14, 30, 4, 6, 2019)


puts Monthly.occurs_on?(8) #ejemplo true
puts Daily.occurs_on?(8, 19) #ejemplo false
puts OneTime.occurs_on?(4, 8, 2019) #ejemplo false