/* * module * 
% This file contains the definitions for the objects in a household
% To create a new world, simply change the object definitions as
% described below (or in manual)
%
% *******Object definitions*******
%.
% Use the label_type_props(label,colcode,[property1,property2,etc.]]).
% label is whats used to refer to the object in the running world
% colcode is whats used to refer to the object for initialization (see world.pl)
%
%
*/


((vtActionTemplate(AT)/get_functor(AT,F)==>vtVerb(F))).
%(vtVerb(F)/name_text_now(F,Txt)==>mudKeyword(F,Txt)).
%(tCol(F)/name_text_now(F,Txt)==>mudKeyword(F,Txt)).

end_of_file.



% ==================================================
% typeProps Descriptions
% ==================================================
genls(tBed, tBedRoomFurnature).
genls(tStandTable, tBedRoomFurnature).
genls(tDresser, tBedRoomFurnature).
genls(tBook, tReadAble).

genls(tNani, tArt).
genls(tNani, tWashAble).
genls(tEnvelope, tOfficeItem).
genls(tStamp, tOfficeItem).
genls(tKey, tOfficeItem).

genls(tOfficeItem, tItem).
genls(tLightSwitch, tWallFurnature).
genls(tComputer, tOfficeFurnature).
genls(tBroccoli, tFood).
genls(tCandle,tPortableDevice).
genls(tFlashlight, tPortableDevice).
genls(tDesk, tOfficeRoomFurnature).
genls(tApple, tFood).
genls(tPants, tWearAble).
genls(tNani, tCarryAble).
genls(tPajamas, tClothing).
genls(tShirt, tClothing).
genls(tCoat, tClothing).
genls(tPants, tClothing).
genls(tCoffee, tLiquid).
genls(tCoffeeCup, tLiquidContainer).
genls(tPillow, tBedding).
genls(tBlanket, tBedding).                                                              
genls(tBedding, tFoldAble).
genls(tWashingMachine, tDeviceFurnature).
genls(tTable, tFurnature).

genls(tTable, tFurnatureMoveAble).

genls(tTable, tHasSurface).
genls(tSofa, tLivingRoomFurnature).
genls(tEasyChair, tLivingRoomFurnature).
genls(tEasyChair, tSitAble).
genls(tCoffeeTable, tLivingRoomFurnature).
genls(tBookcase, tWallFurnature).
genls(tDrawer, tContainer).
genls(tDrawer, tOpenAble).
genls(tDrawer, tCloseAble).
genls(tDrawer, tPartofFurnature).
genls(tTopDrawer, tPartofFurnature).
genls(tMiddleDrawer, tPartofFurnature).
genls(tBottomDrawer, tPartofFurnature). 
 % mdefault(genls(tHousePlant, tPartofObj)).
genls(tPlanter, tContainer). 
genls(tGueridon, tLivingRoomFurnature).
genls(tGardenPlant, tOutdoorFurnature).

genls(tNani,tTeddybear).
genls(tTeddybear,tTreasure).

genls(tBathTub,tBathRoomFurnature).
genls(tShower,tBathRoomFurnature).
genls(tToilet,tBathRoomFurnature).
genls(tSink,tBathRoomFurnature).
genls(tKitchenSink,tKitchenFurnature).
genls(tFridge,tKitchenFurnature).
genls(tStove,tKitchenFurnature).
genls(tKitchenCounter,tKitchenFurnature).
genls(tOfficeRoomFurnature,tFurnature).
genls(tBathRoomFurnature,tFurnature).
genls(tKitchenFurnature,tFurnature).
genls(tLivingRoomFurnature,tFurnature).
genls(tOutdoorFurnature,tFurnature).

typeProps(tCandle,[mudColor(vBlue),mudSize(vSmall),mudShape(vTriangular),mudMaterial(vWax),mudTexture(vSticky)]).
typeProps(tRedApple,[mudColor(vRed),mudSize(vSmall),mudShape(vRound),isa(tFruit),mudTexture(vSmooth)]).
typeProps(tGreenApple,[mudColor(isEach(vGreen,vPastel)),mudSize(vSmall),mudShape(vRound),isa(tFruit),mudTexture(vSmooth)]).
typeProps(tTable,[mudColor(isEach(vBlue,vWhite)),mudSize(vLarge),mudShape(vOval),mudMaterial(vWood),mudTexture(isEach(vBumpy,vIrregular)),mudWeight(50)]).
typeProps(tPillow,[mudColor(vWhite),mudSize(vMedium),mudShape(vRectangular),mudMaterial(isEach(vCotton,vFlannel)),mudTexture(isEach(vFluffy,vSoft))]).
typeProps(tBlanket,[mudColor(isEach(vGreen,vDark)),mudSize(isEach(vLarge,vBulky)),mudShape(vRectangular),mudMaterial(vRayon),mudTexture(isEach(vPlush,vSoft))]).                                                              
typeProps(tStandTable,[mudColor(isEach(vBlack,vShiney)),mudSize(vMedium),mudShape(isEach(vCubular,vRectangular)),mudMaterial(vWood),mudTexture(vSmooth),mudWeight(25)]).
typeProps(tPajams,[mudColor(isEach(vBlue,vPastel)),mudSize(isEach(vMedium,vFits)),mudShape(vUnique),mudMaterial(isEach(vCotton,vRayon)),mudTexture(vSoft)]).
typeProps(tShirt,[mudColor(vBlack),mudSize(isEach(vMedium,vFits)),mudShape(isLikeFn(mudShape,tTorso)),mudMaterial(vCotton),mudTexture(isEach(vSoft,vThreadbare))]).
typeProps(tFlashlight,[mudColor(vYellow),mudSize(isEach(vMedium,vSmall)),mudShape(vCylindrical),mudMaterial(vPlastic),mudTexture(vRibbed)]).
typeProps(tKey,[mudColor(vSilver),mudSize(isEach(vSmall,vTiny)),mudShape(vUnique),mudMaterial(vMetal),mudTexture(isEach(vRidged,vBumpy))]).
typeProps(tEnvelope,[mudColor(vWhite),mudSize(vSmall),mudShape(vRectangular),mudMaterial(vPaper),mudTexture(vSmooth)]).
typeProps(tDesk,[mudColor(isEach(vBrown,vShiney)),mudSize(vLarge),mudShape(isEach(vCubular,vRectangular)),mudTexture(isEach(vSmooth,vRidged)),mudWeight(175)]).
typeProps(tWashingMachine,[mudColor(vWhite),mudSize(vLarge),mudShape(isEach(vCubular,vSquare)),mudMaterial(vMetal),mudTexture(vSmooth),mudWeight(125)]).
typeProps(tBroccoli,[mudColor(vGreen),mudSize(vSmall),mudShape(isLikeFn(mudShape,tTree)),isa(tVegetable),mudTexture(isEach(vPorous,vBumpy))]).                                                                    
typeProps(tComputer,[mudColor(vGrey),mudMaterial(vPlastic),mudShape(isEach(vCubular,vRectangular)),mudSize(vMedium),mudTexture(vSmooth)]).
typeProps(tStamp,[mudColor(vPolychromatic),mudSize(isEach(vTiny,thin)),mudShape(vSquare),mudMaterial(vPaper),mudTexture(isEach(vSmooth,vSticky))]).
typeProps(tCoat,[mudColor(vBlack),mudSize(isEach(vMedium,vFits)),mudShape(isLikeFn(mudShape,tTorso)),mudMaterial(isEach(vWool,vCotton,vRayon)),mudTexture(vCoarse)]).
typeProps(tPants,[mudColor(vBlack),mudSize(isEach(vMedium,vFits)),mudShape(isLikeFn(mudShape,tAss)),mudMaterial(vDenim),mudTexture(vCoarse)]).
typeProps(tNani,[mudColor(vBrown),mudColor(vWhite),mudSize(vMedium),mudShape(isLikeFn(mudShape,tTeddybear)),mudMaterial(vPlush),mudTexture(isEach(vFuzzy,vSoft))]).
typeProps(tLightSwitch,[mudColor(vCream),mudSize(vSmall),mudShape(vRectangular),mudMaterial(vPlastic),mudTexture(vSmooth)]).

:- do_gc.

typeProps(tBall,[mudColor(vRed),mudSize(vMedium),mudShape(vSpherical),mudMaterial(vRubber),mudTexture(vBumpy)]).
typeProps(tCoffee,[mudColor(isEach(vBlack,vBrown)),mudSize(vSmall),mudShape(vFluid),mudMaterial(tLiquid),mudTexture(vWet)]).
typeProps(tCoffeeCup,[mudColor(vBlack),mudColor(vBrown),mudSize(vSmall),mudShape(vCuplike),mudMaterial(vGlass),mudTexture(vSmooth)]).
typeProps(tSofa,[mudColor(isEach(vBlue,vDark)),mudSize(isEach(vLarge,vWide,vLong)),mudShape(vPolyhedral),mudMaterial(isEach(vPoplin,vWood)),mudTexture(vRibbed),mudWeight(125)]).
typeProps(tEasyChair,[mudColor(vBlue),mudSize(isEach(vLarge,vNarrow)),mudShape(vPolyhedral),mudMaterial(isEach(vPoplin,vWood)),mudTexture(vRibbed),mudWeight(75)]).
typeProps(tCoffeeTable,[mudColor(isEach(vBrown,vShiney)),mudSize(vMedium),mudShape(vCircular),mudMaterial(vWood),mudTexture(vSmooth),mudWeight(35)]).
typeProps(tGreenBook,[mudColor(vGreen),mudColor(vWhite),mudColor(vBlack),mudSize(vSmall),mudShape(isEach(vCubular,vRectangular)),mudMaterial(vPaper),mudTexture(vSmooth)]).
typeProps(tPinkBook,[mudColor(vPink),mudColor(vWhite),mudColor(vBlack),mudSize(vSmall),mudShape(isEach(vCubular,vRectangular)),mudMaterial(vPaper),mudTexture(vSmooth)]).
typeProps(tBookcase,[mudColor(isEach(vBrown,vDark,vShiney)),mudSize(vLarge),mudShape(isEach(vSquare,vConcavePolyhedron)),mudMaterial(vWood),mudTexture(vSmooth),mudWeight(60)]).
typeProps(tDresser,[mudColor(isEach(vBrown,vShiney)),mudSize(vLarge),mudShape(isEach(vRectangular,vPolyhedral)),mudMaterial(vWood),mudTexture(vSmooth),mudWeight(45)]).
typeProps(tTopDrawer,[mudColor(isEach(vBrown,vShiney)),mudSize(vMedium),mudShape(isEach(vRectangular,vConcavePolyhedron)),mudMaterial(vWood),mudTexture(vSmooth)]). 
typeProps(tMiddleDrawer,[mudColor(isEach(vBrown,vShiney)),mudSize(vMedium),mudShape(isEach(vRectangular,vConcavePolyhedron)),mudMaterial(vWood),mudTexture(vSmooth)]).
typeProps(tBottomDrawer,[mudColor(isEach(vBrown,vShiney)),mudSize(vMedium),mudShape(isEach(vRectangular,vConcavePolyhedron)),mudMaterial(vWood),mudTexture(vSmooth)]).
typeProps(tPlanter,[mudColor(isEach(vPastel,vBlue)),mudSize(vMedium),mudShape(isEach(vCylindrical,vTrapezohedron)),mudMaterial(vClay),mudTexture(vAbrasive),mudWeight(15)]).
typeProps(tHousePlant,[mudColor(vGreen),mudSize(vMedium),mudShape(vAnthuriumCrystallinum),mudMaterial(vPlantTissue),mudTexture(vSmooth)]).
typeProps(tGueridon,[mudColor(isEach(vBrown,vShiney)),mudSize(vMedium),mudShape(vCircular),mudMaterial(vWood),mudTexture(vSmooth),mudWeight(25)]).		 

typeProps(tTeddybear,[mudColor(vNatural),mudShape(vUnique)]).

mudLabelTypeProps("tr",tTree,[mudHeight(3),mudWeight(4)]).
mudLabelTypeProps("rk",tRock,[mudHeight(2),mudWeight(4)]).
mudLabelTypeProps("pt",tPit,[mudHeight(-1),mudWeight(4)]).
 mudLabelTypeProps("ot",tPowerOutlet,[mudHeight(1),mudWeight(1),mudPermanence(actTake,vTakenStays),mudActAffect(actTake,mudEnergy(+50))]).
 mudLabelTypeProps("nt",tNut,[mudHeight(1),mudWeight(1),mudPermanence(actTake,vTakenMoves),mudActAffect(actEat,mudEnergy(+40)),spawn_rate(10)]).
mudLabelTypeProps("lw",tLowWall,[mudHeight(2),mudWeight(4)]).
:- do_gc.

mudLabelTypeProps("lg",tLedge,[mudHeight(2),mudWeight(4)]).
mudLabelTypeProps("lb",tLowBox,[mudHeight(2),mudWeight(2)]).
:- do_gc.

mudLabelTypeProps("hw",tHighWall,[mudHeight(3),mudWeight(4)]).
mudLabelTypeProps("hb",tHighBox,[mudHeight(3),mudWeight(3)]).
mudLabelTypeProps("gd",tGold,[mudHeight(1),mudWeight(1),mudPermanence(actTake,vTakenDeletes),mudActAffect(actTake,mudScore(+10))]).
:- do_gc.

mudLabelTypeProps("fd",tFood,[mudHeight(0),mudWeight(1),mudPermanence(actTake,vTakenMoves),mudActAffect(actEat,mudEnergy(+80))]).
mudLabelTypeProps("el",tElixer,[mudHeight(1),mudWeight(1),mudPermanence(actTake,vTakenMoves),mudActAffect(actEat,mudHealth(+80))]).
mudLabelTypeProps("ed",tEdgeOfWorld,[mudHeight(10),mudWeight(4)]).
:-garbage_collect_atoms.
 mudLabelTypeProps("dt",tDirt,[mudHeight(1),mudWeight(1),mudPermanence(actTake,vTakenDeletes),mudActAffect(actTake,mudScore(+1)),spawn_rate(5)]).
:-garbage_collect_atoms.
mudLabelTypeProps("dr",tDoor,[mudHeight(3),mudWeight(2)]).
:-garbage_collect_atoms.

% What an agent turns into upon death.
% Must be named iCorpseFn (or edit agent_to_corpse/1 in lib.pl.
 mudLabelTypeProps("cp",tCorpsea,[mudHeight(1),mudWeight(1),mudPermanence(actTake,vTakenMoves),mudActAffect(actEat,mudEnergy(+80)),mudActAffect(actTake,mudScore(+10))]).
 mudLabelTypeProps("cp",tCorpseb,[mudHeight(1),mudWeight(1),mudPermanence(actTake,vTakenMoves),mudActAffect(actEat,mudEnergy(+120))]).
mudLabelTypeProps("da",tCorpsec,[mudHeight(2),mudWeight(2)]).
% This is used to make the monster roaming the maze a bit tougher
% It doesn't require any of the usual traits since the monster will never 
% leave the monster's possession.
mudLabelTypeProps("nk",tNastyKnife,[mudActAffect(actWield,mudAttack(2))]).
mudLabelTypeProps("th",tToughHide,[mudActAffect(actWear,mudArmor(2))]).



% Define the maximum charge and maximum damage an agent can have


% :- include(prologmud(mud_footer)).
