
#Name,Maths,Physics,Chemistry
#Jude,100,95,85
#Gayathri,85,99,92
#Priya,95,92,100
#Hari,97,89,99
#Ruban,87,98,95
#Madhu,85,100,96

BEGIN{ FS = ","}
NR > 1{
        maths[FNR] = $2
        phy[FNR]= $3
        chem[FNR] = $4
}
END{
        mavg = 0
        pavg = 0
        cavg = 0

        for(i in maths){
                mavg += maths[i]
        }
        for(i in phy){
                pavg += phy[i]
        }
        for(i in chem){
                cavg += chem[i]
        }
        mavg = mavg / (NR - 1)
        pavg = pavg / (NR - 1)
        cavg = cavg / (NR - 1 )

        print mavg
        print pavg
        print cavg
}


