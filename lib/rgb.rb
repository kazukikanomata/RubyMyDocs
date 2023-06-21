def to_hex(r, g, b)
    #  0,5,2→ '#000000'
    [r , g , b].sum('#') do |n|
        n.to_s(16).rjust(2 , '0')
    end
end

def to_ints(hex)
    r = hex[1..2]
    g = hex[3..4]
    b = hex[5..6]
    [r, g, b].map do |s|
        s.hex
    end
end