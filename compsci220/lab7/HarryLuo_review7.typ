Review 7

Harry Luo

1. This term refers to an individual item in a list.
#highlight[a. element]
b. bin
c. cubbyhole
d. slot

2. This is a number that identifies an item in a list.
a. element
#highlight[b. index]
c. bookmark
d. identifier

3. This is the first index in a list.
a. −1
b. 1
#highlight[c. 0]
d. The size of the list minus one

4. This is the last index in a list.
a. 1
b. 99
c. 0
#highlight[d. The size of the list minus one]

5. This will happen if you try to use an index that is out of range for a list.
a. A ValueError exception will occur.
#highlight[b. An IndexError exception will occur.]
c. The list will be erased and the program will continue to run.
d. Nothing—the invalid index will be ignored.


6. This function returns the length of a list.
a. length
b. size
#highlight[c. len]
d. lengthof

7. When the \* operator's left operand is a list and its right operand is an integer, the operator becomes this.
a. The multiplication operator
#highlight[b. The repetition operator]
c. The initialization operator
d. Nothing—the operator does not support those types of operands.

8. This list method adds an item to the end of an existing list.
a. add
b. add_to
c. increase
#highlight[d. append]

9. This removes an item at a specific index in a list.
a. the remove method
b. the delete method
#highlight[c. the del statement]
d. the kill method

10.  Assume the following statement appears in a program:
mylist = []
Which of the following statements would you use to add the string 'Labrador' to the list at index 0?
a. mylist[0] = 'Labrador'
#highlight[b. mylist.insert(0, 'Labrador')]
c. mylist.append('Labrador')
d. mylist.insert('Labrador', 0)

11.  If you call the index method to locate an item in a list and the item is not found, this happens.
#highlight[a. A ValueError exception is raised.]
b. An InvalidIndex exception is raised.
c. The method returns −1.
d. Nothing happens. The program continues running at the next statement.

12.  This built-in function returns the highest value in a list.
a. highest
#highlight[b. max]
c. greatest
d. best_of

13.  This file object method returns a list containing the file's contents.
a. to_list
b. getlist
c. readline
#highlight[d. readlines]




14. Which of the following statements creates a tuple?
a. values = [1, 2, 3, 4]
b. values = {1, 2, 3, 4}
c. values = (1)
#highlight[d. values = (1,)]

True or False:
1. Lists in Python are immutable.
#highlight[False]

2. Tuples in Python are immutable.
#highlight[True]

3. The del statement deletes an item at a specified index in a list.
#highlight[True]

4. Assume list1 references a list. After the following statement executes, list1 and list2 will reference two identical but separate lists in memory:
list2 = list1
#highlight[False]

5. A file object's writelines method automatically writes a newline ('\n') after writing each list item to the file.
#highlight[False]

6. You can use the + operator to concatenate two lists.
#highlight[True]

7. A list can be an element in another list.
#highlight[True]

8. You can remove an element from a tuple by calling the tuple's remove method.
#highlight[False]

Short Answer:
1. Look at the following statement:
numbers = [10, 20, 30, 40, 50]
a. How many elements does the list have?

5 elements

b. What is the index of the first element in the list?

0

c. What is the index of the last element in the list?

4

2. Look at the following statement:
letters = ['A', 'B', 'C', 'D']
a. What value is stored in letters[1]?

'B'

b. What value is stored in letters[3]?

'D'

c. What value is stored in letters[−2]?

'C'

3. What will the following code display?
values = [2, 4, 6, 8, 10]
print(values[1:3])

[4, 6]

4. What does the following code display?
numbers = [5, 4, 3, 2, 1, 0]
print(numbers[:3])

[5, 4, 3]

5. What does the following code display?
numbers = [1, 2, 3, 4, 5, 6, 7, 8]
print(numbers[−4:])

[5, 6, 7, 8]

6. What does the following code display?
values = [2] \* 5
print(values)

[2, 2, 2, 2, 2]