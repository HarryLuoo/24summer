1. A --- controlled loop uses a true/false condition to control the number of 
times that it repeats.
#highlight[b. condition]
a. Boolean
c. decision
d. count

2. A -----controlled loop repeats a specific number of times.
a. Boolean
b. condition
c. decision
#highlight[d. count]

3. Each repetition of a loop is known as a(n) ----.
a. cycle
b. revolution
c. orbit
#highlight[d. iteration]

4. The while loop is a ---- type of loop.
#highlight[a. pretest]
b. no-test
c. prequalified
d. post-iterative

5. A(n) ----- loop has no way of ending and repeats  until the program is interrupted.
a. indeterminate
b. interminable
#highlight[c. infinite]
d. timeless

6. The -= operator is an example of a(n) ----- operator.
a. relational
#highlight[b. augmented assignment]
c. complex assignment
d. reverse assignment

7. A(n) ----- variable keeps a running total.
a. sentinel
b. sum
c. total
#highlight[d. accumulator]

8. A(n) ----- is a special value that signals when there are no more items from a list 
of items to be processed. This value cannot be mistaken as an item from the list.
#highlight[a. sentinel]
b. flag
c. signal
d. accumulator

9. GIGO stands for .
#highlight[b. garbage in, garbage out]
a. great input, great output
c. GIGahertz Output
d. GIGabyte Operation

10. The integrity of a program’s output is only as good as the integrity of the program’s 
#highlight[c. input]
a. compiler
b. programming language
d. debugger

11. The input operation that appears just before a validation loop is known as the .
a. prevalidation read
b. primordial read
c. initialization read
#highlight[d. priming read]

12. Validation loops are also known as .
#highlight[a. error traps]
b. doomsday loops
c. error avoidance loops
d. defensive loops

True or False
1. A condition-controlled loop always repeats a specific number of times.
#highlight[False]

2. The while loop is a pretest loop.
#highlight[True]

3. The following statement subtracts 1 from x: x = x − 1
#highlight[True]

4. It is not necessary to initialize accumulator variables.
#highlight[False]

5. In a nested loop, the inner loop goes through all of its iterations for every single iteration of the outer loop.
#highlight[True]

6. To calculate the total number of iterations of a nested loop, add the number of iterations of all the loops.
#highlight[False]

7. The process of input validation works as follows: when the user of a program enters 
invalid data, the program should ask the user “Are you sure you meant to enter that?” 
If the user answers “yes,” the program should accept the data.
#highlight[False]

Short Answer
1. What is a condition-controlled loop?
A condition-controlled loop uses a true/false condition to control the number of times it repeats.

2. What is a count-controlled loop?
A count-controlled loop repeats a specific number of times, typically using a counter variable to keep track of the iterations.

3. What is an infinite loop? Write the code for an infinite loop.
An infinite loop is a loop that has no way of ending and repeats indefinitely until the program is interrupted.
```python
while True:
    pass
```

4. How are an accumulator variable and a loop used to calculate a running total?
An accumulator variable is initialized to zero and then incremented inside a loop by adding each value from a series of inputs to it, thus keeping a running total.

5. How many iterations would occur in total if a loop that repeats 5 times is nested within a loop that repeats 4 times?
20 iterations (5 \* 4).

6. Why must the value chosen for use as a sentinel be carefully selected?
The sentinel value must be a unique value that cannot be mistaken for a valid input to ensure it correctly signals the end of input.

7. What does the phrase “garbage in, garbage out” mean?
It means that the quality of the output is determined by the quality of the input; if invalid or poor-quality input is provided, the output will also be invalid or poor-quality.

8. Give a general description of the input validation process.
Input validation involves checking user input to ensure it is valid and acceptable before processing it further. If the input is invalid, the program prompts the user to enter the correct data.