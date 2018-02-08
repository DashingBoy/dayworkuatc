#Jimmy the Weasel
#100 Pleasant drive
#san Francisco,ca 12345
#
#Big tony
#200 Incognito Ave
#Suburbia, Wa 67890
#
#Ollir zhang
#Nanjing University
#Gulou,nanjing, 210000

#BEGIN{
#    FS="\n"
#    RS=""
#    OFS=", "
#}
#{
#    print $1,$2,$3
#}

BEGIN{
    FS="\n"
    RS=""
    ORS="" 
}
{
    x=1
    while(x<=NF){
        print $x "\t"
        x++
    }
    print "\n"
}
