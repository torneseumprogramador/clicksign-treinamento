class Animal
  attr_accessor :nome, :raca, :idade
end

Animal.class_eval do # inclui métodos ou propriedades de instância
  attr_accessor :residencia
end

Animal.instance_eval do # inclui métodos ou propriedades de classe
  def para_todos
    puts "Oláaaaaaaaa !!!"
  end
end

animal = Animal.new
animal.nome = "Cachorro"
animal.raca = "Beagle"
animal.idade = 11
animal.residencia = "Rua teste 10 - SP" # incluido

puts animal.inspect

Animal.para_todos
