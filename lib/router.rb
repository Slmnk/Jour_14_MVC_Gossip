$:.unshift File.expand_path("./../lib", __FILE__)
require 'controller'

class Router

attr_accessor :controller

  def initialize
    @controller = Controller.new
  end

  def perform

    puts "BIENVENUE DANS THE GOSSIP PROJECT!"

    while true

      puts "Tu veux faire quoi jeune mouss?"
      puts "1. Je veux créer un gossip."
      puts "2. Je veux la liste de tous les gossips."
      puts "3. Je veux détruire un gossip"
      puts "4. Je veux quitter cette appli de merde."
      params = gets.chomp.to_i

      case params
      when 1
        puts "Tu as choisi de créer un gossip, sacrée commère que tu es. :')"
        @controller.create_gossip

      when 2
        puts "Tu as choisi de voir la liste des gossips."
        @controller.index_gossips

      when 3
        puts "Tu as choisi de détruire un gossip."
        @controller.delete_gossip

      when 4
        puts "Tu as choisi de quitter l'appli. On s'capte boloss."
        break

      else
        puts "Tu sais pas lire ou quoi? J't'ai dit 1 ou 4."
      end

    end

  end

end
