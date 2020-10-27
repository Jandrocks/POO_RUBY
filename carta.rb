class Carta
    attr_accessor :numero, :pinta 
    
    def initialize(numero, pinta)
        @numero = numero
        @pinta = pinta
    end

    #transforma a String las variables del metodo
    def to_s
      "#{@numero}, #{pinta}"
    end

end

  i = 0
  intentos = 5

  while i < intentos
    arr =['C','D','E','T'].sample
    ran_num = Random.rand(1..13)
    p = Carta.new(ran_num,arr)
    p.numero 
    p.pinta
    #puts "carta:#{p.numero}"" de ""#{p.pinta}"  
    i += 1
  end

