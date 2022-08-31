require 'byebug'

# debugger

puts "Digite o nome de classe que você deseja criar"
classe = gets.strip.gsub(/\n/, "")
classe = classe.capitalize

eval("
  class #{classe}
    attr_accessor :nome
  end
")

classe = Object.const_get(classe)
puts classe

classe.class_eval do
  attr_accessor :telefone
end

a = classe.new
a.nome = "teste"
a.telefone = "2343212341"

puts "Classe: #{a.class} valor da propriedade nome #{a.nome} e o telefone #{a.telefone}"

