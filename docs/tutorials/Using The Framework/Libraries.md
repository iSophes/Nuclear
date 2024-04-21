# Using Libraries

Nuclear comes with a range of libraries which users can use. These can be removed and added at the user's will. 
You can also remove all the libraries and use wally for your libraries if you so wish. 

## List of Libraries

The following Libraries are currently implemented into Nuclear and you can click on them for their documentation or github.
All versions listed are versions currently in Nuclear. 

- [Fusion V0.2](https://elttob.uk/Fusion/0.2/) 
- [Promise V4.0.0](https://eryn.io/roblox-lua-promise)
- [Red V2.3.0](https://red.redblox.dev/)
- [Maid (Version Unknown)](https://quenty.github.io/NevermoreEngine/api/Maid)
- [Signal V2.0.1](https://sleitnick.github.io/RbxUtil/api/Signal/)

## Installing and removing libraries

Nuclear is designed for you to be able to install and remove libraries as you wish.

### Using Studio
??? example "Steps (click to expand)"

    - Go to **ReplicatedStorage -> Nuclear -> Modules** and insert your library. 
    One idea is to create a new modulescript and paste your code in that if your
    library is one script.

### Using Rojo

There are a couple methods when using rojo. You can either:
      - A: Remove Nuclear/Modules and fully use wally packages to manage your packages.
      - B: Install your packages in Nuclear.
  
Both steps are self-explanatory and I will not go in depth on how to use wally.
The below steps will explain how to use step B

??? example "Steps for method B (click to expand)"

    - Create a new folder in your Nuclear Modules directory. 
    - Create a new lua file named init.lua 
    - If your code is a single script, paste all the code in this. If it isn't, read on.
    - Paste your library into this new folder and then write the following code into init.lua
    - ```
        return script.Parent["FolderName/MainModule"]
    ```
    - This will give you full intellisense, so don't worry about losing on that!
  
That's how you install libraries with Nuclear. Very simple.