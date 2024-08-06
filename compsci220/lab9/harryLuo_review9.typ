Multiple Choice

1. You can use the ________ operator to determine whether a key exists in a dictionary.
a. &
#highlight[b. in]
c. \ˆ
d. ?

2. You use ________ to delete an element from a dictionary.
a. the remove method
b. the erase method
c. the delete method
#highlight[d. the del statement]

3. The ________ function returns the number of elements in a dictionary.
a. size()
#highlight[b. len()]
c. elements()
d. count()

4. You can use ______ to create an empty dictionary.
#highlight[a. {}]
b. ()
c. []
d. empty()

5. The ________ method returns a randomly selected key-value pair from a dictionary.
a. pop()
b. random()
#highlight[c. popitem()]
d. rand_pop()

6. The ________ method returns the value associated with a specified key and removes 
that key-value pair from the dictionary.
#highlight[a. pop()]
b. random()
c. popitem()
d. rand_pop()

7. The ________ dictionary method returns the value associated with a specified key. 
If the key is not found, it returns a default value.
a. pop()
b. key()
c. value()
#highlight[d. get()]

8. The ________ method returns all of a dictionary's keys and their associated values as 
a sequence of tuples.
a. keys_values()
b. values()
#highlight[c. items()]
d. get()

9. The following function returns the number of elements in a set:
a. size()
#highlight[b. len()]
c. elements()
d. count()

10. You can add one element to a set with this method.
a. append
#highlight[b. add]
c. update
d. merge

11. You can add a group of elements to a set with this method.
a. append
b. add
#highlight[c. update]
d. merge

12. This set method removes an element, but does not raise an exception if the element is 
not found.
a. remove
#highlight[b. discard]
c. delete
d. erase

13. This set method removes an element and raises an exception if the element is not 
found.
#highlight[a. remove]
b. discard
c. delete
d. erase

14. This operator can be used to find the union of two sets.
#highlight[a. |]
b. &
c. −
d. ˆ

15. This operator can be used to find the difference of two sets.
a. |
b. &
#highlight[c. −]
d. ˆ

16. This operator can be used to find the intersection of two sets.
a. |
#highlight[b. &]
c. −
d. ˆ

17. This operator can be used to find the symmetric difference of two sets.
a. |
b. &
c. −
#highlight[d. ˆ]

True or False

1. The keys in a dictionary must be mutable objects.
#highlight[False]

2. Dictionaries are not sequences.
#highlight[True]

3. A tuple can be a dictionary key.
#highlight[True]

4. A list can be a dictionary key.
#highlight[False]

5. The dictionary method popitem does not raise an exception if it is called on an empty 
dictionary.
#highlight[False]

6. The following statement creates an empty dictionary:
mydct = {}
#highlight[True]

7. The following statement creates an empty set:
myset = ()
#highlight[False]

8. Sets store their elements in an unordered fashion.
#highlight[True]

9. You can store duplicate elements in a set.
#highlight[False]

10. The remove method raises an exception if the specified element is not found in the 
set
#highlight[True]

Short Answer

1. 2

2. 1

3. Not found

4. It'll raise a KeyError because 2 isn't a key in the months dictionary.

5. You can use the del statement, like this: del dictionary[key]

6. Use the len() function on the dictionary

7. 4

8. It'll print:
   1
   2
   3
   (Maybe in a different order though, since dictionaries aren't ordered)

9. {'S', 'a', 't', 'u', 'r', 'n'}

10. This will cause an error. You can't make a set from an integer.

11. {'a', ' ', 'b', 'c', 'd'}

12. {2, 4, 6}

13. {'a', 'bb', 'ccc', 'dddd'}

14. 5

15. {10, 20, 30, 40, 50, 60}

16. {'p', 's'}
    These are the elements that appear in both set1 and set2.

17. {'f'}
    This is the element in set1 that's not in set2.

18. {'a', 'b', 'c'}
    These are the elements in set2 that aren't in set1.

19. {1, 4}
    These are the elements that are in either set1 or set2, but not in both.

20. The intersection of set1 and set2 would be an empty set {}, because they have no common elements.

    The union of set1 and set2 would give the same result as their symmetric difference in this case, because they have no elements in common. Both operations would result in {'a', 'b', 'c', 'd', 'e', 'f'}.