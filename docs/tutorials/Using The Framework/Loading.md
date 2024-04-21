# Loading Modules

Nuclear is basically one big module loader. You specify where your code is and it loads them.

## Why Modules? I don't understand!

Modules are basically just normal scripts but with more accessibility! With normal scripts: if you have a function in one script and need to access it from other,
well - you cant! They also allow for more complex programming paradigms like OOP. 

# Loading modules

The API Reference is dead simple! Nuclear currently contains just one function: Start

```lua 
Nuclear:Start(Modules: table?)
```

You can specify which modules you would like Nuclear to load **OR** have Nuclear by default run all code
in ServerScriptService and StarterPlayerScripts.

## The default

??? example "Steps (click to expand)"
    - Put the following code in a **SCRIPT** and **LOCALSCRIPT** in
    **SERVERSCRIPTSERVICE** and **STARTERPLAYERSCRIPTS** respectively.
        
        - ```lua
            local Nuclear = require(game:GetService("ReplicatedStorage").Nuclear) -- Change this depending on where you have Nuclear installed.
            -- If you are doing it through wally and rojo, it will be in ReplicatedStorage/Modules/Nuclear.

            Nuclear:Start()
        ```

## Custom modules
??? example "Steps (click to expand)"
      - Your code will look very similar to the default, however you will get a 
        table with all the modules you may want to require.

      - A way we can do this is the following:
        - ```lua 
            -- Nuclear require removed for clarity

            local Modules = {}

            for _, Module in game.ServerScriptService.Directory:GetChildren() do
                if Module.Name == "$Service" then
                    table.insert(Modules, Module)
                end
            end

            Nuclear:Start(Modules)
        ```

    - This means that only scripts in the directory, which end in "Service" willl be loaded by Nuclear!
  
