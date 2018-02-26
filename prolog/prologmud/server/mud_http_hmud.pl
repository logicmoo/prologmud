
:- module(mud_http_hmud, [
          hmud_directory/1,
          install_hmud_files/0,
          run_flash_policy_server/0,
          ensure_hmud/0]).
/** module
% Initial Telnet/Text console
% ALL telnet client business logic is here (removed from everywhere else!)
%
% Logicmoo Project PrologMUD: A MUD server written in Prolog
% Maintainer: Douglas Miles
% Dec 13, 2035
%
*/

:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_dispatch)).
:- use_module(library(http/http_path)).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Ensure hMUD
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

ignore_all(G):- ignore(notrace(catch(G,E,wdmsg(G=>E)))).

ensure_hmud:- 
   ignore_all(must(install_hmud_files)),
   ignore_all(must(run_flash_policy_server)),
   ignore_all(must(install_hmud_http_handler)).


hmud_directory(O):- absolute_directory('./hmud/',O).
hmud_directory(O):- absolute_directory(pack(hMUD),O).
hmud_directory(O):- expand_file_search_path(pack(hMUD),O).
      

install_hmud_files:- hmud_directory(O),exists_directory(O),!.
install_hmud_files:- hmud_directory(O),sformat(S,'git clone https://github.com/TeamSPoon/hMUD.git ~w',[O]),shell(S).

run_flash_policy_server:- hmud_directory(O),sformat(S,'~w/policyd &>2 ||:',[O]),ignore_all(shell(S)).

install_hmud_http_handler:- hmud_directory(O),
      http_handler('/hmud/', http_reply_from_files(O, []), [prefix]),
      http_handler('/hmud', http_reply_from_files(O, []), [prefix]).

:- fixup_exports.

:- during_net_boot(ensure_hmud).
%:- during_net_boot(run_flash_policy_server).
%:- during_net_boot(install_hmud_http_handler).


