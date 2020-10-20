class Mascota
    attr_accessor :nombre #get and set de nombre
    def initialize(nombre)
        @nombre = nombre
    end
end

primera_mascota = Mascota.new("gala")
puts primera_mascota.nombre