class Person
    attr_accessor :first, :last, :age, :type
    def initialize(first, last, age, type)
        @first_name = first
        @last_name = last
        @age = age
        @type = type
    end
    def birthday
        @age += 1
    end 
=begin
        
    def talk
        if @type == "Student"
            puts "Aquí es la clase de programación con Ruby?" 
        elsif @type == "Teacher"
            puts "Bienvenidos a la clase de programación con Ruby!"
        elsif @type == "Parent"
            puts"Aquí es la reunión de apoderados?"
        end
    end
    def introduce
        if @type == "Student"
            puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
        elsif @type == "Teacher"
            puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
        elsif @type == "Parent"
            puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
        end
    end
=end
end

class Student < Person
    def initialize(first, last, age, type)
        super(first, last, age, type)
    end
    def talk
        puts "Aquí es la clase de programación con Ruby?" 
    end
    def introduce
        puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}." 
    end
end

class Teacher < Person
    def initialize(first, last, age, type)
        super(first, last, age, type)
    end
    def talk
        puts "Bienvenidos a la clase de programación con Ruby!"
    end
    def introduce
        puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
    end
end

class Parent < Person
    def initialize(first, last, age, type)
        super(first, last, age, type)
    end
    def talk
        puts"Aquí es la reunión de apoderados?"
    end
    def introduce
        puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
    end
end



stud = Student.new('Alejandro', 'Meza', 20, "Student")
puts stud.talk
puts stud.introduce

teach = Teacher.new('Gabriela', 'Medina', 40, "Teacher")
puts teach.talk
puts teach.introduce

pare = Parent.new('Juan', 'Meza', 30, "Parent")
puts pare.talk
puts pare.introduce