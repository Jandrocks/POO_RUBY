class Persona
    attr_accessor:nombre, :edad, :redes_sociales
    def initialize(nombre, edad, redes_sociales)
        @nombre = nombre
        @edad = edad
        @redes_sociales = redes_sociales
    end
end
class RedSocial
    attr_accessor:tipo, :nombre_usario
        def initialize(tipo, nombre_usuario)
        @tipo = tipo
        @nombre_usuario = nombre_usuario
        end
end

rs1 = RedSocial.new(:facebook, 'lop2030')
rs2 = RedSocial.new(:twitter, '@lop20340')

p1 = Persona.new('Alejandro', 30, [rs1, rs2])

puts p1.redes_sociales
puts p1.nombre
puts p1.edad

