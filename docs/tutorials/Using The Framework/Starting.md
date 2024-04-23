# Starting Code

Code in Nuclear is very easy to start and has a very similar syntax to frameworks like Knit.

Firstly, your code is normal modulescripts and you don't need to predefine any service name or client tables.

## Module:Init

Nuclear allows you to initialise code to be ran before other modules have loaded.

This is through the syntax

```
function Module:Init(nil)

end
```

## Module:Start

Nuclear also allows you to start your code with the guarantee that other modules have been loaded.

This function has a similar syntax to Module:Init()

```
function Module:Start(nil)

end
```

No arguments are passed from either function call.
