class Punto
    attr_reader :x, :y #solo permite leer no escribir 
    def initialize (x, y)
       @x = x
       @y = y
    end       
        def avanzar
            @x += 1
        end
end

#Se llamara la clase de otro archivo
#p1 = Punto.new(2,3)
#puts p1.avanzar


