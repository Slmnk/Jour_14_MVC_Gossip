
class Gossip

  attr_accessor :content, :author

    def initialize(author, content)

      @author = author
      @content = content

    end

    def save

      CSV.open("db/gossip.csv", "a") do |csv|
        csv << [@author, @content]

    end

  end

    def self.all
      # 1)création d'un array vide qui s'appelle all_gossips
      all_gossips = []

      # 2)chaque ligne de ton CSV.each do |ligne|
        # 2-a) gossip_provisoire = Gossip.new(paramètres de la ligne) - permet de créer un objet gossip
        # 2-b) all_gossips << gossip_provisoire - permet de rajouter le gossip provisoire au array
      # end

      CSV.foreach("db/gossip.csv") do |row|
        gossip_provisoire = Gossip.new(row[0], row[1])
        all_gossips << gossip_provisoire

      # 3)return all_gossips - on renvoie le résultat
    end

    return all_gossips

  end

end
