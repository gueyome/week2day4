def signup 
    puts "Définissez un mot de passe svp"
    password = gets.chomp
    return password
end

def login (password_defined)
    puts "Entrez votre mot de passe svp"
    input = gets.chomp
    until input == password_defined do
        puts "Votre mot de passe n'est pas correct. Merci de le resaisir"
        input = gets.chomp
    end
    puts "Bravo, vous êtes connecté"
end

def welcome_screen 
    puts "Bienvenue dans ta zone secrète !"
    puts "Jay doit s'acheter des chaussures de jujitsu ce soir."
    puts "Guillaume doit racheter du cassoulet ce soir."
    puts "Kim doit fucking commencer les katas"
end

def perform
login(signup)
welcome_screen
end

perform



