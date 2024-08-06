1. The ____________ programming practice is centered on creating functions that are 
separate from the data that they work on.

a. modular
#highlight[b. procedural]
c. functional
d. object-oriented

2. The ____________ programming practice is centered on creating objects.
  
a. object-centric
b. objective
c. procedural
#highlight[d. object-oriented]

3. A(n) ____________ is a component of a class that references data.
a. method
b. instance
#highlight[c. data attribute]
d. module

4. An object is a(n) ____________.
a. blueprint
b. cookie cutter
c. variable
#highlight[d. instance]

5. By doing this, you can hide a class's attribute from code outside the class.
a. avoid using the self parameter to create the attribute
#highlight[b. begin the attribute's name with two underscores]
c. begin the name of the attribute with private_ _
d. begin the name of the attribute with the \@ symbol

6. A(n) ______________ method gets the value of a data attribute but does not change it.
a. retriever
b. constructor
c. mutator
#highlight[d. accessor]

7. A(n) ______________ method stores a value in a data attribute or changes its value in 
some other way.
a. modifier
b. constructor
#highlight[c. mutator]
d. accessor

8. The ______________ method is automatically called when an object is created.
#highlight[a. _ _init_ _]
b. init
c. _ _str_ _
d. _ _object_ _

9. If a class has a method named _ _str_ _, which of these is a way to call the method?
a. you call it like any other method: object._ _str_ _()
#highlight[b. by passing an instance of the class to the built in str function]
c. the method is automatically called when the object is created
d. by passing an instance of the class to the built-in state function

10. A set of standard diagrams for graphically depicting object-oriented systems is 
provided by ______________.
#highlight[a. the Unified Modeling Language]
b. flowcharts
c. pseudocode
d. the Object Hierarchy System

11. In one approach to identifying the classes in a problem, the programmer identifies the 
______________ in a description of the problem domain.
a. verbs
b. adjectives
c. adverbs
#highlight[d. nouns]

12. In one approach to identifying a class's data attributes and methods, the programmer 
identifies the class's ______________.
#highlight[a. responsibilities]
b. name
c. synonyms
d. nouns

True or False
1. The practice of procedural programming is centered on the creation of objects.
#highlight[False]

2. Object reusability has been a factor in the increased use of object-oriented programming.
#highlight[True]

3. It is a common practice in object-oriented programming to make all of a class's data 
attributes accessible to statements outside the class.
#highlight[False]

4. A class method does not have to have a self parameter.
#highlight[False]

5. Starting an attribute name with two underscores will hide the attribute from code 
outside the class.
#highlight[True]

6. You cannot directly call the _ _str_ _ method.
#highlight[False]

7. One way to find the classes needed for an object-oriented program is to identify all of 
the verbs in a description of the problem domain.
#highlight[False]

Short Answer
1. What is meant by data hiding?

Data hiding refers to the practice of restricting direct access to an object's data attributes from outside the class. It's a principle of encapsulation in object-oriented programming that helps maintain data integrity and reduces dependencies between different parts of a program.

2. How are an object's data attributes made inaccessible to code outside the class 
definition?

Object's data attributes are made inaccessible to code outside the class definition by declaring them as private. In Python, this is typically done by prefixing the attribute name with two underscores (__). This triggers name mangling, making the attribute harder to access from outside the class.

3. What is the difference between a class and an instance of a class?

A class is a blueprint or template that defines the structure and behavior of objects. An instance of a class, also known as an object, is a concrete realization of that class with its own unique set of data attributes. Multiple instances can be created from a single class, each with its own state.

4. The following statement calls an object's method. What is the name of the method? 
What is the name of the variable that references the object?
wallet.get_dollar()

The name of the method is get_dollar().
The name of the variable that references the object is wallet.

5. When the _ _init_ _ method executes, what does the self parameter reference?

When the __init__ method executes, the self parameter references the newly created instance of the class. It allows the method to refer to and modify the instance's attributes.

6. In a Python class, how do you hide an attribute from code outside the class?

To hide an attribute from code outside the class in Python, prefix the attribute name with two underscores (__). This triggers name mangling, making the attribute harder to access directly from outside the class.

7. The _ _str_ _ method in Python returns a string representation of an object's state. 
Describe how the _ _str_ _ method is used to print the state of an object.

The __str__ method is automatically called when an object is passed to the print() function or when str() is called on the object. It should return a string that represents the object's state in a human-readable format. When you print an object, Python implicitly calls its __str__ method and displays the returned string.