# Introduction to MATLAB

Hello everyone!
Welcome to this tutorial.
MATLAB is an interactive software focused on numeric calculus.
The objective of this tutorial is to provide you the basic skills necessary for proficiently using this software and its main features.

### Installation
Luckily, Instituto Superior Técnico provides a detailed tutorial on how to install it. You can find it [here](http://si.tecnico.ulisboa.pt/software/matlab/).

## Index
1. [Basics](https://github.com/Afonsocraposo/matlab-introduction#basics)
    1. [Default Layout](https://github.com/Afonsocraposo/matlab-introduction#default-layout)
    2. [Command Window](https://github.com/Afonsocraposo/matlab-introduction#command-window)
    3. [Workspace](https://github.com/Afonsocraposo/matlab-introduction#workspace)
    4. [Script Editor](https://github.com/Afonsocraposo/matlab-introduction#script-editor)
    5. [Current Folder](https://github.com/Afonsocraposo/matlab-introduction#current-folder)
2. [Matrices and Arrays](https://github.com/Afonsocraposo/matlab-introduction#matrices-and-arrays)
3. [Plots](https://github.com/Afonsocraposo/matlab-introduction#plots)
4. [Images](https://github.com/Afonsocraposo/matlab-introduction#images)
5. [Functions](https://github.com/Afonsocraposo/matlab-introduction#functions)
6. [Conditional Statements](https://github.com/Afonsocraposo/matlab-introduction#conditional-statements)
7. [Loops](https://github.com/Afonsocraposo/matlab-introduction#loops)
8. [Debugging](https://github.com/Afonsocraposo/matlab-introduction#debugging)
9. [First Project](https://github.com/Afonsocraposo/matlab-introduction#first-project)
    1. [Loading the Video](https://github.com/Afonsocraposo/matlab-introduction#loading-the-video)
    2. [Extracting Features](https://github.com/Afonsocraposo/matlab-introduction#extracting-features)
    3. [Plotting the Signal](https://github.com/Afonsocraposo/matlab-introduction#plotting-the-signal)
    4. [Final](https://github.com/Afonsocraposo/matlab-introduction#final)
    5. [Challenge](https://github.com/Afonsocraposo/matlab-introduction#challenge)
10. [Conclusion](https://github.com/Afonsocraposo/matlab-introduction#conclusion)
 
## Basics
### Default Layout

![](https://raw.githubusercontent.com/Afonsocraposo/matlab-introduction/master/images/default.png "MATLAB screen")<br>
So this is the screen you arrive at when you first launch MATLAB.
It may seem like a lot of stuff at first, but as you can see, some regions are labeled:
1. The top bar shows some basic functions like opening a file or creating a new one. You can also access settings and other features.
2. This panel indicates the directory we're in. This indicates that the current folder is part of the current scope, so any function or file inside the current directory is accessible by our code.
3. The `Workspace` shows all the variables currently in memory and a detailed view of these can be accessed by double-clicking them.
4. The `Command Window`, as the name says, is a window where you write commands. You can write any command and press `Enter` to immediately execute it.

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
**Tip:** Pressing the `Up` key you can iterate through the previous commands.
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

**Tip:** If you press the `Tab` key while writing on the `Command Window`, MATLAB will prompt you with auto-completion.

### Workspace
If you've been paying attention, you may have noticed that the panel `Workspace` has some new information:
![](https://raw.githubusercontent.com/Afonsocraposo/matlab-introduction/master/images/workspace.png "Workspace variables")<br>
Our variable `a` is listed here as well as an `ans` variable. The latter contains the output of the last command ran and can also be used:
```matlab
>> ans-4

ans =

     1
```
If you double click on a variable on the `Workspace` panel,  you can see a detailed view of it:
![](https://raw.githubusercontent.com/Afonsocraposo/matlab-introduction/master/images/variable-editor.png "Variable editor")<br>
Here you can easily edit it.

### Script Editor
A script is a text file containing code that our program can read and execute. This very helpful if you want to write code and repeat it,
To create one, make sure you're one the `HOME` tab and press the button indicating `New Script`.
This will open a new window:
![](https://raw.githubusercontent.com/Afonsocraposo/matlab-introduction/master/images/script.png "Script editor")<br>
In this new window, you can edit the newly created script and later execute it.
For example, let's put everything we did on the `Command Window` on our new script:
```matlab
1+1
a=2
10/a
ans-4
```
You should then save the script by pressing the `Save` button on the top bar, save it as `example.m`, and then press `Run` to run the script and execute all the written commands.
You should see the output of the script on the `Command Window`:
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
But sometimes you don't want the `Command Window` to display every output of the commands of your script. In MATLAB you can suppress the output of a command by appending `;` to the end of the command.
For example, replace your script with the following:
```matlab
a=1+1;
b=a+3;
b*2
```
As you can expect, `a=2` and `b=5`, but since we suppressed their output, the only output of our script when ran is:
```matlab
>> example

ans =

    10
```
### Current Folder
If you watch the left panel, you can see that you have a file called `example.m` which is the created script. Using this panel, you can manage the files on your current directory.
![](https://raw.githubusercontent.com/Afonsocraposo/matlab-introduction/master/images/file-manager.png "Current folder")<br>
For example, try duplicating the `example.m` file by right-clicking it, selecting copy, and then pasting it. You'll create a new file called `Copy_of_example.m`. If you double click it, you'll open it on your Script Editor.
You can write anything you want on this new script and you won't lose the contents of our first script.
If you write the name of a script on the `Command Window` and press `Enter` you'll ask MATLAB to run that script:
```matlab
>> Copy_of_example

ans =

    10
```
## Matrices and Arrays
MATLAB makes it easy to work with matrices.
To create a matrix, you can simply write the following:
```matlab
>> a=[1,2,3;4,5,6;7,8,9]

a =

     1     2     3
     4     5     6
     7     8     9
```
And as you can see a `3x3` matrix is created.
But imagine you want to create a matrix with `100x200` elements all equal to `0`. Writing one-by-one is not efficient, luckily, MATLAB allows you to create an empty matrix by:
```matlab
zeros(100,200);
```
If you want to create a matrix with the same number of elements, but all equal to `3`, you can do:
```matlab
ones(100,200)*3;
```
There's also a function to generate the identity matrix:
```matlab
>> eye(3,3)

ans =

     1     0     0
     0     1     0
     0     0     1
```
You can alter specific elements of the matrix:
```matlab
>> a=zeros(3,3);
>> a(2,1)=3

a =

     0     0     0
     3     0     0
     0     0     0

>> a(:,2)=4

a =

     0     4     0
     3     4     0
     0     4     0
```
Note that when you use `:` you select all the elements of the specified row or column.
You can check the size of the matrix using the `size` function:
```matlab
>> [M,N]=size(a)

M =

     3


N =

     3
```
You can ommit the output of a function using a `~`:
```matlab
>> [M,~]=size(a)

M =

     3
```
Now, if you want to generate an array with numbers from `0` to `10`, you can do it by writing:
```matlab
>> 1:10

ans =

     1     2     3     4     5     6     7     8     9    10
```
You can also specify the step taken. If you want a step equal to `3`, you can do so:
```matlab
>> 1:3:10

ans =

     1     4     7    10
```

Now let's start doing some simple operations using matrices and arrays.
You can sum:
```matlab
[1,2,3;4,5,6;7,8,9]+ones(3,3)

ans =

     2     3     4
     5     6     7
     8     9    10
```
And subtract, of course.
A multiplication (dot product) is done by:
```matlab
>> [1,2,3;4,5,6;7,8,9]*ones(3,3)

ans =

     6     6     6
    15    15    15
    24    24    24
```
If you want to multiply each element by the element in the same position on the other matrix, you can do so:
```matlab
>> [1,2,3;4,5,6;7,8,9].*ones(3,3)

ans =

     1     2     3
     4     5     6
     7     8     9
```
The same applies to division.

## Plots
MATLAB supports a wide range of graphs.
You can create a simple line plot:
```matlab
x=1:10;
y=x.^2;
plot(x,y) 
```
![](https://raw.githubusercontent.com/Afonsocraposo/matlab-introduction/master/images/plot.png "Plot")<br>
It's possible to specify a title, a label for each axis and also the domain of the plot:
```matlab
title("Example")
xlabel("x")
ylabel("y")
xlim([3,6])
```
![](https://raw.githubusercontent.com/Afonsocraposo/matlab-introduction/master/images/plot2.png "Customized plot")<br>
**Tip:** If you wish to further customize your plots, you can read the documentation by writing the following on the `Command Window`:
```matlab
>> help plot
 plot   Linear plot. 
    plot(X,Y) plots vector Y versus vector X. If X or Y is a matrix,
    then the vector is plotted versus the rows or columns of the matrix,
    whichever line up.  If X is a scalar and Y is a vector, disconnected
    line objects are created and plotted as discrete points vertically at
    X.
 
    plot(Y) plots the columns of Y versus their index.
    If Y is complex, plot(Y) is equivalent to plot(real(Y),imag(Y)).
    In all other uses of plot, the imaginary part is ignored.
 (...)
``` 
You can also do:
```matlab
doc plot
```
![](https://raw.githubusercontent.com/Afonsocraposo/matlab-introduction/master/images/doc.png "doc command")<br>
 Besides the `plot` command, you can also use other commands that will display your data in different ways, and even display different plots in the same Figure:
```matlab
subplot(1,2,1)
scatter(x,y)
subplot(1,2,2)
bar(x,y)
```
![](https://raw.githubusercontent.com/Afonsocraposo/matlab-introduction/master/images/subplots.png "Different types of plots")<br>

## Images
You can also visualize images and process them.
An example image can be load and visualized with the following commands:
```matlab
corn_gray = imread('corn.tif',3);
imshow(corn_gray)
```
![](https://raw.githubusercontent.com/Afonsocraposo/matlab-introduction/master/images/corn_gray.png "Example image.")<br>
The image is represented as a `MxN` matrix and, therefore, you can do all sorts of processing on that image, for example:
```matlab
subplot(1,3,1)
imshow(corn_gray-50)
subplot(1,3,2)
imshow(corn_gray*2)
subplot(1,3,3)
imshow(corn_gray(32:64,:))
```
![](https://raw.githubusercontent.com/Afonsocraposo/matlab-introduction/master/images/images.png "Different images operations")<br>

## Functions
You should organize your code in functions, which make your life a lot easier!
To create a function, you have to define a name for it, the output it takes and the output it returns.
Create a new script, paste the following and save it as `example_function.m`. 
```matlab
function [output1, output2] = example_function(input1, input2)
    a = input1 + 2;
    output1 = a^2;
    output2 = input2 * 3;   
end
```
You can then run the script by simply typing on the `Command Window`:
```matlab
>> example_function(32,17)

ans =

        1156
```
## Conditional Statements

```matlab
a=10;
if a>20 
    disp(1);
elseif a<10
    disp(2);
else
    disp(3);
end
```
If you run the above code, the number `3` is printed.
You can also use more complex conditions:
```matlab
a=10;
if a>20 || a<10 % or
    disp(1);
elseif a<20 && a>15 % and
    disp(2);
else
    disp(3);
end
```
## Loops
If you want to repeat some action many times, you should probably use a loop.
You can use a `while` loop:
```matlab
i=1;
while i<=10
   disp(i);
   i=i-1;
end
```
Which will print every number from 1 to 10.
You can also do this with a `for` loop:
```matlab
for i=1:10
   disp(i);
end
```
You can, of course, specify the step of the `for` loop as specified in the previous [section](https://github.com/Afonsocraposo/matlab-introduction#matrices-and-arrays).
It's also possible to iterate over an array by doing:
```matlab
a=[2,4,1,7];
for i=a
   disp(i); 
end
```
Which prints every member of the `a` array.


## Debugging
MATLAB has a life-saving feature, you can debug your code and verify the program state in each step.
The debugging mode can only be used when running a script.
Let's debug the following script:
```matlab
function b = debug()
    a=1:10;
    b=0;
    L = size(a);
    for i=1:L
        b=(a(i)+a(i+1))/i;
    end
end
```
To start debugging, click on the `-` next to the line number of the line you which to debug (for example):
![](https://raw.githubusercontent.com/Afonsocraposo/matlab-introduction/master/images/debug.png "Debug")<br>
And then press the `Run` button. You'll notice that the program will pause its execution when it arrives at that breakpoint.
You can now check each declared variable value on the `Workspace` panel and can also use the `Command Window` to execute commands over the program variables during execution:
```matlab
K>> a*2

ans =

     2     4     6     8    10    12    14    16    18    20
```
You then can go through the code step-by-step by clicking on the `Step` button on the `Top Bar`. The `Workspace` panel will update its variables during each step.
You can further explore this feature and you'll see how helpful it can be!

## First Project - PPG from Smartphone Camera
You're now ready for a simple project! 
Imagine you want to extract the [PPG](https://en.wikipedia.org/wiki/Photoplethysmogram) from a video.
You can record a video of your finger covering your phone back camera and flash (remain very still) or you can use the [example](https://github.com/Afonsocraposo/matlab-introduction/blob/master/first-project/ppg.mp4) video.

### Loading the Video
The first step is loading a video.
```matlab
video = VideoReader('ppg.mp4');
```
After loading a video you'll have a video object. The video object has many properties. We can check, for example, the number of frames:
```matlab
>> video.NumFrames

ans =

   217
```

### Extracting Features
The next step is extracting the PPG signal from our video. We then need to iterate over each frame and do some processing on it:
```matlab
signal = zeros(1,video.NumFrames);
i=1;
while hasFrame(video)
    frame = readFrame(video);
    % do something
    i=i+1;
end
```
To extract the PPG signal, we can take one of the color channels, for example, the red one (1st color channel - RGB), and average the pixels intensity value. This average value will vary according to blood flow.
```matlab
while hasFrame(video)
    frame = readFrame(video);
    signal(i)=mean(frame(:,:,1),'all');
    i=i+1;
end
```
We now end up with a one-dimensional array that corresponds to our PPG.

### Plotting the Signal
Now the PPG signal can be simply plotted by doing:
```matlab
plot(ppg)
```
![](https://github.com/Afonsocraposo/matlab-introduction/raw/master/images/ppg.png "PPG signal")<br>

### Final
The complete version of this code is:
```matlab
video = VideoReader('ppg.mp4');
signal = zeros(1,video.NumFrames);
i=1;
while hasFrame(video)
    frame = readFrame(video);
    signal(i)=mean(frame(:,:,1),'all');
    i=i+1;
end
plot(signal)
```
This simple code is capable of extracting the PPG signal from a simple video.

### Challenge
Try to calculate the heart rate from the same video.

## Conclusion
Now you're capable of independently exploring MATLAB and all of its features.
If you have any doubt, you can open an issue in this repository, or directly contact me at [afonsocraposo@gmail.com](mailto:afonsocraposo@gmail.com)
