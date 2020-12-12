#!/usr/bin/env bash

#
# Colonne Linux: 8
# Colonne Windows: 9
# Colonne MacOS: 10
# Colonne Android: 11
#
#

# We generate the full list
echo -n "Generating Full list"
sort --ignore-case -t, -k1,1 Logiciels\ Radio\ -\ Sheet1.csv| grep -v "^Nom" |  awk -F, '{print $1, "\n\tSystème:",$2,"\n\tFonction:",$3,"\n\tLicence:",$4,"\n\tPrix:",$5,"\n\tURL:",$6,"\n\tÉtat:",$7 ;} ' > Logiciels.txt
echo .

# We generate the Windows list
echo -n "Generating Windows list"
sort --ignore-case -t, -k1,1 Logiciels\ Radio\ -\ Sheet1.csv| awk -F, '{if ( $9 == "X" ) print $1, "\n\tSystème: Windows\n\tFonction:",$3,"\n\tLicence:",$4,"\n\tPrix:",$5,"\n\tURL:",$6,"\n\tÉtat:",$7 ;} ' > LogicielsWindows.txt
echo .

# We generate the Linux list
echo -n "Generating Linux list"
sort --ignore-case -t, -k1,1 Logiciels\ Radio\ -\ Sheet1.csv| awk -F, '{if ( $8 == "X" ) print $1, "\n\tSystème: Linux\n\tFonction:",$3,"\n\tLicence:",$4,"\n\tPrix:",$5,"\n\tURL:",$6,"\n\tÉtat:",$7 ;} ' > LogicielsLinux.txt
echo .

# We generate the MacOS list
echo -n "Generating MacOS list"
sort --ignore-case -t, -k1,1 Logiciels\ Radio\ -\ Sheet1.csv| awk -F, '{if ( $10 == "X" ) print $1, "\n\tSystème: MacOS\n\tFonction:",$3,"\n\tLicence:",$4,"\n\tPrix:",$5,"\n\tURL:",$6,"\n\tÉtat:",$7 ;} ' > LogicielsMacOS.txt
echo .

# We generate the Android list
echo -n "Generating Android list"
sort --ignore-case -t, -k1,1 Logiciels\ Radio\ -\ Sheet1.csv| awk -F, '{if ( $11 == "X" ) print $1, "\n\tSystème: Android\n\tFonction:",$3,"\n\tLicence:",$4,"\n\tPrix:",$5,"\n\tURL:",$6,"\n\tÉtat:",$7 ;} ' > LogicielsAndroid.txt
echo .
