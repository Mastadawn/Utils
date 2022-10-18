repeat task.wait() until game:IsLoaded()

local lp = game:GetService("Players").LocalPlayer

function gr(t)
    for x, z in pairs(t) do
        if z == "Client" then
            local b = t[x + 1]
            return b
        end
    end
    return ""
end

local KnitClient = debug.getupvalue(require(lp.PlayerScripts.TS.knit).setup, 6)
local Client = require(game:GetService"ReplicatedStorage".TS.remotes).default.Client
local Consume = gr(debug.getconstants(debug.getproto(getmetatable(KnitClient.Controllers.ConsumeController).onEnable, 1)))

Bedwars = {
    SwordInfo = {
        [1] = { Name = "wood_sword", Display = "Wood Sword", Rank = 1 },
        [2] = { Name = "stone_sword", Display = "Stone Sword", Rank = 2 },
        [3] = { Name = "iron_sword", Display = "Iron Sword", Rank = 3 },
        [4] = { Name = "diamond_sword", Display = "Diamond Sword", Rank = 4 },
        [5] = { Name = "emerald_sword", Display = "Emerald Sword", Rank = 5 },
        [6] = { Name = "rageblade", Display = "Rage Blade", Rank = 6 },
    },
    PickupRemote = Client:Get(gr(debug.getconstants(getmetatable(KnitClient.Controllers.ItemDropController).checkForPickup))),
    ChestObserve = game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged["Inventory:SetObservedChest"],
    ChestGet = game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged["Inventory:ChestGetItem"],
    ChestGive = game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged["Inventory:ChestGiveItem"],
    GroundHit = game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged.GroundHit,
    AbilityRemote = game:GetService("ReplicatedStorage"):FindFirstChild("events-@easy-games/game-core:shared/game-core-networking@getEvents.Events").useAbility,
    PurchaseItem = game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged.BedwarsPurchaseItem,
    AttackRemote = Client:Get(gr(debug.getconstants(getmetatable(KnitClient.Controllers.SwordController)["attackEntity"])))["instance"],
    PaintRemote = Client:Get(gr(debug.getconstants(KnitClient.Controllers.PaintShotgunController.fire))),
    Eat = Client:Get(Consume),
    SwordController = KnitClient.Controllers.SwordController,
}

return Bedwars
