(deffacts datos
(numeros 5 3 8 14 7)
(auxiliar 0)
(auxiliar1 0)
(auxiliar2 0)
(resultado 21)
)

(defrule multiplicacion
	(numeros ?x ?y $?z)
=>
	(assert (auxiliar (* ?x ?y)))
	(retract ?x ?y)
)

(defrule division
	(numeros $?x ?y ?z)
	
=>
	(assert (auxiliar1 (/ ?x ?y)))
	(retract ?y ?z)
)

(defrule resta
	(numeros $?x ?y $?z)
	(auxiliar1 ?a)
=>
	(assert (auxilar2 (- ?y ?a)
	(retract ?y)
)

(defrule suma 
	(auxiliar ?a)
	(auxiliar2 ?b)
	
=>
	(assert (resultado (+ ?a ?b)))
)

(defrule meta
	(salience 100)
	(resultado ?res)
	(test (= ?res 21))
=>
	(halt)
)