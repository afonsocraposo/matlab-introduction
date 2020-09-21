# Introduction to MATLAB

Hello everyone!
Welcome to this MATLAB tutorial.
Matlab is a interactive software focused on numeric calculus.
The objective of this tutorial is providing you the basic skills necessary for proficiently using MATLAB and its main features.

### Installation
Luckily, Instituto Superior Técnico provides a detailed tutorial on how to install it. You find it [here](http://si.tecnico.ulisboa.pt/software/matlab/).

## Basics
### Default Layout
![alt text](https://github.com/adam-p/markdown-here/raw/master/src/common/images/icon48.png "MATLAB screen")
So this is the screen you arrive to when you first launch MATLAB.
It may seem like a lot of stuff at first, but let's explore it:
![alt text](https://github.com/adam-p/markdown-here/raw/master/src/common/images/icon48.png "MATLAB screen legend")
1. The topbar shows some basic functions like opening a file or creating a new one. You can also access settings and other features.
2. This panel indicates the directory we're in. This indicates that the current folder is part of the current scope, so any function or file inside the current directory is accessible by our code.
3. The workspace shows all the variables currently in memory and a detailed view of these can be accessed by double clicking them.
4. The command window, as the name says, is a window where you write commands. You can write any command and press `Enter` to immediately execute it.
*Pressing the `Up` key you can iterate through the previous commands.*

### Command Window
Let's experiment! Write the following:
```matlab
1+1
```
And press ``Enter``.
You'll see:
```matlab
>> 1+1

ans =

     2
```
You can do anything here!
For example, let's assign a variable:
```matlab
a = 2
```
And press `Enter`:
```matlab
>> a=2

a =

     2

```
Now you can use this variable anywhere. Let's use the variable `a` in a simple calculus:
```matlab
10/a
```
The result is:
```matlab
>> 10/a

ans =

     5
```
### Workspace
If you've been paying attention, you may have noticed that the panel Workspace has some new information:
![alt text](https://github.com/adam-p/markdown-here/raw/master/src/common/images/icon48.png "Workspace variables")
Our variable `a` is listed here as well as an `ans` variable. The latter contains the output of the last command ran and can also be used:
```matlab
>> ans-4

ans =

     1
```
If you double click on a variable on the workspace panel,  you can see a detailed view of it:
![alt text](https://github.com/adam-p/markdown-here/raw/master/src/common/images/icon48.png "Variable editor")
Here you can easily edit it.

### Script Editor
A script is a text file containing code that our program can read and execute. This very helpful if you want to write code and repeat it,
To create one, make sure you're one the `HOME` tab and press the button indicating `New Script`.
This will open a new window:
![alt text](https://github.com/adam-p/markdown-here/raw/master/src/common/images/icon48.png "Script editor")
In this new window you can edit the newly created script and later execute it.
For example, let's put everything we did on the `Command window` on our new script:
```matlab
1+1
a=2
10/a
ans-4
```
You should then save the script by pressing the `Save` button on the topbar, save it as `example.m`, and then press `Run` to run the script and execute all the written commands.
You should see the output of the script on the `Command window`:
```matlab

>> example

ans =

     2


a =

     2


ans =

     5


ans =

     1
```
But sometimes you don't want the `Command window` to display every output of the commands of your script. In MATLAB you can suppress the output of a command by appending `;` to the end of the command.
For example, replace your script with the following:
```matlab
a=1+1;
b=a+3;
b*2
```
As you can expect, `a=2`and `b=5`, but since we suppressed their output, the only output of our script when ran is:
```matlab
>> example

ans =

    10
```
### Current folder
If you watch the left panel, you can see that you have a file called `example.m` which is the created script. Using this panel, you can manage the files on your current directory.
![alt text](https://github.com/adam-p/markdown-here/raw/master/src/common/images/icon48.png "Current folder")
For example, try duplicating the `example.m` file by right clicking it, selecting copy and the pasting it. You'll create a new file called `Copy_of_example.m`. If you double click it, you'll open it on your Script Editor.
You can write anything you want on this new script and you won't lose the contents of our first script.
If you write the name of a script on the `Command window` and press `Enter` you'll ask MATLAB to run that script:
```matlab
>> Copy_of_example

ans =

    10
```
**Tip:** If you press the `Tab` key while writing on the command window, MATLAB will prompt you with auto-completion.
 
