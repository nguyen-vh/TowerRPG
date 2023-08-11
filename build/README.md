Place for Obj and PCH files. 



One Way is to use Makefile.
In the src/ Directory is a makefile which does the same.
To run it go to the Directory and type "make 0=" and then the cpp file without the ".cpp"
example: "make 0=Game"

Another Way is VS Code Run Task. (more convenient way)
-> Test compile one file

Setup:  -In VS Code go to Shortcuts with ctrl + k, ctrl + s
        -search for "Tasks: Run Build Task"
        -set prefered Keybind (mine is PauseBreak button)
        -in Rootdirectory create tasks.json file
        -paste this in there
        -now you can go to .cpp files and press the Keybind (PauseBreak)
        -all .o files will be placed here


        {
    "tasks": [
        {
            "label": "Compile Files *.o",
            "type": "shell",
            "command": "g++",
            "args": [
                "-std=c++23",
                "-I../include",
                "-DSFML_STATIC",
                "-g",
                "-c",
                "-o",
                "../build/${fileBasenameNoExtension}.o",
                "${fileBasename}",
                "-include",
                "../include/stdafx.hpp"
            ],
            "options": {
                "cwd": "${fileDirname}"
            },
            "problemMatcher": [
                "$gcc"
            ],
            "group": "build"
        }
    ],
    "version": "2.0.0" }




        
