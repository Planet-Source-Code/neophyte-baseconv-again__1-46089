Bugs
¯¯¯¯
Not really a bug, but I should mention it.
There are no restrictions on the code. e.g. If you try
to convert FF from base 3 to base 10 it will return 255,
and we all know (or should do) that FF isn't a valid base
3 number.










Binary (And Other Bases) To Decimal
¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
The alogarithm isn't complex at all really...
I was reading an article on converting binary to decimal
a while ago and so I made a program to do it. Unfortunately
I can't remember the website I read this on, so I'll go
over it breifly myself. Hope you understand...

I won't explain about bases, just the method used to convert
them.

To convert binary to decimal can be quite confusing at a 
first, if you don't understand it go over it again.
It took me a good three reads to fully understand it.
Here we go...

Ill use 1010 as an example.

To convert this FROM binary TO decimal you need to reserve
it. So now we have:

0101

Right? Ok, that was pretty simple. Now we multiply the
number by its position in the number. Hope you understood
that. Look below, you might get what I mean:

0 * 0
1 * 1
0 * 2
1 * 3

Get it? 0 is the 1st number in the number, but we are
starting at position 0. If you find that stupid either
get used to it or think of it like this; you're going to
multiply the number by the position -1 in the number.
Now then, that may have seemed pretty useless and you're
right, that means nothing because we're not done yet...
Now we are going to 'power' the result by 2 (because it's
base 2). Again, if you don't understand this may help:

0 ^ 2
1 ^ 2
0 ^ 2
3 ^ 2

Get it? before we multiplied 0 by 0 and got 0, here we
'powered' that by 2 (same as squaring it). Before we also
multipled 1 by 1 to get 1, here we 'powered' that by 2 to 
get 1. Before we also multiplied 0 by 2 to get 0, here we
'powered' that by 2 to get 0. Before we also multiplied
1 by 3 to get 3, here we 'powered' that by 2 to get 9.

Ok, so now we have the following:

0
1
0
9

Still useless right? Wrong! add all the numbers up. We get
10. We have now just converted 1010 (binary) to 10 (decimal).
I really hope you understood that. If you didn't you could
try reading it again. Or if I make no sense to you try
googling it. Sorry =(

Ok, so how do you use this to convert any base to decimal?
Well, it's all exactly the same except we 'power' the number
by the base. For example, before we 'powered' each number by
2 remember? Well instead of 2, use the target base. Simple.

And for bases above ten (they use letters) we replace the
letters with numbers, a = 10, b = 11 etc. then do the same.














Decimal To Binary (And Other Bases)
¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
Ok, hopefully you understand the Mod function. If you don't
then I suggest you search PScode.com or google for it.
Because I won't be explaining it in great detail, you may
pick up how it works though...

Like before ill start off with binary and decimal.
I'll also use 10 as the example.
Here we go...

To convert 10 to binary we will use the Mod function. First
of all we 'Mod' our decimal number by 2 (becuase were
converting to base 2):

10 Mod 2

This will return either 1 or 0. You know why right? No? Ok,
I'll explain...
When we 'Mod' a number it gives us the remainder when divided
by 2. And because we're dividing by 2 we can't have a remainder
higher than 2, or 2 itself.
So back to the point, we have either 1 or 0. Well instead
of ADDING the numbers like we did before we will combine them
in a string. So far we have 0 (because 10/2 has no remainder)
Now we divide the 10 by 2 and 'Mod' that.

5 Mod 2

This will return 1, because 5/2 has a remainder of 1. So we
add this to the 0 we previously has, now we have 01, right?
Now we divide the number (5) by 2 again, but this time it's
not quite a whole number. It's 2.5, so just discard everything
past the decimal point, DONT round it up or down, just throw
the decimal part away. So now were left with 2 right? Yes.
So now we 'Mod' 2 by 2:

2 Mod 2

this will return 0, because 2/2 has no remainders. So now
we have 010. Almost done...
Divide the number by 2 again, now we have 1, so 'Mod' 2 by 1:

1 Mod 2

This will give 1. It is actually 0.5, but we DO round this
number up. Now we divide 1 by 2 again. This time it is less
than 1. Once the number we are 'Moding' is less than 1 we stop.
So what do we have now? 0101, right? Yep. Now we reverse the
string, like we did when we were converting binary to decimal.

1010

This, as we know from before is 10 in decimal.
Once again, I hope you understood. If you didn't read it again
or google it.
Once again, you may ask how to convert to any base, well replace
the 'Mod' number by the base. We were 'Moding' with 2 before
because it was base 2, so for base 8 you 'Mod' by 8.

And again, bases above 10 use letters so just replace them
with the appropriate value. (I'm not sure if my program does
this 100% correctly, becuase like I mentioned in the Bugs section
it isn't messing up with the numbers I'm converting but it was before).













Other Stuff
¯¯¯¯¯¯¯¯¯¯¯
Well, hopefully after reading the above stuff you will now understand
my code pretty easily.

Hope this proves to be usefull, I know all those ASM programmers might find
it usefull what with them converting decimal to hex.

I've seen a lot of Binary to Decimal/Decimal to Binary stuff in the VB section
and most of it contains a lot of code. Using these simple methods makes it a 
lot lot, easier. Probably quicker too.



If you need to contact me then feel free to email me/add me to your MSN:

some_phuker@hotmail.com