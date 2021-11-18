#@eidepozo

def abrapalabrx(palabra)
    palabra = palabra.gsub(/[^a-zA-Z]/, '').upcase
    frec = palabra.each_char.with_object(Hash.new(0)) {|c, m| m[c]+=1}
    suma = 0
    #puts frec
    for i in (0..frec.length()-1)
        keyname = frec.key(frec.values.max)
        suma += (26 - i)*(frec[keyname])
        frec = frec.except(keyname)
        #puts frec
    end
    puts "Para la palabra "+ palabra+ " el valor máximo es: "+suma.to_s
end

start = true
while start do
    puts "1: Iniciar \nPara salir presione cualquier tecla."
    val = gets.chomp
    case val
        when '1'
            puts "Ingrese palabra: "
            pal = gets.chomp
            abrapalabrx(pal)
        else
            puts "Adios"
            start = false
        end
end