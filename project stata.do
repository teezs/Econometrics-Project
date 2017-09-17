
. use "C:\Users\txm161530\Downloads\car_fatalities.dta" 

reg mrall beertax unrate yngdrv miles
estat imtest, white

reg mrall beertax unrate yngdrv miles, vce(cluster state)
reg mrall beertax unrate yngdrv miles spircons, vce(cluster state)

reg mrall beertax unrate yngdrv miles spircons perinc jaild comserd sobapt mormon mlda dry vmiles

reg mrall beertax unrate yngdrv miles spircons perinc jaild comserd sobapt dry vmiles

reg mrall beertax unrate yngdrv miles spircons perinc jaild comserd sobapt vmiles




*/final/ Pooled model/

reg mrall beertax unrate miles perinc jaild yngdrv vmiles

*/White to test for heteroskedasticity/

estat imtest, white

*/ Cluster robust standard errors*

reg mrall beertax unrate miles perinc jaild yngdrv vmiles, vce(cluster state)





*/endogeneity

reg mrall beertax unrate miles perinc jaild yngdrv vmiles

reg beertax unrate yngdrv miles perinc jaild sobapt yngdrv vmiles
test sobapt



predict beertax_2

order beertax beertax_2
reg mrall beertax_2 unrate miles perinc jaild yngdrv vmiles





xtset state year
xtreg mrall beertax unrate yngdrv miles, fe 

xtreg mrall beertax unrate yngdrv miles i.year, fe 

testparm i.year

xtreg mrall beertax unrate yngdrv miles i.year, fe vce(cluster state) 
testparm i.year
