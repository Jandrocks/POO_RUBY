#clase usuario (metodo saldo_total)
class Usuario
    attr_accessor :nombre_usario, :cuentas
    def initialize(nombre_usario, cuentas)
        @nombre_usario = nombre_usario
        @cuentas = cuentas
        
    end 

    def saldo_total
        sum = 0
        cuentas.each{|cuenta| sum += cuenta.saldo}
        puts "Total suma en cuentas de #{@nombre_usario} : #{sum}"      
        
    end

end

#clase cuentaBancaria (metodo transferir)
class CuentaBancaria
    attr_accessor :nombre_banco, :numero_cuenta, :saldo
    def initialize(nombre_banco, numero_cuenta, saldo = 0)
        @nombre_banco = nombre_banco
        @numero_cuenta = numero_cuenta
        @saldo = saldo
    end

    def Transferir(monto, cuenta_transferir)
        @saldo = @saldo - monto
        cuenta_transferir.saldo = cuenta_transferir.saldo + monto
             
    end
end

#instanciaciòn cuenta1 de cuentaBancaria
cuenta1 = CuentaBancaria.new("santander", 8888888, 5000)
#instanciaciòn cuenta2 de cuentaBancaria
cuenta2 = CuentaBancaria.new("santander", 9999999, 5000)
#instanciaciòn cuenta3 de cuentaBancaria
cuenta3 = CuentaBancaria.new("santander", 7777777, 2000)

cuenta1.Transferir(5000, cuenta2)
puts "saldo cuenta #{cuenta2.numero_cuenta}: #{cuenta2.saldo}" 
puts "saldo cuenta #{cuenta1.numero_cuenta}: #{cuenta1.saldo}" 
puts "saldo cuenta #{cuenta3.numero_cuenta}: #{cuenta3.saldo}" 

#instanciaciòn de usuario
usuario = Usuario.new("Alejandro",[cuenta1, cuenta2, cuenta3])
puts "nombre: #{usuario.nombre_usario} | saldo: #{usuario.cuentas[1].saldo} | cuenta: #{usuario.cuentas[1].numero_cuenta}" 

puts usuario.saldo_total
