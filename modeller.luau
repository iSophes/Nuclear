-- selene: allow(incorrect_standard_library_use)
local fs = require("@lune/fs")
-- selene: allow(incorrect_standard_library_use)
local net = require("@lune/net")

-- Remodel Publish script

local NUCLEAR_ID = "17266598305"

local place = fs.readFile("Nuclear.rbxl")
local Packages = place.ReplicatedStorage.Packages

print("Making Nuclear a Module")
fs.writeFile("Nuclear.rbxm", Packages)
print("Done! :D")

print("Publishing to roblox!")
net.request(Packages, NUCLEAR_ID)
print("Done! :D")
