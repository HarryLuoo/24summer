1. A file that data is written to is known as a(n) .
a. input file
#highlight[b. output file]
c. sequential access file
d. binary file

2. A file that data is read from is known as a(n) .
#highlight[a. input file]
b. output file
c. sequential access file
d. binary file

3. Before a file can be used by a program, it must be .
a. formatted
b. encrypted
c. closed
#highlight[d. opened]

4. When a program is finished using a file, it should do this.
a. erase the file
b. open the file
#highlight[c. close the file]
d. encrypt the file

5. The contents of this type of file can be viewed in an editor such as Notepad.
#highlight[a. text file]
b. binary file
c. English file
d. human-readable file

6. This type of file contains data that has not been converted to text.
a. text file
#highlight[b. binary file]
c. Unicode file
d. symbolic file

7. When working with this type of file, you access its data from the beginning of the file to the end of the file.
a. ordered access
b. binary access
c. direct access
#highlight[d. sequential access]

8. When working with this type of file, you can jump directly to any piece of data in the file without reading the data that comes before it.
a. ordered access
b. binary access
#highlight[c. direct access]
d. sequential access

9. This is a small “holding section” in memory that many systems write data to before writing the data to a file.
#highlight[a. buffer]
b. variable
c. virtual file
d. temporary file

10. This marks the location of the next item that will be read from a file.
a. input position
b. delimiter
c. pointer
#highlight[d. read position]

11. When a file is opened in this mode, data will be written at the end of the file’s existing contents.
a. output mode
#highlight[b. append mode]
c. backup mode
d. read-only mode

12. This is a single piece of data within a record.
#highlight[a. field]
b. variable
c. delimiter
d. subrecord

13. When an exception is generated, it is said to have been __________.
a. built
#highlight[b. raised]
c. caught
d. killed



1.  This is a section of code that gracefully responds to exceptions.
a. exception generator
b. exception manipulator
#highlight[c. exception handler]
d. exception monitor

1.  You write this statement to respond to exceptions.
a. run/handle
#highlight[b. try/except]
c. try/handle
d. attempt/except

True or False

1. When working with a sequential access file, you can jump directly to any piece of data in the file without reading the data that comes before it.
False

1. When you open a file that already exists on the disk using the 'w' mode, the contents of the existing file will be erased.
True

1. The process of opening a file is only necessary with input files. Output files are automatically opened when data is written to them.
False

1. When an input file is opened, its read position is initially set to the first item in the file.
True

1. When a file that already exists is opened in append mode, the file’s existing contents are erased.
False

1. If you do not handle an exception, it is ignored by the Python interpreter, and the program continues to execute.
False

1. You can have more than one except clause in a try/except statement.
True

1. The else suite in a try/except statement executes only if a statement in the try suite raises an exception.
False

1. The finally suite in a try/except statement executes only if no exceptions are raised by statements in the try suite.
False

Short Answer

1. **Describe the three steps that must be taken when a file is used by a program.**
   - **Opening the File**: The file must be opened using a file open function, which prepares it for reading or writing.
   - **Processing the File**: The program reads from or writes to the file as needed.
   - **Closing the File**: The file must be closed to ensure all data is properly saved and resources are released.

2. **Why should a program close a file when it’s finished using it?**
   - Closing a file ensures that all data is properly written to the file and that system resources associated with the file are released. It also helps prevent data corruption and allows other programs to access the file.

3. **What is a file’s read position? Where is the read position when a file is first opened for reading?**
   - A file's read position is the location within the file where the next read operation will start. When a file is first opened for reading, the read position is set to the beginning of the file.

4. **Which mode should a file be opened in to allow data to be written to it, erasing any previous data?**
   - The file should be opened in 'w' (write) mode to allow data to be written to it, erasing any previous data.

5. **If a file does not exist and a program attempts to open it in append mode, what happens?**
   - If a file does not exist and a program attempts to open it in append mode ('a'), the file is created.