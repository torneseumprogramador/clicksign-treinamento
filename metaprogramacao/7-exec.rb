class Teste
  def self.definir(*metodos)
    metodos.each do |metodo|
      define_method(metodo) do 
        puts "metodo em runtime"
      end
    end
  end
end

Teste.definir("metodo1", "metodo2", "metodo3")
a = Teste.new
puts a.methods - Class.methods

a.metodo1
a.metodo2
a.metodo3