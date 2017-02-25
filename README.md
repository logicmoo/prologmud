[[Web Interface]]

# A Prolog based MUD
Like "Hello world" that must be implemented in every language, a playable MUD server should also exist!  (MUD servers examples are: LambdaMOO, DikuMUD, PerlMUD, CircleMUD.. etc)   

However, for the Prolog language this is even more vital. Here in 2014, no one has created one?! 

After doing the Nani-World tutorial at the AMZI-Prolog website students are excited by how simple it was.  And for very little extra programming the program become better and better.  They might go on to imagining if it was not simply a tutorial but a real game.  Played with many people characters at once. That is what this project is about among other things.   See what is meant by this at 

* http://www.amzi.com/articles/prolog_fun.htm
* http://www.amzi.com/AdventureInProlog/a1start.php

# What is it really?

It turns out that being a MUD keeps a sane description of the minimized version of the code.   But really it is an application framework (much the way Tomcat is a web application hosting framework).
Some games (PrologMUD is no different) end up becoming miniature operating systems with 1000s of moving pieces and the type of problems/solutions being worked on in the layers of the game involve very different methodologies; Take a game like Doom II with Pathfinding, physics, image asset delivery to networked clients, mini-C interpreter for AI and rockets powered weapons, 3D rendering, Client networking to stay in sync, AAS (Area Awareness System) etc etc etc.   PrologMUD has all of these (except 2D rendering in place of 3D rendering) plus natural language understanding, theorem prover, behaviour planner, neural simulator, STRIPS, CYC, CG-KIF and a crap-load of other acronyms. 

10% code is Process management and client networking
10% is the Object Orientation smoothing layer (isa/genls hierarchy)



## What does playing it look like?
A text adventure game from the 1980s

## Why is it over 400,000 lines of code? 
First off, the author only had to write 100k lines to get it "bootstrapped" 
The rest is data and modules created over the last 30 years by research projects in the areas of artificial intelligence.   http://www.cyc.com http://www.larkc.eu  etc
Initial version was only 1000 lines of code.  

## Why is it in Prolog and not LISP or C++?
Prolog is required programming language at all 4 year universities (though most students only get 2 weeks to learn it! .. in which even then it is marginalized by the professor.. since really 2 weeks isn't long enough)
PrologMUD would been OK in LISP but propositional resolution is a type of calculation PrologMUD does most often and in LISP that ends up 10x slower when compared to a Prolog-in-C native unifier.



![AdoptedFromKnowRob](http://www.prologmoo.com/downloads/screenshots/KnowRobOnto.png)
