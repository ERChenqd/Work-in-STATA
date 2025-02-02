use "D:\陈尓文\华威大学\Economics（L100）\Notes\Statistics techniques B\Assignment\Submissions\EC124-Group045.dta", clear
tabulate HomoSex
tabulate Ragecat2
tabulate partyfw
drop if HomoSex>=6
drop if HomoSex<=-1
drop if partyfw<=-1
drop if partyfw>=9
summarize HomoSex
graph bar (mean) HomoSex, over (Ragecat2)
graph bar (mean) HomoSex, over (partyfw)
graph bar (mean) HomoSex if Ragecat2<=1, over(partyfw) name(attitudespolitical1834)
graph bar (mean) HomoSex if Ragecat2==2, over(partyfw) name(attitudespolitical3554)
graph bar (mean) HomoSex if Ragecat2==3, over(partyfw) name(attitudespolitical55)
graph combine attitudespolitical1834 attitudespolitical3554 attitudespolitical55, rows(2) cols(2)
ttest HomoSex == 4.413 if Ragecat2==1
tab partyfw
ttest HomoSex == 4.34 if partyfw<=1
ttest HomoSex==4.34 if partyfw==3
by Ragecat2, sort : ttest HomoSex == 4.08 if partyfw<=1
by Ragecat2, sort : ttest HomoSex == 4.34 if partyfw==2
by Ragecat2, sort : ttest HomoSex == 4.34 if partyfw==3
by Ragecat2, sort : ttest HomoSex == 4.34 if partyfw==4
by Ragecat2, sort : ttest HomoSex == 4.34 if partyfw==5
by Ragecat2, sort : ttest HomoSex == 4.34 if partyfw==6
by Ragecat2, sort : ttest HomoSex == 4.34 if partyfw==7
by Ragecat2, sort : ttest HomoSex == 4.34 if partyfw==8
by partyfw, sort : ttest HomoSex == 4.34 if Ragecat2==1
by partyfw, sort : ttest HomoSex == 4.34 if Ragecat2==2
by partyfw, sort : ttest HomoSex == 4.34 if Ragecat2==3
