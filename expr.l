%{
	#include "y.tab.h"
%}

%%
[_a-zA-Z][_a-zA-Z0-9]*  { return a; }
[\*]  { return '*'; }
[\+]  { return '*'; }
[(]  { return '*'; }
[)]  { return '*'; }
\n { return 0; }
%%

