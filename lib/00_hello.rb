def say_hello (first_name)
    puts "Bonjour, " + first_name + " !"
end

def ask_first_name
    puts "Bonjour, donne moi ton prénom stp"
    print ">"
    input = gets.chomp
    return input
end

say_hello(ask_first_name)




