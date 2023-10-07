local G2L = {};

-- StarterGui.Executor
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["Name"] = [[Executor]];
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

-- StarterGui.Executor.Main
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(34, 34, 34);
G2L["2"]["Size"] = UDim2.new(0, 460, 0, 244);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["Position"] = UDim2.new(0.19730320572853088, 0, 0.10223784297704697, 0);
G2L["2"]["Name"] = [[Main]];

-- StarterGui.Executor.Main.UICorner
G2L["3"] = Instance.new("UICorner", G2L["2"]);


-- StarterGui.Executor.Main.TextLabel
G2L["4"] = Instance.new("TextLabel", G2L["2"]);
G2L["4"]["BorderSizePixel"] = 0;
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(51, 51, 51);
G2L["4"]["FontFace"] = Font.new([[rbxasset://fonts/families/Roboto.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4"]["TextSize"] = 34;
G2L["4"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4"]["Size"] = UDim2.new(0, 460, 0, 28);
G2L["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4"]["Text"] = [[Executor by belb]];
G2L["4"]["Position"] = UDim2.new(0, 0, -0.00026659105787985027, 0);

-- StarterGui.Executor.Main.TextLabel.UICorner
G2L["5"] = Instance.new("UICorner", G2L["4"]);


-- StarterGui.Executor.Main.TextBox
G2L["6"] = Instance.new("TextBox", G2L["2"]);
G2L["6"]["CursorPosition"] = -1;
G2L["6"]["BorderSizePixel"] = 0;
G2L["6"]["TextSize"] = 18;
G2L["6"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["6"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(28, 28, 28);
G2L["6"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6"]["Size"] = UDim2.new(0, 445, 0, 151);
G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6"]["Text"] = [[]];
G2L["6"]["Position"] = UDim2.new(0.015217390842735767, 0, 0.13934426009655, 0);

-- StarterGui.Executor.Main.TextBox.UICorner
G2L["7"] = Instance.new("UICorner", G2L["6"]);


-- StarterGui.Executor.Main.Clear
G2L["8"] = Instance.new("TextButton", G2L["2"]);
G2L["8"]["BorderSizePixel"] = 0;
G2L["8"]["BackgroundColor3"] = Color3.fromRGB(28, 28, 28);
G2L["8"]["TextSize"] = 34;
G2L["8"]["FontFace"] = Font.new([[rbxasset://fonts/families/Nunito.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["8"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8"]["Size"] = UDim2.new(0, 172, 0, 31);
G2L["8"]["Name"] = [[Clear]];
G2L["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8"]["Text"] = [[Clear]];
G2L["8"]["Position"] = UDim2.new(0.5652173757553101, 0, 0.8155737519264221, 0);

-- StarterGui.Executor.Main.Clear.UICorner
G2L["9"] = Instance.new("UICorner", G2L["8"]);


-- StarterGui.Executor.Main.Clear.LocalScript
G2L["a"] = Instance.new("LocalScript", G2L["8"]);


-- StarterGui.Executor.Main.Execute
G2L["b"] = Instance.new("TextButton", G2L["2"]);
G2L["b"]["BorderSizePixel"] = 0;
G2L["b"]["BackgroundColor3"] = Color3.fromRGB(28, 28, 28);
G2L["b"]["TextSize"] = 34;
G2L["b"]["FontFace"] = Font.new([[rbxasset://fonts/families/Nunito.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b"]["Size"] = UDim2.new(0, 172, 0, 31);
G2L["b"]["Name"] = [[Execute]];
G2L["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b"]["Text"] = [[Execute]];
G2L["b"]["Position"] = UDim2.new(0.019565217196941376, 0, 0.8155737519264221, 0);

-- StarterGui.Executor.Main.Execute.UICorner
G2L["c"] = Instance.new("UICorner", G2L["b"]);


-- StarterGui.Executor.Main.Execute.ExecuteScript
G2L["d"] = Instance.new("LocalScript", G2L["b"]);
G2L["d"]["Name"] = [[ExecuteScript]];

-- StarterGui.Executor.Main.LocalScript
G2L["e"] = Instance.new("LocalScript", G2L["2"]);


-- StarterGui.Executor.Main.Clear.LocalScript
local function C_a()
local script = G2L["a"];
	local button = script.Parent
	local textbox = script.Parent.Parent.TextBox
	button.MouseButton1Click:Connect(function()
		textbox.Text = ""
	end)
end;
task.spawn(C_a);
-- StarterGui.Executor.Main.Execute.ExecuteScript
local function C_d()
local script = G2L["d"];
	local button = script.Parent
	local textbox = script.Parent.Parent.TextBox
	button.MouseButton1Click:Connect(function()
		loadstring(textbox.Text)()
	end)
end;
task.spawn(C_d);
-- StarterGui.Executor.Main.LocalScript
local function C_e()
local script = G2L["e"];
	script.Parent.Draggable = true
	script.Parent.Active = true
end;
task.spawn(C_e);

return G2L["1"], require;
