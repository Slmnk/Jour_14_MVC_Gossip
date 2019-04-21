class View

    def create_gossip

      puts  "Quel est ton nom, utilisateur?"
      print "> "
      @author = gets.chomp
      puts "Quel est ton potin, #{@author}?"
      print "> "
      @content = gets.chomp

      return params = {
        content: @content,
        author: @author
      }

    end

    def index_gossips(gossips) # que je mette gossips ou all_gossips, le résultat est le même, pourquoi? (je crois à cause Gossip.all dans controller.b ligne 23)

      gossips.each do |truc|
      puts truc.content

      end

    end

    def delete_gossip

      puts "Quel gossip veux-tu détruire? Regardes la liste des gossips et indiques la ligne qui correspond au potin que tu veux supprimer."
      print "> "
      index_to_delete = gets.chomp.to_i
      gossips.delete_at(index_to_delete)
      puts "Parfait, il n'y a plus de rumeurs sur toi, l'internet entier est nettoyé de ton identité. Bonne continuation, inconnu."


    end


end
