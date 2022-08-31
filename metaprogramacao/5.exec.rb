a = lambda do |p|
  puts "Neste sentido, [[[#{p}]]] a mobilidade dos capitais internacionais ainda não demonstrou convincentemente que vai participar na mudança da gestão inovadora da qual fazemos parte."
end
a.call("danilo")

class User 
  attr_accessor :name, :lastname
end

user = User.new
user.name = "Jhon"

dado_do_banco = "user.name"

o_nome = user.send("name")

puts "====#{o_nome}===="

eval("puts #{dado_do_banco}")