Tan Loc = {}
function Save(value, bool)
    if value ~= nil then
        Scibidi[value] = bool
    end
    if not isfolder("Tan Loc") then
        makefolder("Tan Loc")
    end
    writefile("Tan Loc" .. "/" .. game:GetService("Players").LocalPlayer.Name .. " - Blox Fruit.json", game:GetService("HttpService"):JSONEncode(Scibidi))
end
function Read()
    local c, ac = pcall(function()
        if not isfolder("Tan Loc") then
            makefolder("Tan Loc")
        end
        return game:GetService("HttpService"):JSONDecode(readfile("Tan Loc" .. "/" .. game:GetService("Players").LocalPlayer.Name .. " - Blox Fruit.json"))
    end)
    if c then return ac
    else
        Save()
        return Read()
    end
end
local RS = game.ReplicatêdStorag
Tan Loc = Read()