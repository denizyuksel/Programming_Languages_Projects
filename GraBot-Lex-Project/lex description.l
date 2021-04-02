%option main
program_start		start
num			[0-9]
char			([a-zA-Z]|[0-9])
alph			[a-zA-Z]
direction		[(forward)(back)]
rotation		[(left)(right)]
frontsensor		[(F1)(F2)(F3)(F4)]
backsensor		[(B1)(B2)(B3)(B4)]
leftparan		\(
rightparan		\)
leftcurlyparan		\{
rightcurlyparan		\}
divide_operator  	\/
mult_operator  		\*
minus_operator  	\-
plus_operator  		\+ 
mod_operator 		\%
assign_op		=			
equal			==
greaterthan		>
greateroreq 		>=
lessthan 		<
lessoreq 		<=
bool			(true|false)
comment			@@(.)*
newline			\n
if_stmt			if
ifend			endif
else			else
elseend			endelse
while_stmt		while
while_stop		endwhile
for_stmt		for
for_stop		endfor
move_func		move				
turn_func		turn
grab_func		grab	
release_func		release
senseDist_func		senseDist
switchLight_func	switchLight
program_end		end
%%
{newline}		printf("\n ");
\;			printf("; ");
{leftparan}		printf("LEFTPARAN ");
{rightparan}		printf("RIGHTPARAN ");
{leftcurlyparan}	printf("LEFTCURLYPARAN ");
{rightcurlyparan}	printf("RIGHTCURLYPARAN ");
{equal}			printf("EQUALSIGN ");
{greaterthan}		printf("GREATERSIGN ");
{greateroreq}		printf("GREATOREQSIGN ");
{lessthan}		printf("LESSSIGN ");
{lessoreq}		printf("LESSOREQSIGN ");
{divide_operator} 	printf("DIVIDE ");
{mult_operator} 	printf("MULT ");
{minus_operator}  	printf("MINUS ");
{plus_operator} 	printf("PLUS ");
{mod_operator} 		printf("MOD ");
{assign_op}		printf("ASSIGN ");
{program_start}		printf("PROGRAMSTART ");
{program_end}		printf("PROGRAMEND ");
{num}+			printf("INT ");
{num}*(\.)?{num}+	printf("FLO ");
{direction}		printf("DIRECTION ");
{rotation}		printf("ROTATION ");
{frontsensor}		printf("FRONTSENSOR ");
{backsensor}		printf("BACKSENSOR ");
{bool}			printf("BOOL ");
{if_stmt}		printf("IF ");
{ifend}			printf("ENDIF ");
{for_stmt}		printf("FOR ");
{for_stop}		printf("ENDFOR ");
{while_stmt}		printf("WHILE ");
{while_stop}		printf("ENDWHILE ");
{move_func}		printf("MOVEFUNC ");				
{turn_func}		printf("TURNFUNC ");
{grab_func}		printf("GRABFUNC ");
{release_func}		printf("RELEASEFUNC ");
{senseDist_func}	printf("SENSEDISTFUNC ");
{switchLight_func}	printf("SWITCHLIGHTFUNC ");
{comment}		printf("COMMENT ");
{alph}{char}*		printf("VAR ");
\"{char}+\"		printf("STR ");
