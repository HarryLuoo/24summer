1. A group of statements that exist within a program for the purpose of performing a specific task is a(n) __________.
a. block
b. parameter
c. #highlight[function]
d. expression

2. A design technique that helps to reduce the duplication of code within a program and is a benefit of using functions is __________.
a. #highlight[code reuse]
b. divide and conquer
c. debugging
d. facilitation of teamwork

3. The first line of a function definition is known as the __________.
a. body
b. introduction
c. initialization
d. #highlight[header]

4. You __________ a function to execute it.
a. define
#highlight[b. call] 
c. import
d. export

5. A design technique that programmers use to break down an algorithm into functions is known as __________.
#highlight[a. top-down design]
b. code simplification
c. code refactoring
d. hierarchical subtasking

6. A __________ is a diagram that gives a visual representation of the relationships between functions in a program.
a. flowchart
b. function relationship chart
c. symbol chart
#highlight[d. hierarchy chart]

7. A __________ is a variable that is created inside a function.
a. global variable
#highlight[b. local variable]
c. hidden variable
d. none of the above; you cannot create a variable inside a function

8. A(n) __________ is the part of a program in which a variable may be accessed.
a. declaration space
b. area of visibility
#highlight[c. scope]
d. mode

9. A(n) __________ is a piece of data that is sent into a function.
#highlight[a. argument]
b. parameter
c. header
d. packet

10. A(n) __________ is a special variable that receives a piece of data when a function is called.
a. argument
#highlight[b. parameter]
c. header
d. packet

11. A variable that is visible to every function in a program file is a __________.
a. local variable
b. universal variable
c. program-wide variable
#highlight[d. global variable]

12. When possible, you should avoid using __________ variables in a program.
a. local
#highlight[b. global]
c. reference
d. parameter

13. This is a prewritten function that is built into a programming language.
a. standard function
#highlight[b. library function]
c. custom function
d. cafeteria function

14. This standard library function returns a random integer within a specified range of values.
a. random
#highlight[b. randint]
c. random_integer
d. uniform

15. This standard library function returns a random floating-point number in the range of 0.0 up to 1.0 (but not including 1.0).
#highlight[a. random]
b. randint
c. random_integer
d. uniform

16. This standard library function returns a random floating-point number within a specified range of values.
a. random
b. randint
c. random_integer
#highlight[d. uniform]

17. This statement causes a function to end and sends a value back to the part of the program that called the function.
a. end
b. send
c. exit
#highlight[d. return]

18. This is a design tool that describes the input, processing, and output of a function.
a. hierarchy chart
#highlight[b. IPO chart]
c. datagram chart
d. data processing chart

19. This type of function returns either True or False.
a. Binary
b. true_false
#highlight[c. Boolean]
d. logical

20. This is a math module function.
a. derivative
b. factor
#highlight[c. sqrt]
d. differentiate

True or False
1. The phrase “divide and conquer” means that all of the programmers on a team should be divided and work in isolation.
False

2. Functions make it easier for programmers to work in teams.
True

3. Function names should be as short as possible.
False

4. Calling a function and defining a function mean the same thing.
False

5. A flowchart shows the hierarchical relationships between functions in a program.
False

6. A hierarchy chart does not show the steps that are taken inside a function.
True

7. A statement in one function can access a local variable in another function.
False

8. In Python, you cannot write functions that accept multiple arguments.
False

9. In Python, you can specify which parameter an argument should be passed into a function call.
True

10. You cannot have both keyword arguments and non-keyword arguments in a function call.
False

11. Some library functions are built into the Python interpreter.
True

12. You do not need to have an import statement in a program to use the functions in the random module.
False

13. Complex mathematical expressions can sometimes be simplified by breaking out part of the expression and putting it in a function.
True

14. A function in Python can return more than one value.
True

15. IPO charts provide only brief descriptions of a function’s input, processing, and output, but do not show the specific steps taken in a function.
True

Short Answer
1. How do functions help facilitate teamwork?
Functions allow programmers to break down a large program into smaller, manageable pieces. Each team member can work on a different function or set of functions, facilitating parallel development and easier integration of code.

2. Name and describe the two parts of a function definition.
The two parts of a function definition are the header and the body. The header includes the function name and parameter list, while the body contains the set of statements that define what the function does.

3. When a function is executing, what happens when the end of the function block is reached?
When the end of the function block is reached, the function terminates, and control is returned to the point in the program where the function was called. If the function has a return statement, it may also return a value.

4. What is a local variable? What statements are able to access a local variable?
A local variable is a variable that is defined within a function and is only accessible within that function. Statements inside the function can access the local variable, but it is not accessible outside the function.

5. What scope do parameter variables have?
Parameter variables have local scope. They are only accessible within the function in which they are defined.

6. Why do global variables make a program difficult to debug?
Global variables can be accessed and modified by any part of the program, making it harder to track where and how they are being changed. This can lead to unexpected behavior and bugs that are difficult to isolate and fix.

7. Suppose you want to select a random number from the following sequence: 0, 5, 10, 15, 20, 25, 30. What library function would you use?
You would use the `random.choice` function from the `random` module to select a random number from the given sequence.

8. What statement do you have to have in a value-returning function?
You need to have a `return` statement in a value-returning function to send a value back to the part of the program that called the function.

9. Draw an IPO chart that documents the input, processing, and output of the built-in input function.
```
| Input       | Processing           | Output       |
|-------------|----------------------|--------------|
| Prompt text | Display prompt       | User input   |
|             | Wait for user input  |              |
```

10. What is a Boolean function?
A Boolean function is a function that returns a Boolean value, which is either `True` or `False`.

11. What are the advantages of breaking a large program into modules?
Breaking a large program into modules makes the program easier to understand, debug, and maintain. It allows for code reuse, facilitates teamwork by allowing multiple programmers to work on different modules, and improves the organization of the code.