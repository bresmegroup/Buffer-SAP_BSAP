s=1

while [ $s -le 20 ]

do
#p=` expr $p + 1 `
gmx sasa -f prod100-200-forsap.xtc -s prod.tpr -surface -output -o sasa-hist${s} -n hist-sasa.ndx -probe 0.2 -b 100000 -e 110000 -dt 20 < input-hist${s}
echo ${s}
s=` expr $s + 1 `
done
echo All done




#sed -i -e "1,18d" sasa-0.xvg
#sed -i -e "1,18d" sasa-1.xvg
#sed -i -e "1,18d" sasa-2.xvg
#sed -i -e "1,18d" sasa-3.xvg
#sed -i -e "1,18d" sasa-4.xvg
#sed -i -e "1,18d" sasa-5.xvg
#sed -i -e "1,18d" sasa-6.xvg


#cat sasa-0.xvg sasa-1.xvg sasa-2.xvg sasa-3.xvg sasa-4.xvg sasa-5.xvg sasa-6.xvg > sasa0-6.xvg
#gmx trjconv -f prod0-6.xtc -s prod.tpr -pbc mol -center -o prod-centered.xtc -n chain-hist.ndx

