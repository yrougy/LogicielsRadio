#!/usr/bin/env bash

# We generate the full list
echo -n "Generating Full list"
sort --ignore-case -t, -k1,1 Logiciels\ Radio\ -\ Sheet1.csv| awk -F, '{print $1, "\n\tSystème:",$2,"\n\tFonction:",$3,"\n\tLicence:",$4,"\n\tPrix:",$5,"\n\tURL:",$6,"\n\tÉtat:",$7 ;} ' > Logiciels.txt
echo .


# We generate the Windows list
echo -n "Generating Windows list"
sort --ignore-case -t, -k1,1 Logiciels\ Radio\ -\ Sheet1.csv| awk -F, '{if ( $2 == "Windows" || $2 =="Multiplateforme" ) print $1, "\n\tSystème:",$2,"\n\tFonction:",$3,"\n\tLicence:",$4,"\n\tPrix:",$5,"\n\tURL:",$6,"\n\tÉtat:",$7 ;} ' > LogicielsWindows.txt
echo .

# We generate the Linux list
echo -n "Generating Linux list"
sort --ignore-case -t, -k1,1 Logiciels\ Radio\ -\ Sheet1.csv| awk -F, '{if ( $2 == "Linux" || $2 =="Multiplateforme" ) print $1, "\n\tSystème:",$2,"\n\tFonction:",$3,"\n\tLicence:",$4,"\n\tPrix:",$5,"\n\tURL:",$6,"\n\tÉtat:",$7 ;} ' > LogicielsLinux.txt
echo .

# We generate the MacOS list
echo -n "Generating MacOS list"
sort --ignore-case -t, -k1,1 Logiciels\ Radio\ -\ Sheet1.csv| awk -F, '{if ( $2 == "MacOS" || $2 =="Multiplateforme" ) print $1, "\n\tSystème:",$2,"\n\tFonction:",$3,"\n\tLicence:",$4,"\n\tPrix:",$5,"\n\tURL:",$6,"\n\tÉtat:",$7 ;} ' > LogicielsMacOS.txt
echo .
