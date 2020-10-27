class estudiante
    def initialize(notas, nombres)
        @nombres = nombres
        @notas = notas
    end


    def promedio
        @notas.sum / @notas.size.to_f
    
    end
end

estudiante_1 = estudiante.new([4,5,6,7,3])
puts estudiante_1.promedio

