

// variables 
dvar float+ x1;
dvar float+ x2;
dvar float+ x3;
dvar float+ x4;
dvar float+ x5;
// objective function
dexpr float cost = x1+x2+x3+x4+x5;

 // model
maximize cost;
subject to{
	cons01:
	x1 +x2 <= 1;
	cons02:
	x2 +x3 <= 1;
	cons3:
	x3 +x4 <= 1;
	cons4:
	x4 +x5 <= 1;
	cons5:
	x5 +x1 <= 1;
	cons6:
	x3 +x5 <= 1;
	cons7:
	x1+x2+x3+x4+x5<=2;
	cons8:
	x3+x4+x5<=1;
}