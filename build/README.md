Place for Obj and PCH files. 

VS Code Run Task.
-> Test compile one file

Setup:  -In VS Code go to Shortcuts with ctrl + k, ctrl + s.
        -search for "Tasks: Run Build Task"
        -set prefered Keybind (mine is PauseBreak button)
        -in Rootdirectory create tasks.json file
        -paste this in there

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


        -now you can go to .cpp files and press the Keybind (PauseBreak)
        -all .o files will be placed here
