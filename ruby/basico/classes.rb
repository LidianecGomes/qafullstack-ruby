#Ruby é uma linguagem considerada puramente orientada a objetos
#Porque no Ruby tudo são objetos

#Classe é uma forma de organizar ações do mundo real: Possui atributos e métodos
#Caractéristicas e ações

#Carro (nome, Marca,Modelo,Cor, Quantidade de portas, etc...)
#Ligar, Businar, Parar, Etc

class Carro
    attr_accessor :nome


  def Ligar
    puts "O carro está pronto para iniciar o trajeto"
  end
end

civic = Carro.new
civic.nome = 'Civic'
puts civic.class
puts civic.nome

civic.Ligar
