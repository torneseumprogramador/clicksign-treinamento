require 'byebug'

class Danilo
  def self.method_missing(nome, parametro)
    debugger
    nome = nome.to_s

    if nome =~ /busca_por_/
      puts "Bucando no arquivo por #{nome.gsub("busca_por_", "")}, com o valor #{parametro}"
      return
    end

    puts "Metodo de classe #{nome}, não exite na classe #{self}"
  end

  def method_missing(nome)
    debugger
    nome = nome.to_s
    File.open("db.csv") do |arquivo|
      arquivo.each do |linha|
        campos = linha.split(";")
        debugger
        
        unless campos.include?(nome)
          puts "Campo #{nome}, não existe no csv db.csv"
        end

        break
      end
    end

    return nil
  end
end

# da = Danilo.new
# da.xxxx
# da.nome
# da.cxxccxxc

Danilo.xxx("sss")
Danilo.busca_por_nome("ddddd")