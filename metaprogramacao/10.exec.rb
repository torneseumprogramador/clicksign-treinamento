require 'byebug'

module UmModulo
  def self.included(klass)
    puts "Modulo #{self} incluido em #{klass}"
  end
  def self.extended(klass)
    puts "Modulo #{self} extendido em #{klass}"
  end

  def instancia
    "metodo de instancia"
  end
  def self.de_classe
    "metodo de classe"
  end
end

class Teste
  include UmModulo
end

a = Teste.new
a.instancia

class Teste2
  extend UmModulo
end

Teste2.instancia
