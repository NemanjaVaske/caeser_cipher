#Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string

def caesar_cipher(string, shift_factor)
    #character to ascii
    ascii = string.chars.map{ |elem| elem.ord}
    
    shifted_string = ascii.map do |elem|
        #only letters will be shanged
         if (elem).between?(65,90) || (elem).between?(97,122)
            #ckecking is it shifted between (A..Z) and (a..z)
            if(elem + shift_factor).between?(65,90)  || (elem + shift_factor).between?(97,122)
                elem + shift_factor
            else elem + shift_factor - 26
            end
        else elem
        end  
    end 
    #back to string
    result = shifted_string.map{ |elem| elem.chr }.join
    p result
end

caesar_cipher("What a string",5)
caesar_cipher("Something different!",3)