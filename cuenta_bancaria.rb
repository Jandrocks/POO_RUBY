class CuentaBancaria
    attr_accessor :nombre_de_usuario, :nuemero_de_cuenta, :tipo
    def initialize(nombre_de_usuario, nuemero_de_cuenta, tipo = 0)
        @nombre_de_usuario = nombre_de_usuario
        @nuemero_de_cuenta = nuemero_de_cuenta
        @tipo = tipo
        
        raise RangeError, 'Cuenta debe tener 8 digitos' if (@nuemero_de_cuenta.digits).size != 8 
        raise RangeError, 'debes ingresr tipo 1 o 0' if  @tipo != 0 && @tipo != 1
    end

    def nuemero_de_cuenta()
        if @tipo == 1
            puts "Nombre: #{nombre_de_usuario} ""|"" Cliente VIP: #{@tipo}-#{@nuemero_de_cuenta}"
        else
            puts "Nombre: #{nombre_de_usuario} ""|"" Cliente: #{@tipo}-#{@nuemero_de_cuenta}"
        end
    end
end

p = CuentaBancaria.new("alejandro",12345678, 0)
p.nuemero_de_cuenta

