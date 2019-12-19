//déclaration et lecture des entiers
int Nbvariables= ...;
int Nbcontraintes=...;

// définition des intervalles 
range Var = 1..Nbvariables;
range Cte = 1..Nbcontraintes;

//récuperation des valeurs
float cost[Var]=...;
float A[Cte][Var]=...;
float B[Cte]=...;

//définition des variables
dvar float+ x[Var][Cte];

//objective function 
maximize sum(i in Var)sum(j in Cte) cost[i]*x[i][j];

subject to{
	forall(j in Cte)
	  cons1:
	  sum(i in Var) A[j][i]*x[i][j] <= B[j];
	 
//	forall(i in Var)
//	  cons2:
//	  sum(j in Cte) x[i][j]<=1;
}
execute{
	for(var i in Var)for(var j in Cte)// affiche les couts réduits de chaque variable
		writeln("value of x",i," j",j," : "," reduced cost : ", x[i][j].reducedCost);
}