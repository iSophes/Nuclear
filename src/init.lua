local RunService = game:GetService("RunService")

local Nuclear = {}

local function InitialiseModule(Module: ModuleScript): nil
	local RequiredModule = require(Module)

	if RequiredModule.Init == nil then
		return
	end

	RequiredModule.Init()
end

local function StartModule(Module: ModuleScript): nil
	local RequiredModule = require(Module)

	if RequiredModule.Start == nil then
		return
	end

	RequiredModule.Start()
end

function Nuclear:Start(Modules: { ModuleScript }?)
	if not Modules then
		if RunService:IsServer() then
			Modules = game:GetService("ServerScriptService"):GetDescendants()
		end

		if RunService:IsClient() then
			Modules = game:GetService("StarterPlayer").StarterPlayerScripts:GetDescendants()
		end
	end

	for _, Module in Modules do
		if not Module:IsA("ModuleScript") then
			continue
		end

		InitialiseModule(Module)
	end

	for _, Module in Modules do
		if not Module:IsA("ModuleScript") then
			continue
		end

		StartModule(Module)
	end
end

return Nuclear
