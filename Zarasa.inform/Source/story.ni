"Zarasa" by "Ignacio Mollo"

Book 1 - Objects 

[

¿Cómo se crean las variables auxiliares?

¿Cómo se hace para crear una regla universal que se fije si un número real tiene mantisa cero, y en ese caso lo trate como un entero?

¿Qué convención de nombramiento conviene seguir para diferenciar dos funciones del mismo tipo -- digamos, la función constante 5 de la función constante 9?

]

Chapter 1 - Solid Number
[El tipo "number" de inform no es algo que podamos agarrar]

A solid number is a kind of thing. A solid number has a real number called the stubbornness.

Definition: a solid number is positive if its stubbornness is greater than 0.0.
Definition: a solid number is negative if its stubbornness is less than 0.0.
Definition: a solid number is null if its stubbornness is 0.0.

Definition: a solid number is whole rather than fractional if the stubbornness minus (the stubbornness to the nearest whole number) is 0.0.

To say integer correction for numbers:
	say "[if the solid number is whole][stubbornness to the nearest whole number] [otherwise] [stubbornness]"

The description of a solid number usually is "It has the form of a [integer correction for numbers]. It looks sturdy."
[Si no hiciera esto, cada vez que tenga un solid number de valor 5 por ejemplo, me imprimiría "5.0" en lugar de "5" y queda feo]

Chapter 2 - Functions

A function is a kind of thing. Functions can be either differentiable or non-differentiable. 

Section 1 - Constant Functions

A constant function is a kind of function. Constant functions are always differentiable. A constant function has a real number called the stubbornness. The stubbornness of a constant function is usually 0. 
[Lo llamo igual que el valor del solid number por conveniencia.]

Definition: a constant function is positive if its stubbornness is greater than 0.0.
Definition: a constant function is negative if its stubbornness is less than 0.0.
Definition: a constant function is null if its stubbornness is 0.0.

Definition: a constant function is whole rather than fractional if the stubbornness minus (the stubbornness to the nearest whole number) is zero.
[Defino esto porque quiero que las funciones constantes puedan tener valores reales, pero si justo tiene un valor como "5.0", quiero que imprima 5]

To say integer correction for constant functions: 
	say "[if the constant function is whole][stubbornness to the nearest whole number] [otherwise] [stubbornness]"
[Hago esta sustitución porque a Inform no parece gustarle nestear ifs]

After consulting a constant function about anything, say "[integer correction for constant functions]."

The description of a constant function usually is "[if handled] It has a label on it, which reads [integer correction for constant functions]. [otherwise] It looks boring."

Carry out evaluating on:
	if the noun is a constant function, say "It evaluates to [integer correction for constant functions]".

Carry out differentiating:
	if the noun is a constant function:
		now the stubbornness is 0;
		say "It was his own fault, really.".


Section 2 - Sign Function

The sign function is a non-differentiable function. The description is "A hideous thing."

Carry out evaluating on:
	if the noun is the sign function:
		if the second noun is positive, say "It evaluates to 1.";
		if the second noun is null, say "It evaluates to 1.";
		if the second noun is negative, say "It evaluates to -1.".


Section 3 - Linear Functions

A linear function is a kind of function. A linear function is always differentiable. 
A linear function has a real number called the slope. The slope of a linear function is usually 1.
A linear function has a real number called the height. The height of a linear function is usually 0.

Carry out evaluating on:
	if the noun is a linear function, say "It evaluates to [((stubbornness of the second noun) times slope) plus height]."

[
Carry out differentiating:
	if the noun is a linear function:
		the asdasd is a constant function;
		now the player is carrying the asdasd;
		now the stubbornness is the slope;
		now the noun is nowhere.
]
[No sé cómo hacer que esta mierda compile y tengo sueño -- la idea es que cuando derivás la función lineal te quede una constante en el inventario y que la original desaparezca]

Chapter 2 - Operators

An operator is a kind of thing. 

The differential operator, the sum operator, the subtraction operator, the product operator, the inversion operator and the induction operator are operators.


Book 2 - Commands

Chapter 1 - Differentiation

Differentiating is an action applying to one thing. Understand "differentiate [function]" and "derive [function]" as differentiating.

Check differentiating:
	if the player is not carrying the differential operator:
		say "I wouldn't know where to start!" instead.
		
Carry out differentiating:
	if the player is not carrying the noun:
		say "(taking [the noun] first)[line break]";
		silently try taking the noun;
		if the player is not carrying the noun, stop the action.

[		
Instead of differentiating a function which is non-differentiable:
	say: "[The noun] is non-differentiable! Are you sure you want to differentiate it?";
	if the player consents, end game saying "You have reached a contradiction!". 
]
[Esto tampoco compila]

Chapter 2 - Evaluation

Evaluating on is an action applying to two things. Understand "evaluate [function] on [constant function]" and "evaluate [function] on [solid number]" as evaluating on.

Check evaluating on:
	if the player is not carrying the noun:
		say "(first taking [the noun])[line break]";
		silently try taking the noun;
		if the player is not carrying the noun, stop the action;
	otherwise if the player is not carrying the second noun:
		say "(first taking [the second noun])[line break]";
		silently try taking the second noun;
		if the player is not carrying the second noun, stop the action.



Book 3 - Story

The Abstract Mathematical Setting is a room. "You feel like you could move in infinitely many independent directions if you tried." [Don't try it    ---yet] 

There is a constant function in the Setting. "Lying in the floor and unable to move by itself, there is a constant function."  The stubbornness is 5.7.
The differential operator is in the Setting. The sign function is in the Setting.
There is a solid number in the setting. The stubbornness is -7.
There is a linear function in the Setting. The slope is 2. The height is 1.

Test derive with "derive myself/differentiate myself/derive constant function/take differential operator/derive constant function/x constant function"

Test evaluate with "evaluate sign function on number/evaluate sign function on constant function/evaluate linear function on number/evaluate linear function on constant function"