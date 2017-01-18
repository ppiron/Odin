Alph = "abcdefghijklmnopqrstuvwxyz"
Alph_cap = "ABCDEFGHIJKLMNPQRSTUVWXYZ"

def find_pos(c)
    c.downcase!
    alph_arr = Alph.split("")
    
    alph_arr.each_with_index do |l, i|
        
        if c == l
            return i
        end
        
    end
    return nil
end

def caesar_cipher(word, n)
    cipher = []
    word = word.split("")
    
    word.each do |c|
        k = find_pos(c)
        
        if k ==  nil
            cipher << c
            next
        end
        
        if c == c.downcase
            cipher << Alph[(n + k) % 26]
        else
            cipher << Alph[(n + k) % 26].upcase
        end
        
    end
    
    return cipher.join("")
    
end

puts caesar_cipher("paolo Pironi!!!^%£$*888", 10)