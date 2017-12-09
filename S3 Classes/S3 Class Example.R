sound<-function(x)UseMethod("sound",x)

eat<-function(x)UseMethod("eat",x)

#Methodsaredefinedwithanamingconvention:generic.class:

sound.dog<-function(x)"bark"

sound.cow<-function(x)"moo"

sound.cat<-function(x)"meaav"

sound.default<-function(x)"animalsound"









eat.dog<-function(x)"bones"

eat.cow<-function(x)"milk"

eat.cat<-function(x)"pullu"

eat.default<-function(x)"animalfood"



#Themethodsfunctioncanfindoutwhichclassesagenericfunctionwasdesignedfor.

methods("sound")

#[1]sound.cowsound.defaultsound.dog

#Rlooksformethodsintheorderinwhichtheyappearintheclassvectoruntilitfoundtheappropriatemethodtooperateon.

x<-structure("mycow",class=c("cow"))

sound(x)

eat(x)

x<-structure("mydog",class=c("dog","cow","cat"))

sound(x)

#[1]"bark"

#Theclassescat,cowanddogareininheritanceorder

#dogistheparentofcowwhichisparentofcat

x<-structure("mycat",class=c("cat","cow","dog"))

sound(x)



#usethenextclassintheinheritanceorder.Inthiscasecow

sound.cat<-function(x)NextMethod()

sound(x)

