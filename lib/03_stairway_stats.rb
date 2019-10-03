def lancer_des
    nombre = rand(0..6)
    puts nombre
    return nombre
end

def game_rules(nombre, marche)
    i = 1
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
    i = 0
    marche = game_rules(lancer_des, 1)
    while (marche < 10) do
        marche = game_rules(lancer_des, marche)
    i += 1
    end
    puts "Bravo ! Vous êtes top !"
    return i
end

def average_finish_time
    total = 0
    100.times do
        total = total + start_game
    end
    moy = total / 100
    puts "moyenne est #{moy}"
end

average_finish_time
