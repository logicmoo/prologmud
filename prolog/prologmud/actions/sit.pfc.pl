% :-swi_module(user). 
:-swi_module(modSit, []).
/* * module * Agent Postures there and does nothing
% Agent will loose a bit of charge, but heal a bit of damage
% May 18, 1996
% John Eikenberry
% Douglas Miles 2014

*/
:- include(prologmud(mud_header)).

% :- register_module_type (mtCommand).

% tCol(vtPosture).
tCol(vtPosture).

prologSingleValued(mudStance(tAgent,vtPosture),prologHybrid).

vtPosture(vSit).
vtPosture(vStand).
vtPosture(vLay).
vtPosture(vSleep).
vtPosture(vKneel).


action_info(Posture,ftText("sets and agent's stance to ",Posture)):-vtPosture(PostureV),Posture=..[PostureV,isOptional(tFurniture,vHere)].

% Sit and do nothing.
agent_call_command(Agent,Verb):- compound(Verb), functor(Verb,Sit,1),vtPosture(Sit),arg(1,Verb,Where),agent_call_command(Agent,actOnto(Where,Sit)).

action_info(actOnto(isOptional(tFurniture,vHere),Posture),txtConcatFn("onto tObj do ",Posture)):-vtPosture(Posture).

vtPosture(Posture)/i_name(act,Posture,ActPosture) ==> {DO=..[ActPosture,isOptional(tFurniture,vHere)]}, action_info(DO,txtConcatFn("onto tObj do ",Posture)).


agent_call_command(Agent,actOnto(Where,Sit)):-
        fmt('agent ~w is now ~wing on ~w',[Agent,Sit,Where]),
        padd(Agent,mudStance(Sit)),
        padd(Agent,localityOfObject(Where)),
	call_update_charge(Agent,Sit).

update_charge(Agent,Sit) :- vtPosture(Sit), padd(Agent,[mudEnergy(+ -1)]).

:- include(prologmud(mud_footer)).
