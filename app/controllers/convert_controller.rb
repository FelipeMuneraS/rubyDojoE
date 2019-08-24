class ConvertController < ApplicationController
    def convert
        render json: {numeroRomano: ConvertNumbers.convert(params[:number].to_i)}
    end
end

class ConvertNumbers
    def self.convert(number)
        $Result = ''
        unidad = ['', 'I', 'II', 'III', 'IV', 'V', 'VI', 'VII', 'VIII', 'IX'];
        decena = ['', 'X', 'XX', 'XXX', 'XL', 'L', 'LX', 'LXX', 'LXXX', 'XC'];
        d = (number / 10).floor % 10
        u = number % 10
        if number >= 100
        $Result = 'C'
        else
            if number >= 10
                $Result = decena[d] + unidad[u]
            else
                $Result = unidad[u]
            end
        end
    end
end