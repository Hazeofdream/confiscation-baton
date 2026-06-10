AddCSLuaFile()

-- Add your list of items here
-- refer to https://steamcommunity.com/sharedfiles/filedetails/?id=2981130069 for a list of completely supported addons
-- contact https:/steamcommunity.com/id/Haze_of_dream for issues if it's an emergency
-- otherwise PLEASE use https://steamcommunity.com/workshop/filedetails/discussion/2981130069/3834298194196734223/

contraband = contraband or {}

-- Only add items that actually exist on the server
function loadContraband()
	local loadedAddons = {}

	contraband["Values"] = {
		-- controls how much the actual printer values get multiplied
		-- we multiply to encourage hitting hard targets, only giving the base amount of the printer would discorage pd raids as it would be more profitable to print yourself.
		["printer_multiplier"] = 5,
		
		-- this looks like alot until you print moonshine's predicted values
		["moonshine_multiplier"] = 42,

		["botnet_multiplier"] = 2,
		
		-- bonus payout added for every x seconds an entity exists
		-- This is intentionally high because of the following considerations:
		-- 1) It has to obviously be worth raiding, if you are getting consistently less than 100% of the entity's value back then there is no point in raiding at all, 
		-- 2) The longer an entity exist, the more likelihood of the base being extremely tough to crack, so we need to make sure that it's worth the risk of cracking a tough base, and
		-- 3) We dont want to make the time scale too harshly towards the end or it encourages police to wait intentionally, and encouraging non-interaction is detrimental to roleplay.
		["time_bonus_interval"] = 10,
		["time_bonus_amount"] = 5000
	}

	-- no servers run these but it DOES exist
	contraband["money_printer"] = 2000

	-- Zero's Weedfarm
	if scripted_ents.GetStored("zwf_doobytable") then
		contraband["zwf_doobytable"] = 4000
		contraband["zwf_mixer"] = 4000
		contraband["zwf_muffinmix"] = 350
		contraband["zwf_oven"] = 4000
		contraband["zwf_generator"] = 4000
		contraband["zwf_fuel"] = 1000
		contraband["zwf_lamp"] = 2500
		contraband["zwf_ventilator"] = 2500
		contraband["zwf_outlet"] = 250
		contraband["zwf_pot"] = 250
		contraband["zwf_pot_hydro"] = 400
		contraband["zwf_soil"] = 250
		contraband["zwf_watertank"] = 2500
		contraband["zwf_drystation"] = 2500
		contraband["zwf_packingstation"] = 2500
		contraband["zwf_autopacker"] = 7500
		contraband["zwf_splice_lab"] = 4000
		contraband["zwf_seed_bank"] = 1000
		contraband["zwf_seed"] = 2500
		contraband["zwf_nutrition"] = 2000
		contraband["zwf_weedstick"] = 1000
		contraband["zwf_muffin"] = 1000
		contraband["zwf_bong01_ent"] = 1000
		contraband["zwf_bong02_ent"] = 1000
		contraband["zwf_bong03_ent"] = 1000
		contraband["zwf_jar"] = 2500
		contraband["zwf_palette"] = 2500
		contraband["zwf_weedblock"] = 1000

		table.insert(loadedAddons, "Zero's Weedfarm")
	end

	-- Zero's GrowOP 2
	if scripted_ents.GetStored("zgo2_lamp") then
		contraband["zgo2_lamp"] = 0
		contraband["zgo2_tent"] = 0
		contraband["zgo2_pot"] = 0
		contraband["zgo2_rack"] = 0
		contraband["zgo2_backmix"] = 0
		contraband["zgo2_doobytable"] = 1000
		contraband["zgo2_mixer"] = 1000
		contraband["zgo2_oven"] = 1000
		contraband["zgo2_soil"] = 200
		contraband["zgo2_battery"] = 1000
		contraband["zgo2_bulb"] = 1000
		contraband["zgo2_seedlibary"] = 1000
		contraband["zgo2_seed"] = 1000
		contraband["zgo2_watertank_small"] = 3000
		contraband["zgo2_watertank"] = 4000
		contraband["zgo2_pump"] = 3000
		contraband["zgo2_splicer"] = 1000
		contraband["zgo2_packer"] = 4000
		contraband["zgo2_dryline"] = 1500
		contraband["zgo2_weedblock"] = 20000
		contraband["zgo2_logbook"] = 1000
		contraband["zgo2_crate"] = 1000
		contraband["zgo2_motor"] = 1000
		contraband["zgo2_generator"] = 4000

		contraband["zgo2_jarcrate"] = 50
		contraband["zgo2_weedbranch"] = 500
		contraband["zgo2_jar"] = 500
		contraband["zgo2_baggy"] = 250
		contraband["zgo2_palette"] = 50
		contraband["zgo2_clipper"] = 5000

		table.insert(loadedAddons, "Zero's GrowOP 2")
	end

	-- Zero's Meth Lab 2
	if scripted_ents.GetStored("zmlab2_tent") then
		contraband["zmlab2_tent"] = 0
		contraband["zmlab2_item_frezzertray"] = 200
		contraband["zmlab2_equipment"] = 750
		contraband["zmlab2_item_autobreaker"] = 4000
		contraband["zmlab2_item_acid"] = 1000
		contraband["zmlab2_item_aluminium"] = 1000
		contraband["zmlab2_item_lox"] = 1000
		contraband["zmlab2_item_methylamine"] = 1000
		contraband["zmlab2_machine_filler"] = 1000
		contraband["zmlab2_machine_filter"] = 1000
		contraband["zmlab2_machine_frezzer"] = 1000
		contraband["zmlab2_machine_furnace"] = 1000
		contraband["zmlab2_machine_mixer"] = 1000
		contraband["zmlab2_machine_ventilation"] = 1000
		contraband["zmlab2_storage"] = 1000
		contraband["zmlab2_table"] = 1000

		contraband["zmlab2_item_meth"] = 250
		contraband["zmlab2_item_crate"] = 500
		contraband["zmlab2_item_palette"] = 1000

		contraband["SodiumLamps"] = {
			["01"] = 1000,
			["02"] = 2000,
			["03"] = 4000
		}

		contraband["LEDLamps"] = {
			["01"] = 2000,
			["02"] = 4000,
			["03"] = 6000
		}

		contraband["Generators"] = {
			["01"] = 2000,
			[".m"] = 4000
		}

		contraband["Pots"] = {
			[".m"] = 1000,
			["04"] = 500,
			["01"] = 1500,
			["02"] = 2000,
			["03"] = 1500,
			["05"] = 1000,
			["06"] = 500
		}

		contraband["Mixes"] = {
			["muffin"] = 500,
			["brownie"] = 500,
			["patty"] = 500,
			["cookie"] = 500,
			["cinnamon"] = 500,
			["donut"] = 500
		}

		contraband["Tents"] = {
			["01"] = 4000,
			["02"] = 2000,
			["03"] = 14000,
			["04"] = 10000,
			["05"] = 10000
		}

		table.insert(loadedAddons, "Zero's Meth Lab 2")
	end

	-- Zero's Yeastbeast aka Moonshine
	if scripted_ents.GetStored("zyb_distillery") then
		contraband["zyb_constructionkit_condenser"] = 2500
		contraband["zyb_constructionkit_cooler"] = 2500
		contraband["zyb_fermbarrel"] = 500
		contraband["zyb_yeastgrinder"] = 2000
		contraband["zyb_jarcrate"] = 200
		contraband["zyb_jarpack"] = 200
		contraband["zyb_paperbag"] = 100
		contraband["zyb_sugar"] = 100
		contraband["zyb_water"] = 100
		contraband["zyb_fuel"] = 50
		contraband["zyb_yeast"] = 100
		contraband["zyb_distillery"] = 1000
		contraband["zyb_distillery_cooler"] = 4500
		contraband["zyb_distillery_condenser"] = 4500

		table.insert(loadedAddons, "Zero's Moonshine")
	end

	-- Zero's CrackerMaker
	if scripted_ents.GetStored("zcm_crackermachine") then
		contraband["zcm_blackpowder"] = 2000
		contraband["zcm_crackermachine"] = 5000
		contraband["zcm_paperroll"] = 2000
		contraband["zcm_firecracker"] = 1500
		contraband["zcm_box"] = 200

		table.insert(loadedAddons, "Zero's CrackerMaker")
	end

	-- sPrinters
	if scripted_ents.GetStored("sprinter_tier_1") then
		contraband["sprinter_tier_1"] = 5000
		contraband["sprinter_tier_2"] = 6000
		contraband["sprinter_tier_3"] = 7000
		contraband["sprinter_tier_4"] = 9000
		contraband["sprinter_rack"] = 25000

		table.insert(loadedAddons, "sPrinters")
	end

	-- Cocaine Factory
	if scripted_ents.GetStored("cocaine_extractor") then
		contraband["cocaine_baking_soda"] = 50
		contraband["cocaine_water"] = 75
		contraband["cocaine_box"] = 100
		contraband["cocaine_bucket"] = 75
		contraband["cocaine_extractor"] = 1750
		contraband["cocaine_drying_rack"] = 1500
		contraband["cocaine_gas"] = 350
		contraband["cocaine_cooking_plate"] = 250
		contraband["cocaine_leaves"] = 50
		contraband["cocaine_stove"] = 1500
		contraband["cocaine_pack"] = 2500

		table.insert(loadedAddons, "Cocaine Factory")
	end

	-- Bricks Gang Printer
	if scripted_ents.GetStored("bricks_server_gangprinter") then
		contraband["bricks_server_gangprinter"] = 40000
	
		table.insert(loadedAddons, "Brick's Gang Printer")
	end

	-- Bitminer's
	if scripted_ents.GetStored("ch_bitminer_shelf") then
		contraband["ch_bitminer_shelf"] = 10000
		contraband["ch_bitminer_upgrade_cooling1"] = 6000
		contraband["ch_bitminer_upgrade_cooling2"] = 7000
		contraband["ch_bitminer_upgrade_cooling3"] = 8000
		contraband["ch_bitminer_power_generator"] = 3000
		contraband["ch_bitminer_power_generator_fuel"] = 1000
		contraband["ch_bitminer_upgrade_miner"] = 700
		contraband["ch_bitminer_power_cable"] = 300
		contraband["ch_bitminer_power_combiner"] = 2000
		contraband["ch_bitminer_power_rtg"] = 9000
		contraband["ch_bitminer_power_solar"] = 6000
		contraband["ch_bitminer_upgrade_ups"] = 1000
		contraband["ch_bitminer_upgrade_rgb"] = 2000

		table.insert(loadedAddons, "Crap-Head's Bitminers 2")
	end

	-- Exhibition
	-- Not a server available yet, but will be soon :)
	if scripted_ents.GetStored("exhib_printer") then
		contraband["exhib_printer"] = 15000

		table.insert(loadedAddons, "Exhibition Printers")
	end

	-- Zero's Botnet
	if scripted_ents.GetStored("zbf_controller") then
		contraband["zbf_controller"] = 3000
		contraband["zbf_rack"] = 3000
	
		contraband["zbf_bot"] = 0

		table.insert(loadedAddons, "Zero's Botnet")
	end

	-- Lean Production
	if scripted_ents.GetStored("lean_barrel") then
		contraband["lean_barrel"] = 15000
		contraband["lean_crate"] = 30000
		contraband["lean_smallcrate"] = 7500
		contraband["lean_cup"] = 1500

		table.insert(loadedAddons, "Lean Production")
	end

	-- Shenisis
	if scripted_ents.GetStored("sh_detector_jammer") then
		contraband["sh_detector_jammer"] = 3000

		table.insert(loadedAddons, "Shenisis' Entities")
	end

	if CLIENT then return end

	print("[Confiscation Baton] Loaded contraband support for " .. #loadedAddons .. " addons:")

	for _, addonName in pairs(loadedAddons) do
		print("  - " .. addonName)
	end
end

hook.Add("InitPostEntity", "ConfiscationBaton_LoadContraband", loadContraband)

if CLIENT then
    SWEP.Slot = 1
    SWEP.SlotPos = 6
end

DEFINE_BASECLASS("stick_base")

SWEP.Instructions = "Left click to seize contraband."
SWEP.Purpose = "To keep the streets clean, or piss off criminals."
SWEP.IsDarkRPConfiscateStick = true

SWEP.PrintName = "Confiscation Baton"
SWEP.Author = "Haze_of_dream"
SWEP.Contact = "https://steamcommunity.com/id/Haze_of_dream/"
SWEP.Spawnable = true
SWEP.Category = "The Tactician's Kit"

SWEP.Sound = Sound("weapons/stunstick/stunstick_swing1.wav")

SWEP.StickColor = Color(255, 165, 0)

function SWEP:Initialize()
    BaseClass.Initialize(self)

    self.Hit = {
        Sound("weapons/stunstick/stunstick_impact1.wav"),
        Sound("weapons/stunstick/stunstick_impact2.wav")
    }

    self.FleshHit = {
        Sound("weapons/stunstick/stunstick_fleshhit1.wav"),
        Sound("weapons/stunstick/stunstick_fleshhit2.wav")
    }
end


-- The darkrp function Getowning_ent does not work on certain things like zero's weed, so we filter that.

local function checkOwner(ent, owner)
	local success, result = pcall(function()
		return owner == ent:Getowning_ent()
	end)

	if success and result then
		return true
	end

	return
end

-- This is all the calculations for how much a user is awarded per aliveTime of the entity
-- Longer time alive = more money, Frequency and amount per interval is determined by config
local function getTimeAliveBonus(ent)
	local interval = contraband["Values"]["time_bonus_interval"] or 20
	local value = contraband["Values"]["time_bonus_amount"] or 1800

	if interval <= 0 or value <= 0 then return 0 end
	if not IsValid(ent) or not ent.GetCreationTime then return 0 end

	local aliveTime = math.max(CurTime() - ent:GetCreationTime(), 0)

	return math.floor(aliveTime / interval) * value
end

local function getContrabandValue(ent)
	local baseValue = contraband[ent:GetClass()]

	return baseValue + getTimeAliveBonus(ent)
end


local function formatAliveTime(seconds)
	seconds = math.floor(seconds)

	local hours = math.floor(seconds / 3600)
	local minutes = math.floor((seconds % 3600) / 60)
	local secs = seconds % 60

	local str = ""

	if hours > 0 then
		str = str .. hours .. "h"
	end

	if minutes > 0 then
		str = str .. minutes .. "m"
	end

	if secs > 0 or str == "" then
		str = str .. secs .. "s"
	end

	return str
end

local function notifyConfiscation(owner, baseAmount, timeBonus, aliveTime, extraAmount, extraLabel, contextLabel)
	local message = "You received " .. DarkRP.formatMoney(baseAmount)

	if timeBonus > 0 then
		message = message ..
			" (" ..
			"+" .. DarkRP.formatMoney(timeBonus) ..
			" for " .. formatAliveTime(aliveTime) ..
			" alive time)"
	end

	if contextLabel then
		message = message .. " for " .. contextLabel
	else
		message = message .. " for this entity"
	end

	if extraAmount and extraAmount > 0 then
		message = message ..
			" and " ..
			DarkRP.formatMoney(extraAmount)

		if extraLabel then
			message = message .. " in " .. extraLabel
		end
	end

	message = message .. "."

	-- DarkRP popup
	DarkRP.notify(owner, 1, 6, message)

	-- Console output
	if IsValid(owner) then
		owner:PrintMessage(HUD_PRINTCONSOLE, "[Confiscation Baton] " .. message .. "\n")
	end
end

-- For some items like weed and meth, We use the original addons values to get the real value rather than use a flat amount.
local function getValue(ent, owner)
	-- Start breaking this into if arguments, instead of string checking 5+ times we can check once initially to see if it's even that addon's entity

	-- Zero's Weedfarm
	if string.sub(ent:GetClass(), 1, 4) == "zwf_" then
		if string.find(ent:GetClass(), "zwf_palette") then

			if ent:GetMoney() == 0 then return false -- If it has nothing, return false and remand it to config values
			else
				notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime, ent:GetMoney(), "weed")
				owner:addMoney(ent:GetMoney() + getContrabandValue(ent))
			end
			
			return true
		end

		if string.find(ent:GetClass(), "zwf_weedblock") then

			notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime, zwf.config.Plants[ent:GetWeedID()].sellvalue, "weed")
			owner:addMoney(zwf.config.Plants[ent:GetWeedID()].sellvalue + getContrabandValue(ent))
		
			return true
		end
		
		if string.find(ent:GetClass(), "zwf_seed") and not string.find(ent:GetClass(), "bank") then -- Seed banks, they have "seed" so lmao on me i guess

			notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime, zwf.config.Plants[ent:GetSeedID()].sellvalue, "weed")
			owner:addMoney(zwf.config.Plants[ent:GetSeedID()].sellvalue + getContrabandValue(ent))
		
			return true
		end
	end
	
	-- Zero's Methlab 2
	if string.sub(ent:GetClass(), 1, 7) == "zmlab2_" then
		if string.find(ent:GetClass(), "zmlab2_item_meth") then 
			if ent:GetMethAmount() == 0 and ent:GetMethQuality() == 0 then return false
			else
				notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime, ent:GetMethAmount() + ent:GetMethQuality(), "meth")
			end

			owner:addMoney((ent:GetMethAmount() + ent:GetMethQuality()) + getContrabandValue(ent))
		
			return true
		end

		if string.find(ent:GetClass(), "zmlab2_machine_frezzer") then 
			local trayvalue = 0

			for _, child in pairs(ent:GetChildren()) do
				if child:GetClass() == "zmlab2_item_frezzertray" then 
					trayvalue = trayvalue + getContrabandValue(child)
				end
			end

			if trayvalue > 0 then
				notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime, trayvalue, "frezzer trays", "meth")
			else
				notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime, "meth")
			end

			owner:addMoney(trayvalue + getContrabandValue(ent))
		
			return true
		end
		
		if string.find(ent:GetClass(), "zmlab2_item_crate") then
			if ent:GetMethAmount() == 0 and ent:GetMethQuality() <= 1 then return false-- zero counts an empty crate as 1 in meth quality lmao
			else 
				notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime, ent:GetMethAmount() + ent:GetMethQuality(), "meth")
			end

			owner:addMoney((ent:GetMethAmount() + ent:GetMethQuality()) + getContrabandValue(ent))
		
			return true
		end
		
		if string.find(ent:GetClass(), "zmlab2_item_palette") then
			local money = 0
			for _, v in pairs(ent.MethList) do
				if v == nil then continue end
				money = money + zmlab2.Meth.GetValue(v.t,v.a,v.q)
			end
		
			if money > 0 then
				notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime, money, "meth")
			end

			owner:addMoney(money + getContrabandValue(ent))
		
			return true
		end

		if string.find(ent:GetClass(), "zmlab2_tent") then
			local pathtrim = string.Split(ent:GetModel(), "models/zerochain/props_methlab/zmlab2_tent")[2]
			local mdltrim = string.Split(pathtrim, ".mdl")[1]
			local getType = string.sub(mdltrim, 1, 2)

			notifyConfiscation(owner, contraband["Tents"][getType], ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime)

			owner:addMoney(contraband["Tents"][getType] + getContrabandValue(ent))

			return true
		end
	end
	
	-- sPrinters
	if string.sub(ent:GetClass(), 1, 9) == "sprinter_" then
		if string.find(ent:GetClass(), "sprinter_rack") then 
			local money = 0
			local printervalue = 0
			for _, printer in pairs(ent.printers) do
				if IsValid(printer) then
					money = money + printer:GetWithdrawAmount() * contraband["Values"]["printer_multiplier"]
					printervalue = printervalue + getContrabandValue(printer)
					-- printers removed after calculations complete
					printer:Remove()
					-- p:OnWithdrawn(ply, true) -- We dont want to do this or it logs as a withdrawn, inb4 "HE WITHDREW FROM THE PRINTERS! CORRUPTION!"
				end
			end
			
			if money == 0 then
				notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime)
			else
				notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime, printervalue + money, "printer value and printed money")
			end

			owner:addMoney(money + printervalue + getContrabandValue(ent))
		
			return true
		end	

		if string.find(ent:GetClass(), "sprinter_tier") then 
			local money = 0
			if ent:GetWithdrawAmount() == 0 then
				notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime)
			else 
				notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime, ent:GetWithdrawAmount(), "printed money")	
				money = ent:GetWithdrawAmount()
			end
			owner:addMoney(ent:GetWithdrawAmount() + getContrabandValue(ent))

			return true
		end
	end

	-- Brick's Gang Printer
	if string.find(ent:GetClass(), "bricks_server_gangprinter") then 
		local money = ent:GetHolding() * contraband["Values"]["printer_multiplier"]
		
		if money == 0 then
			notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime)
		else
			notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime, money, "printed money")
		end

		owner:addMoney(money + getContrabandValue(ent))
	
		return true
	end

	-- Exhibition's Printers
	if string.find(ent:GetClass(), "exhib_printer") then 
		local money = ent:GetMoney() * contraband["Values"]["printer_multiplier"]
		local printercount = math.max(1, ent:GetSlots())
		
		if money == 0 then
			notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime)
		else
			notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime, money, "printed money")
		end

		owner:addMoney(money + (getContrabandValue(ent) * printercount))
	
		return true
	end

	-- Zero's Yeastbeast
	if string.sub(ent:GetClass(), 1, 4) == "zyb_" then
		if string.find(ent:GetClass(), "zyb_jar") and not string.find(ent:GetClass(), "pack") and not string.find(ent:GetClass(), "crate") then -- SCREW YOU ZERO, STOP HAVING SIMILARLY NAMED ITEMS
			if ent:GetMoonShine() == 0 then return false
			else 
				notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime, ent:GetMoonShine() * contraband["Values"]["moonshine_multiplier"], "jar value") 
			end
			owner:addMoney(ent:GetMoonShine() * contraband["Values"]["moonshine_multiplier"] + getContrabandValue(ent))

			return true
		end	
		
		if string.find(ent:GetClass(), "zyb_jarcrate") then
			local MegaLongFormula = (zyb.config.Jar.MoonshineAmount * ent:GetJarCount()) * contraband["Values"]["moonshine_multiplier"]

			if ent:GetJarCount() == 0 then return false
			else 
				notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime, MegaLongFormula, "contained jar values") 
			end
			owner:addMoney(MegaLongFormula + (ent:GetJarCount() + contraband["zyb_jar"]) + getContrabandValue(ent))

			return true
		end		
		
		if string.find(ent:GetClass(), "zyb_distillery") then
			local totalvalue = 0
			if IsValid(ent:GetCooler()) then
				totalvalue = totalvalue + getContrabandValue(ent:GetCooler())
				-- remove attached cooler after value calculation
				ent:GetCooler():Remove()
			end			
			
			if IsValid(ent:GetCondenser()) then
				totalvalue = totalvalue + getContrabandValue(ent:GetCondenser())
				-- remove attached condenser after value calculation
				ent:GetCondenser():Remove()
			end

			if totalvalue then
				notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime, totalvalue, "attached equipment", "equipment")	
			else
				notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime)
			end
			
			owner:addMoney(getContrabandValue(ent) + totalvalue)

			return true
		end
	end
	
	-- Zero's GrowOP 2 uses models to differentiate instead of classes -_-
	
	if string.sub(ent:GetClass(), 1, 5) == "zgo2_" then
		if string.find(ent:GetClass(), "zgo2_weedbranch") then
			notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime, zgo2.Plant.GetTotalMoney(ent:GetPlantID()), "weed") 

			owner:addMoney(zgo2.Plant.GetTotalMoney(ent:GetPlantID()) + getContrabandValue(ent))

			return true
		end		
		
		if string.find(ent:GetClass(), "zgo2_clipper") then
			local value = 0
			if ent:GetHasMotor() then 
				value = getContrabandValue(ent) + contraband["zgo2_motor"]
				notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime, contraband["zgo2_motor"], "parts", "equipment") 
			else
				value = getContrabandValue(ent)
				notifyConfiscation(owner, value, ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime) 
			end

			owner:addMoney(value)

			return true
		end	
		
		if string.find(ent:GetClass(), "zgo2_jar")  and not string.find(ent:GetClass(), "crate") then
			local WeedValue = ent:GetWeedAmount() * ent:GetWeedTHC() -- im using this cause growop 2 is retarded and doesn't have a direct function for checking money (except for when exporting the data, no im not sifting that shit)
			notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime, WeedValue, "weed") 
			owner:addMoney(WeedValue + getContrabandValue(ent))

			return true
		end		
		
		if string.find(ent:GetClass(), "zgo2_weedblock")  then	
			local value = zgo2.config.Packer.Capacity * zgo2.Plant.GetSellValue(ent:GetWeedID())

			notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime, value, "weed stacks") 
			owner:addMoney(value + getContrabandValue(ent))

			return true
		end		
		
		if string.find(ent:GetClass(), "zgo2_palette") then
			local money = 0

			-- Loop through all attached weed
			for _, weedID in pairs(ent.WeedList or {}) do
				money = money + (zgo2.config.Packer.Capacity * zgo2.Plant.GetSellValue(weedID))
			end

			if #ent.WeedList > 0 then
				notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime, money, "weed blocks") 
			else
				notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime)
			end

			owner:addMoney(getContrabandValue(ent) + money)
			return true
		end	
		
		if string.find(ent:GetClass(), "zgo2_jarcrate") then -- this took from 12:36 to 2:06 btw
			local money = 0
			for _, jar in pairs(ent.WeedList) do
				if IsValid(jar) then
					money = money + (jar:GetWeedAmount() * jar:GetWeedTHC())
				end
			end
			
			if money == 0 then
				notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime, money, "weed jars") 
			else
				notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime)
			end

			owner:addMoney(getContrabandValue(ent) + money)
			return true
		end
		
		if string.find(ent:GetClass(), "zgo2_baggy") then
			local WeedValue = ent:GetWeedAmount() * ent:GetWeedTHC()
			notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime, WeedValue, "weed") 
		
			owner:addMoney(WeedValue + getContrabandValue(ent))

			return true
		end
		
		if string.find(ent:GetClass(), "zgo2_lamp") and string.find(ent:GetModel(), "sodium")  and not string.find(ent:GetModel(), "tent") then
			local pathtrim = string.Split(ent:GetModel(), "models/zerochain/props_growop2/")[2]
			local getType = string.sub(pathtrim, 17, 18)

			notifyConfiscation(owner, contraband["SodiumLamps"][getType], ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime) 

			owner:addMoney(getContrabandValue(ent))

			return true
		end	
		
		if string.find(ent:GetClass(), "zgo2_lamp") and string.find(ent:GetModel(), "led") and not string.find(ent:GetModel(), "tent") then
			local pathtrim = string.Split(ent:GetModel(), "models/zerochain/props_growop2/")[2]
			local getType = string.sub(pathtrim, 15, 16)

			notifyConfiscation(owner, contraband["LEDLamps"][getType], ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime) 

			owner:addMoney(getContrabandValue(ent))

			return true
		end	
		
		if string.find(ent:GetClass(), "zgo2_lamp") and string.find(ent:GetModel(), "led") and string.find(ent:GetModel(), "tent") then
			notifyConfiscation(owner, contraband["LEDLamps"]["01"], ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime) 

			owner:addMoney(getContrabandValue(ent))

			return true
		end	
		
		if string.find(ent:GetClass(), "zgo2_lamp") and string.find(ent:GetModel(), "sodium") and string.find(ent:GetModel(), "tent") then
			notifyConfiscation(owner, contraband["SodiumLamps"]["01"], ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime) 

			owner:addMoney(getContrabandValue(ent))

			return true
		end
		
		if string.find(ent:GetClass(), "zgo2_generator") then
			local pathtrim = string.Split(ent:GetModel(), "models/zerochain/props_growop2/")[2]
			local getType = string.sub(pathtrim, 15, 16)
			
			notifyConfiscation(owner, contraband["Generators"][getType], ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime) 

			owner:addMoney(getContrabandValue(ent))

			return true
		end	
		
		
		if string.find(ent:GetClass(), "zgo2_pot") then
			local pathtrim = string.Split(ent:GetModel(), "models/zerochain/props_growop2/")[2]
			local getType = string.sub(pathtrim, 9, 10)
			
			notifyConfiscation(owner, contraband["Pots"][getType], ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime) 

			owner:addMoney(getContrabandValue(ent))

			return true
		end		
		
		if string.find(ent:GetClass(), "zgo2_backmix") then
			local pathtrim = string.Split(ent:GetModel(), "models/zerochain/props_growop2/")[2]
			local mdltrim = string.Split(pathtrim, ".mdl")[1]
			local getType = string.sub(mdltrim, 14, 25)
			
			notifyConfiscation(owner, contraband["Mixes"][getType], ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime) 

			owner:addMoney(getContrabandValue(ent))

			return true
		end	
		
		if string.find(ent:GetClass(), "zgo2_rack") then
			local pathtrim = string.Split(ent:GetModel(), "models/zerochain/props_growop2/")[2]
			local getType = string.sub(pathtrim, 10, 11)
			
			notifyConfiscation(owner, contraband["Pots"][getType], ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime) 

			owner:addMoney(getContrabandValue(ent))

			return true
		end	
		
		if string.find(ent:GetClass(), "zgo2_tent") then
			local pathtrim = string.Split(ent:GetModel(), "models/zerochain/props_growop2/")[2]
			local getType = string.sub(pathtrim, 10, 11)

			local stored = 0

			-- automatically profits attached equipment
			for _, child in pairs(ent:GetChildren()) do
				if child:GetClass() == "zgo2_lamp" then 
					if string.find(child:GetModel(), "sodium") then
						stored = stored + getContrabandValue(child)
					end				
					if string.find(child:GetModel(), "led") then
						stored = stored + getContrabandValue(child)
					end
				end
			end
			
			if stored == 0 then
				notifyConfiscation(owner, contraband["Tents"][getType], ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime) 
				owner:addMoney(getContrabandValue(ent))
			else
				notifyConfiscation(owner, contraband["Tents"][getType], ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime, stored, "attached equipment", "the operating tent") 
				owner:addMoney(getContrabandValue(ent) + stored)
			end

			return true
		end
	end
	
	-- yes, i copied my code from zero's meth jars, cry about it :)
	if string.find(ent:GetClass(), "zcm_box") then
		local MegaLongFormula = contraband["zcm_firecracker"] * ent:GetFireworkCount()

		if ent:GetFireworkCount() > 0 then
			notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime, MegaLongFormula, "contained jar values") 
		end
		owner:addMoney(MegaLongFormula + getContrabandValue(ent))
		
		return true
	end

	-- Crap-Head's Bitminers 2
	if string.sub(ent:GetClass(), 1, 11) == "ch_bitminer" then
		if string.find(ent:GetClass(), "ch_bitminer_shelf") then
			local money = math.Round(ent:GetBitcoinsMined() * CH_Bitminers.Config.BitcoinRate * 2)

			notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime, money, "bitcoin value", "equipment")
			owner:addMoney(money + getContrabandValue(ent))
			
			return true
		end
	end

	-- Lean Production
	if string.sub(ent:GetClass(), 1, 5) == "lean_" then
		if string.find(ent:GetClass(), "lean_crate") or string.find(ent:GetClass(), "lean_smallcrate") then
			local count = ent:Getholding()
			local sellprice = 0

			if count >= 1 then
				local sellprice = lean_updated.sellprice.val * count
				notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime, sellprice, "lean")
			else
				notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime)
			end

			owner:addMoney(sellprice + getContrabandValue(ent))
			
			return true
		end
	end

	-- Zero's Botnet
	if string.sub(ent:GetClass(), 1, 4) == "zbf_" then
		if string.find(ent:GetClass(), "zbf_rack") then
			local GetPrice = 0

			for _, botnet in pairs(ent:GetChildren()) do
				if not IsValid(botnet) or botnet:GetClass() ~= "zbf_bot" then continue end

				GetPrice = GetPrice + ((zbf.Bot.GetPrice(botnet:GetBotID()) * botnet:GetLevel()) * contraband["Values"]["botnet_multiplier"])
			end

			if GetPrice > 0 then
				notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime, GetPrice, "botnets", "equipment")
			else
				notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime)
			end

			owner:addMoney(GetPrice + getContrabandValue(ent))

			return true
		end

		-- Individual botnets not on a rack
		if string.find(ent:GetClass(), "zbf_bot") then
			local GetPrice = 0
			local parentClass = nil

			local success, result = pcall(function()
				return ent:GetParent():GetClass()
			end)

			if success then
				parentClass = result
			end

			if parentClass == "zbf_rack" then
				for _, botnet in pairs(ent:GetParent():GetChildren()) do
					if not IsValid(botnet) or botnet:GetClass() ~= "zbf_bot" then continue end

					GetPrice = GetPrice + ((zbf.Bot.GetPrice(botnet:GetBotID()) * botnet:GetLevel()) * contraband["Values"]["botnet_multiplier"])
				end
			else
				GetPrice = GetPrice + ((zbf.Bot.GetPrice(botnet:GetBotID()) * ent:GetLevel()) * contraband["Values"]["botnet_multiplier"])
			end

			if parentClass == "zbf_rack" then
				notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime, GetPrice, "botnets", "equipment")
			else
				notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime, GetPrice, "botnet value")
			end

			owner:addMoney(GetPrice + getContrabandValue(ent))

			return true
		end
	end
end

function SWEP:PrimaryAttack()
    self:SetHoldType("melee")
    self:SetHoldTypeChangeTime(CurTime() + 0.3)

    self:SetNextPrimaryFire(CurTime() + 0.51)

    local vm = self:GetOwner():GetViewModel()
    if IsValid(vm) then
        vm:SendViewModelMatchingSequence(vm:LookupSequence("idle01"))
        self:SetSeqIdling(true)
    end
	
	if CLIENT then return end
	
	-- Do entity check
    local batonTrace = {
        start = self.Owner:GetShootPos(),
        endpos = self.Owner:GetShootPos() + self.Owner:GetAimVector() * 90,
        filter = self.Owner
    }

	self:GetOwner():LagCompensation(true)
	local trace = util.TraceLine(batonTrace)
	self:GetOwner():LagCompensation(false)

    if trace.Entity:IsValid() then
		local ent = trace.Entity
		local item = ent:GetClass()
		local value = contraband[item]

		-- If the entity is valid in the contraband list, reward with money.
        if value then
			if checkOwner(ent, self.Owner) then
				DarkRP.notify(self:GetOwner(), 1, 4, "You tried, but you own this entity!")
			else
				local aliveTime = math.max(CurTime() - ent:GetCreationTime(), 0)
				local timeBonus = getTimeAliveBonus(ent)
				local confiscationValue = getContrabandValue(ent)

				ent.ConfiscationAliveTime = aliveTime
				ent.ConfiscationTimeBonus = timeBonus
				ent.ConfiscationValue = confiscationValue

				if getValue(ent, self.Owner) then -- For entities with custom values
					--ent:Remove()
				else
					notifyConfiscation(
						self:GetOwner(),
						confiscationValue,
						timeBonus,
						aliveTime,
						nil,
						nil,
						"destroying this illegal entity"
					)

					self:GetOwner():addMoney(confiscationValue)
					ent:Remove()
				end
			end

			-- Make noise
			self.Owner:EmitSound(self.FleshHit[math.random(#self.FleshHit)])
		end
    else
		-- Make noise
		self.Owner:EmitSound(self.Hit[math.random(#self.Hit)])
	end
end

local ConfiscationBatonVersion = 3.81

-- recently added console command, really only for the developer/powerusers
-- shamelessly ported from my nightstick addon lmao
concommand.Add("confiscationbaton_info", function()
	local InfoTable = {
		"https://steamcommunity.com/sharedfiles/filedetails/?id=2981130069 created by Haze_of_dream",
		"",
		"Contact at: ",
		"STEAM_0:1:75838598",
		"https:/steamcommunity.com/id/Haze_of_dream",
		"",
		string.format("Confiscation Baton Version: %s", ConfiscationBatonVersion)
	}
	
	for _, msg in pairs(InfoTable) do
		print(msg)
	end
end)
