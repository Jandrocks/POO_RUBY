class Mascotas    
    def get_nombre #metodo que muestra la mascota GET
        @get_nombre
    end

    def set_nombre(nombre) #metodo que obtiene el nombre la mascota SET
        @set_nombre = nombre
    end
end

m1 = Mascotas.new #Instaciamos la CLase MAscota
m1.set_nombre("GALA") #seteamos el nombre
m1.get_nombre #obtenemos el nombre



