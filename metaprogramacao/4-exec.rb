def user_logged
  a = Admin.new
  a.id =1
  a
end

class ActiveRecord
  def save!
    raise "O usuário responsável precisa ser preenchido" if self.writer.nil?
    puts "estou salvando"
  end
end

module Permission
  attr_accessor :writer, :logger

  def save!
    raise "É obrigatório ter um administrador como responsável" if self.writer.nil?

    self.logger = LogModel.new(self.class.to_s, self.writer.id)
    self.logger.save!
    super
  end
end

class LogModel
  def initialize(model, admin_id)
    self.model = model
    self.admin_id = admin_id
  end

  attr_accessor :model, :admin_id

  def save!
    puts "Estou gravando o log com #{self.model} do id #{self.admin_id}"
  end
end

class User < ActiveRecord
  include Permission
  attr_accessor :nome, :raca, :idade
end

class Group < ActiveRecord
  include Permission
  attr_accessor :nome, :raca, :idade
end

class Admin < ActiveRecord
  attr_accessor :id, :nome, :raca, :idade
end

user = User.new
user.writer = user_logged
user.save!

group = Group.new
# group.writer = user_logged
group.save!