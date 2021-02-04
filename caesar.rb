def getAnswer(question)
    print question
    gets.chomp
end

def coddingEnDowncase(sym, key)
    sym = sym.ord
    sym = (sym + key % 26)
    if (sym > 122) 
        sym = 97 + (sym - 122) - 1
    end    
    sym = sym.chr
    sym    
end

def coddingEnUpcase(sym, key)
    sym = sym.ord
    sym = (sym + key % 26)
    if (sym > 90) 
        sym = 65 + (sym - 90) - 1
    end    
    sym = sym.chr
    sym    
end


def coddingRuUpcase(sym, key)
    sym = sym.ord
    sym = 'Е'.ord if sym == 'Ё'.ord
    sym = (sym + key % 32)
    if (sym > 1071) 
        sym = 1040 + (sym - 1071) - 1
    end
    sym = sym.chr("UTF-8")
    sym
end


def coddingRuDowncase (sym, key)
    sym = sym.ord
    sym = 'е'.ord if sym == 'Ё'.ord
    sym = (sym + key % 32)
    if (sym > 1103)
        sym = 1072 + (sym - 1103) - 1
    end
    sym = sym.chr("UTF-8")
    sym
end

def caesar(string, key)
    newStr = ""


    string.each_char do |char|

        if ((65..90).include?(char.ord))
            newStr += coddingEnUpcase(char, key.to_i)

        elsif ((97..122).include?(char.ord))
            newStr += coddingEnDowncase(char, key.to_i)
        elsif((1040..1071).include?(char.ord))
            newStr += coddingRuUpcase(char, key.to_i)
        elsif ((1072..1103).include?(char.ord))
            newStr += coddingRuDowncase(char, key.to_i)
        else
            newStr += char
        end
    end
    return  newStr
end




