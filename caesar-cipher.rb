class CaesarCipher

    CAPITAL_Z = 90
    CAPITAL_A = 65
    LOWER_Z = 122
    LOWER_A = 97

    attr_accessor :input, :shift

    def initialize(input, shift)
        @input = input
        @shift = shift
        shift_string(input, shift)
    end

    def shift_string(input, shift)
        output = input.split("").collect{|l| convertIfNecessary(l)}
        puts output.join("")
    end

    def convertIfNecessary(letter)
        letterNumerical = letter.ord
        if letterNumerical >= CAPITAL_A and letterNumerical <= CAPITAL_Z
            return convertWithBoundary(letterNumerical, CAPITAL_A, CAPITAL_Z, shift)
        elsif letterNumerical >= LOWER_A and letterNumerical <= LOWER_Z
            return convertWithBoundary(letterNumerical, LOWER_A, LOWER_Z, shift)
        else
            return letter
        end
    end

    def convertWithBoundary(letterNumerical, lowerBound, upperBound, shift)
        if shift > 26 #get abs if necessary
            shift = shift % 26
        end

        charsFromLower = 0
        if shift >= 0
            if (letterNumerical + shift) > upperBound
                return (lowerBound + ((letterNumerical + shift) - upperBound) - 1).chr
            else
                return (letterNumerical + shift).chr
            end
        else
            if (letterNumerical + shift) < lowerBound
                return (upperBound + (letterNumerical + shift) - lowerBound + 1).chr
            else
                return (letterNumerical + shift).chr
            end
        end
    end   
end


#c = CaesarCipher.new("A", 1)
#c = CaesarCipher.new("Aaa", 1)
#c = CaesarCipher.new("Hello World!", 5)
#c = CaesarCipher.new("Mjqqt, Btwqi!", -5)
#c = CaesarCipher.new("Z", 1)
#c = CaesarCipher.new("Hello World!", 75)
#c = CaesarCipher.new("Hello World!", -29)