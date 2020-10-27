require_relative "carta"

class Baraja
    attr_accessor :cartas
    
    def initialize
        @cartas = nuevo_mazo 
       
    end

    def nuevo_mazo
        arr = []
        (1..13).map do |numero|          
            ['C','D','E','T'].map do |pinta|
                arr.push(Carta.new(numero, pinta))                           
            end
        end
        arr
    end

    def barajar
       @cartas = @cartas.shuffle!
    end

    def sacar
        @cartas.pop
    end

    def  repartir
       
        @cartas.pop(5)
        
    end

end



baraja = Baraja.new
puts "baraja desordenada:"
puts baraja.barajar
puts "primera carata aleatoria:"
puts baraja.sacar
puts "reparte 5 cartas:"
puts baraja.repartir


