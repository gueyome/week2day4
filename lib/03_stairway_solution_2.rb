def lancer_des
    puts "lance les dés"
    nombre = Integer(gets.chomp)
    
    while (nombre < 1 || nombre > 6) do
    puts "rejoue, le chiffre doit être compris entre 1 et 6."
    nombre = Integer(gets.chomp)
    end
    return nombre
end

def game_rules(nombre, marche)
        if nombre > 4
            marche += 1
            puts "Vous avancez d'une marche. Vous êtes à la marche #{marche}."
        elsif nombre == 1
            marche -= 1
            puts "Vous reculez d'une marche. Vous êtes à la marche #{marche}."
        else 
            puts "Vous restez à votre marche sans avancer ou reculer."
        end
        return marche
    end
    
def start_game
        marche = game_rules(lancer_des, 1)
        while (marche < 10) do
            marche = game_rules(lancer_des, marche)
        end
    puts "Bravo ! Vous êtes top !"
end

start_game