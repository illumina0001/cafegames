

local Animate = game.Players.LocalPlayer.Character.Animate
if  getgenv().AnimationPack == "Knight" then

	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=657595757"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=657568135"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=657552124"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=657564596"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=658409194"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=658360781"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=657600338"

elseif  getgenv().AnimationPack == "Astronaut" then
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=891621366"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=891633237"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=891667138"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=891636393"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=891627522"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=891609353"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=891617961"

elseif getgenv().AnimationPack == "Werewolf" then
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1083195517"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1083214717"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1083178339"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1083216690"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083218792"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1083182000"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1083189019"
end


plr = game.Players.LocalPlayer



spawn(function()
	plr.Character.HumanoidRootPart.CFrame = CFrame.new(-16, 21, 57)----tp outside
end)

botversion = "V1"
local name = "Returner BOT Frappe Edition"
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("["..name.."]: "..botversion.." has loaded.","All")
game.StarterGui:SetCore("SendNotification", {
	Title = "Returner BOT";
	Text = "Returner BOT Loaded! originally By NathanReturns additions by mo_on";
	Duration = 5;
})

local Player = game.Players.LocalPlayer
local HumanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
local Humanoid = game.Players.LocalPlayer.Character.Humanoid

local Character = Player.Character
Player.CharacterAdded:Connect(function()
	repeat task.wait() until Player.Character
	Character = Player.Character
end)


local PathfindingService = game:GetService("PathfindingService")
local function getPath(destination)
    local pathParams = {
        ["AgentCanJump"] = true
    }
    local path = PathfindingService:CreatePath(pathParams)

    path:ComputeAsync(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, destination.Position)
    return path
end
local Pathfinding = game:GetService("PathfindingService")
local function walkTo(destination)
    local path = getPath(destination)

    for index, waypoint in pairs(path:GetWaypoints()) do
        humanoid:MoveTo(waypoint.Position)
        humanoid.MoveToFinished:Wait()
    end
end
game:GetService('RunService').RenderStepped:connect(function()
if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
    game.Players.LocalPlayer.Character.Humanoid.Jump = true
end

end)
local Path = Pathfinding:CreatePath({ AgentCanJump = true })
Path:ComputeAsync(HumanoidRootPart.Position, Vector3.new(-33, 21, 23)) -- walks to reg 1
				for i,v in pairs(Path:GetWaypoints()) do
					Humanoid:MoveTo(v.Position)
					Humanoid.MoveToFinished:Wait()
				end
repeat task.wait()
				pcall(function()
					local args = {
						[1] = "Can I get a Decaf Black Tea, a Cookie and an Iced Latte, please?",----asks for food
						[2] = "All"
					}          
					game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
				end
				)
				wait(_G.delay)
				Path:ComputeAsync(HumanoidRootPart.Position, Vector3.new(-27, 21, 17)) -- transition to reg 2
				for i,v in pairs(Path:GetWaypoints()) do
					Humanoid:MoveTo(v.Position)
					Humanoid.MoveToFinished:Wait()
				end
				wait()
				Path:ComputeAsync(HumanoidRootPart.Position, Vector3.new(-33, 21, 13)) -- walk to reg 2
				for i,v in pairs(Path:GetWaypoints()) do
					Humanoid:MoveTo(v.Position)
					Humanoid.MoveToFinished:Wait()
				end
				pcall(function()
					local args = {
						[1] = "May I have a Chocolate Muffin, Green Tea and some Oreo Ice Cream?",----asks for food
						[2] = "All"
					}          
					game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
				end
				)
				wait(_G.delay)
				Path:ComputeAsync(HumanoidRootPart.Position, Vector3.new(-28, 21, 10)) -- transition to reg 3
				for i,v in pairs(Path:GetWaypoints()) do
					Humanoid:MoveTo(v.Position)
					Humanoid.MoveToFinished:Wait()
				end
				wait()
				Path:ComputeAsync(HumanoidRootPart.Position, Vector3.new(-33, 21, 5)) -- walk to reg 3
				for i,v in pairs(Path:GetWaypoints()) do
					Humanoid:MoveTo(v.Position)
					Humanoid.MoveToFinished:Wait()
				end
				pcall(function()
					local args = {
						[1] = "Could you snag me some Lemonade, a White Chocolate Smoothie and a Chocolate Cake Pop?",----asks for food
						[2] = "All"
					}          
					game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
				end
				)
				wait(_G.delay)
				Path:ComputeAsync(HumanoidRootPart.Position, Vector3.new(-28, 21, 0)) -- transition to reg 4
				for i,v in pairs(Path:GetWaypoints()) do
					Humanoid:MoveTo(v.Position)
					Humanoid.MoveToFinished:Wait()
				end
				wait()
				Path:ComputeAsync(HumanoidRootPart.Position, Vector3.new(-33, 21, -4)) -- walk to reg 4
				for i,v in pairs(Path:GetWaypoints()) do
					Humanoid:MoveTo(v.Position)
					Humanoid.MoveToFinished:Wait()
				end
				pcall(function()
					local args = {
						[1] = "Get me an Oreo Smoothie, an Iced Lemon Tea, and some Iced Water, please.",----asks for food
						[2] = "All"
					}          
					game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
				end
				)
				wait(_G.delay)
				Path:ComputeAsync(HumanoidRootPart.Position, Vector3.new(-29, 21, -3)) -- transition to reg 5
				for i,v in pairs(Path:GetWaypoints()) do
					Humanoid:MoveTo(v.Position)
					Humanoid.MoveToFinished:Wait()
				end
				wait()
				Path:ComputeAsync(HumanoidRootPart.Position, Vector3.new(-29, 21, -7)) -- walk to reg 5
				for i,v in pairs(Path:GetWaypoints()) do
					Humanoid:MoveTo(v.Position)
					Humanoid.MoveToFinished:Wait()
				end
				pcall(function()
					local args = {
						[1] = "Get me a Crossaint, a Frappucino (any flavor) and a regular Frappe.",----asks for food
						[2] = "All"
					}          
					game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
				end
				)
				wait(_G.delay)

				Path:ComputeAsync(HumanoidRootPart.Position, Vector3.new(-21, 21, -1)) -- transition to reg 6
				for i,v in pairs(Path:GetWaypoints()) do
					Humanoid:MoveTo(v.Position)
					Humanoid.MoveToFinished:Wait()
				end
				wait()
				Path:ComputeAsync(HumanoidRootPart.Position, Vector3.new(-14, 21, -7)) -- walk to reg 6
				for i,v in pairs(Path:GetWaypoints()) do
					Humanoid:MoveTo(v.Position)
					Humanoid.MoveToFinished:Wait()
				end
				pcall(function()
					local args = {
						[1] = "Hey! Do you think I could get an Iced Mocha, a Blueberry Muffin and some Bubble Tea, please?",----asks for food
						[2] = "All"
					}          
					game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
				end
				)
				wait(_G.delay)
				
				
				Path:ComputeAsync(HumanoidRootPart.Position, Vector3.new(10, 21, -19)) -- transition to reg 7
				for i,v in pairs(Path:GetWaypoints()) do
					Humanoid:MoveTo(v.Position)
					Humanoid.MoveToFinished:Wait()
				end
				wait()
				Path:ComputeAsync(HumanoidRootPart.Position, Vector3.new(-14, 21, -32)) -- walk to reg 7
				for i,v in pairs(Path:GetWaypoints()) do
					Humanoid:MoveTo(v.Position)
					Humanoid.MoveToFinished:Wait()
				end
				pcall(function()
					local args = {
						[1] = "Grab me a Fudge Cookie, an Iced Regular, and a Vanilla Cake Pop, will ya?",----asks for food
						[2] = "All"
					}          
					game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
				end
				)
				wait(_G.delay)
				
				
				Path:ComputeAsync(HumanoidRootPart.Position, Vector3.new(-22, 21, -37)) -- transition to reg 8
				for i,v in pairs(Path:GetWaypoints()) do
					Humanoid:MoveTo(v.Position)
					Humanoid.MoveToFinished:Wait()
				end
				wait()
				Path:ComputeAsync(HumanoidRootPart.Position, Vector3.new(-30, 21, -32)) -- walk to reg 8
				for i,v in pairs(Path:GetWaypoints()) do
					Humanoid:MoveTo(v.Position)
					Humanoid.MoveToFinished:Wait()
				end
				pcall(function()
					local args = {
						[1] = "Cookie Dough Milkshake, Coconut Slushie, and a Latte.",----asks for food
						[2] = "All"
					}          
					game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
				end
				)
				wait(_G.delay)
				Path:ComputeAsync(HumanoidRootPart.Position, Vector3.new(-29, 21, -34)) -- transition to reg 9
				for i,v in pairs(Path:GetWaypoints()) do
					Humanoid:MoveTo(v.Position)
					Humanoid.MoveToFinished:Wait()
				end
				wait()
				Path:ComputeAsync(HumanoidRootPart.Position, Vector3.new(-33, 21, -35)) -- walk to reg 9
				for i,v in pairs(Path:GetWaypoints()) do
					Humanoid:MoveTo(v.Position)
					Humanoid.MoveToFinished:Wait()
				end
				pcall(function()
					local args = {
						[1] = "I want an Iced Decaf with Cream, a Bubblegum Frappucino and a Sugar Cookie, please.",----asks for food
						[2] = "All"
					}          
					game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
				end
				)
				wait(_G.delay)
				Path:ComputeAsync(HumanoidRootPart.Position, Vector3.new(-29, 21, -40)) -- transition to reg 10
				for i,v in pairs(Path:GetWaypoints()) do
					Humanoid:MoveTo(v.Position)
					Humanoid.MoveToFinished:Wait()
				end
				wait()
				Path:ComputeAsync(HumanoidRootPart.Position, Vector3.new(-33, 21, -44)) -- walk to reg 10
				for i,v in pairs(Path:GetWaypoints()) do
					Humanoid:MoveTo(v.Position)
					Humanoid.MoveToFinished:Wait()
				end
				pcall(function()
					local args = {
						[1] = "Hmm... I want a Honey Latte, a Hazelnut Frappe and a Dark Chocolate Cookie.",----asks for food
						[2] = "All"
					}          
					game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
				end
				)
				wait(_G.delay)
				Path:ComputeAsync(HumanoidRootPart.Position, Vector3.new(-29, 20, -48)) -- transition to reg 11
				for i,v in pairs(Path:GetWaypoints()) do
					Humanoid:MoveTo(v.Position)
					Humanoid.MoveToFinished:Wait()
				end
				wait()
				Path:ComputeAsync(HumanoidRootPart.Position, Vector3.new(-33, 20, -52)) -- walk to reg 11
				for i,v in pairs(Path:GetWaypoints()) do
					Humanoid:MoveTo(v.Position)
					Humanoid.MoveToFinished:Wait()
				end
				pcall(function()
					local args = {
						[1] = "Wow, all the items seem so tasty! Could I get an Oreo Muffin, Passionfruit Mocha and some Strawberry Ice Cream?",----asks for food
						[2] = "All"
					}          
					game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
				end
				)
				wait(_G.delay)
				Path:ComputeAsync(HumanoidRootPart.Position, Vector3.new(-28, 20, -57)) -- transition to reg 12
				for i,v in pairs(Path:GetWaypoints()) do
					Humanoid:MoveTo(v.Position)
					Humanoid.MoveToFinished:Wait()
				end
				wait()
				Path:ComputeAsync(HumanoidRootPart.Position, Vector3.new(-33, 20, -60)) -- walk to reg 12
				for i,v in pairs(Path:GetWaypoints()) do
					Humanoid:MoveTo(v.Position)
					Humanoid.MoveToFinished:Wait()
				end
				pcall(function()
					local args = {
						[1] = "Decisions, decisions... Alright, I'll take a Decaf, a Cinnamon Slushie and a Chocolate Muffin.",----asks for food
						[2] = "All"
					}          
					game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
				end
				)
				wait(_G.delay)
				pcall(function()
					local args = {
						[1] = "["..name.."]: Returning back to Register 1...",----msg
						[2] = "All"
					}          
					game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
				end
				)
				Path:ComputeAsync(HumanoidRootPart.Position, Vector3.new(-33, 21, 23)) -- walks back to reg 1
				for i,v in pairs(Path:GetWaypoints()) do
					Humanoid:MoveTo(v.Position)
					Humanoid.MoveToFinished:Wait()
				end
				until false
