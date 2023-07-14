#defino la clase
class Person
  # Defino el accessor para activar los métodos getter y setter
  attr_accessor :first_name, :last_name, :age

  #defino el constructor y sus variables de instancias
  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end
end

def birthday
  @age += 1
end


# 1. Identificar las posibles subclases que aparecen en elcódigo a refactorizar.Cada una de ella contendrá los métodos correspondientes,talk e introduce.

# Hint: Teacher sería una clase.

# 2. A partir de la refactorización del código se debe generar herencia de ancestros aplicando la sintaxis de Ruby, esto para la subclases.


class Student < Person
  def talk
    puts 'Aquí es la clase de programación con Ruby?'
  end

  def introduce
    puts "Hola profesor, mi nombre es #{@first_name} #{@last_name}."
  end

  def birthday
    puts "Tengo #{@age} años."
  end



end

class Teacher < Person
  def talk
    puts 'Si, bienvenidos a la clase de programación con Ruby!'
  end

  def introduce
    puts "Hola alumnos, mi nombre es #{@first_name} #{@last_name} y seré su profesor."
  end
end

class Parent < Person
  def talk
    puts '¿Aquí es la reunión de apoderados?'
  end

  def introduce
    puts "Hola, soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
  end
end





# 4. Al generar las instancias de cada objeto, se muestra un mensaje en función del método que sea invocado.

student1 = Student.new('Alejandro', 'Piñango', 52)
teacher1 = Teacher.new('Brayan', 'Díaz', 30)
student1.talk
teacher1.talk
# 3. El método introduce al imprimir el mensaje muestra el nombre y apellido haciendo uso de interpolación de variables de instancia.
student1.introduce
student1.birthday
teacher1.introduce

puts
puts "---------------------------"
puts "Hola #{student1.first_name}, mi nombre es #{teacher1.first_name} #{teacher1.last_name}"
puts "---------------------------"
