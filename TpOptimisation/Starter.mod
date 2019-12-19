// variables 
dvar float+ x;
dvar float+ y;

// objective function
 dexpr float cost = 0.12*x + 0.15*y;
 
 // model
minimize cost;
subject to{
	cons01:
	60*x +60*y>=300;
	cons02:
	6*x+y>=6;
	cons3:
	10*x+30*y>=90;
}