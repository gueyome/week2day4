def full_pyramid

    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    print ">"
    nombre = gets.chomp.to_i
    lines = 1

    while lines <= nombre
        
            (nombre-lines).times do
                print " "
            end
            (2*lines - 1).times do
                print "#"
            end
        lines = lines + 1
        puts ""
    end
end

def wtf_pyramid

    puts "Salut, bienvenue dans ma super pyramide d'Alexandrie ! Combien d'étages veux-tu ? Un nombre impair stp !"
    print ">"
    nombre = gets.chomp.to_i
    
    until nombre%2 == 1 do
        puts "Salut, bienvenue dans ma super pyramide d'Alexandrie ! Combien d'étages veux-tu ? Un nombre impair stp !"
        print ">"
        nombre = gets.chomp.to_i
    end
    
    lines = 1

    while lines <= (nombre/2 + 1)    
        (nombre-lines).times do
            print " "
        end
        (2*lines - 1).times do
            print "#"
        end
    lines = lines + 1
    puts ""
    end

    while lines > 0
        (nombre-lines).times do
            print " "
        end
        (2*lines - 1).times do
            print "#"
        end
    lines = lines - 1
    puts ""
    end
     
end

wtf_pyramid
