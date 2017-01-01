def caesar(string, number)
    result = ''
    skip = ['!', '?', ' ', ',', '.']
    if number > 26
        number -= 26
    end
    0.upto(string.length-1) do |i|
        if(skip.include?(string[i]))
            result += string[i]
            next
        end
        letter = string[i].ord + number
        if(letter > 122 || (letter > 90 && letter < 97))
            letter -= 26
        end
        letter = letter.chr
        result += letter
    end
    return result
end
puts caesar('Eat some jello, bitch!', 4)
