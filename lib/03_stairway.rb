#application des regles selon le score du dé
def lancer(chiffre,marche_actuelle)
    if chiffre == 5 || chiffre == 6
        marche_actuelle = [1,marche_actuelle + 1].max
        puts "Tu es monté d'une marche et tu es maintenant marche n°#{marche_actuelle}"
    elsif chiffre == 1
        marche_actuelle = [1,marche_actuelle - 1].max
        puts "Tu es desdendu d'une marche et tu es maintenant marche n°#{marche_actuelle}"
    else
        puts "Tu n'as pas bougé"
    end
    return marche_actuelle
end

#suivi du jeu, avec demande de jet tant que la marche 6 n'est pas atteinte
def jeu
    marche = 1
    puts "C'est parti, tu es sur la marche 1 et tu vas lancer ton dé"
    while marche < 10 
        puts "tu as lancé le dé, quel chiffre est sorti ?"
        chiffre_de = Integer(gets.chomp)
        until chiffre_de <= 6 && chiffre_de >= 1
            puts "Merci de rentrer un chiffre entre 0 et 6"
            chiffre_de = Integer(gets.chomp)
        end
        marche = lancer(chiffre_de,marche)
    end
end

#lancer le jeu en mode normal
def perform
    jeu
    puts "Bravo tu as gagné !!!"
end

#lancer le jeu en mode automatique jusqu'à victoire
def lance_auto
    marche = 1
    times_played = 0
    puts "C'est parti, tu es sur la marche 1 et tu vas lancer ton dé"
    while marche < 10 
        puts "tu as lancé le dé, quel chiffre est sorti ?"
        chiffre_de = rand(1..6)
        times_played += 1
        until chiffre_de <= 6 && chiffre_de >= 1
            puts "Merci de rentrer un chiffre entre 0 et 6"
            chiffre_de = rand(1..6)
            times_played += 1
        end
        marche = lancer(chiffre_de,marche)
    end
    puts "Tu as joué #{times_played} fois pour gagner la partie"
    return times_played
end

#récupérer les statistiques de jeu sur 100 parties
def average_finish_time
    total_times = 0
    simulation_numero = 0
    100.times do
        total_times =  total_times + lance_auto
        simulation_numero = simulation_numero + 1
    end
    average = total_times / simulation_numero
    puts "Sur 100 simulations du jeu, le nombre de lancés de dés moyen pour gagner est de #{average} fois."     
end

#perform
#lance_auto
average_finish_time






