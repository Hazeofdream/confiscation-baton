AddCSLuaFile()

-- Add your list of items here
-- refer to https://steamcommunity.com/sharedfiles/filedetails/?id=2981130069 for a list of completely supported addons
-- contact https:/steamcommunity.com/id/Haze_of_dream for issues if it's an emergency
-- otherwise PLEASE use https://steamcommunity.com/workshop/filedetails/discussion/2981130069/3834298194196734223/

contraband = contraband or {}
PurchaseHold = PurchaseHold or {}

-- Disables ownership checks and disables killing the entities
local DEBUG = false

-- Only add items that actually exist on the server
function loadContraband()
	local loadedAddons = {}

	contraband["Values"] = {
		-- Controls how long a player cannot purchase this entity post-confiscation
		-- This exist because criminal users can simply steal the entities for indefinite periods of time
		-- Most server's dont want to rely on police users storing mass printers, regardless of the legal justification of "seizing contraband"
		-- So this is a compromise to make being raided by police a punishment, and not just "oh, the police raided me, time to put my printers back down"
		["HoldTime"] = 1200,
		
		-- this looks like alot until you print moonshine's predicted values
		["moonshine_multiplier"] = 42,

		-- a full barrel (way past what you actually require) is only 4k lmao
		-- believe it or not, but for an optimal barrel, this is still only around $1,200
		["opium_multiplier"] = 400,

		["botnet_multiplier"] = 2,
		
		-- bonus payout added for every x seconds an entity exists
		-- This is intentionally high because of the following considerations:
		-- 1) It has to obviously be worth raiding, if you are getting consistently less than 100% of the entity's value back then there is no point in raiding at all, 
		-- 2) The longer an entity exist, the more likelihood of the base being extremely tough to crack, so we need to make sure that it's worth the risk of cracking a tough base, and
		-- 3) We dont want to make the time scale too harshly towards the end or it encourages police to wait intentionally, and encouraging non-interaction is detrimental to roleplay.
		["time_bonus_interval"] = 15,
		["time_bonus_amount"] = 2000
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
		contraband["zgo2_clipper"] = 10000
		contraband["zgo2_packer"] = 10000
		contraband["zgo2_dryline"] = 1500

		contraband["Racks"] = {
			["default"] = 4000,
			["01"] = 2000,
		}

		contraband["Mixes"] = {
			["muffin"] = 500,
			["brownie"] = 500,
			["patty"] = 500,
			["cookie"] = 500,
			["cinnamon"] = 500,
			["donut"] = 500
		}

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
			["01"] = 4000,
			["large_generator"] = 8000
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

		contraband["WeedTents"] = {
			["01"] = 2000,
			["02"] = 5500
		}

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

		contraband["Tents"] = {
			["unbuilt"] = 3000,
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
	-- From Crap-Head, not to be confused with the Opium factory from nykez
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
		contraband["cocaine_battery"] = 300
		contraband["cocaine_cooking_pot"] = 150

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
	if scripted_ents.GetStored("exhib_printer") or scripted_ents.GetStored("exhib_printers") then
		contraband["exhib_printer"] = 15000
		contraband["exhib_printers"] = 15000

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

	-- Opium Factory by nykez
	if scripted_ents.GetStored("the_opium_barrel") then
		contraband["the_opium_barrel"] = 2250
		contraband["the_opium_bottle"] = 450
		contraband["the_opium_codeine"] = 750
		contraband["the_opium_gas"] = 3000
		contraband["the_opium_heater"] = 7500
		contraband["the_opium_packer"] = 1500
		contraband["the_opium_packed"] = 1500
		contraband["the_opium_papaverine"] = 900
		contraband["the_opium_sulfate"] = 1050
		contraband["the_opium_water"] = 450

		table.insert(loadedAddons, "Opium Factory")
	end

	if CLIENT then return end

	print("[Confiscation Baton] Loaded Contraband support for " .. #loadedAddons .. " addons:")

	for _, addonName in pairs(loadedAddons) do
		print("  - " .. addonName)
	end
end

hook.Remove("InitPostEntity", "ConfiscationBaton_LoadContraband")
hook.Add("InitPostEntity", "ConfiscationBaton_LoadContraband", loadContraband)

if CLIENT then
    SWEP.Slot = 1
    SWEP.SlotPos = 6
end

local BaseClass = baseclass.Get("stick_base")

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


-- This Handles ownership checks to prevent user's confiscating their own printers
-- If the function fails, the entity doesn't support DarkRP's Getowning_ent NW Flag

local function checkOwner(ent, owner)
	local success, result = pcall(function()
		return owner == ent:Getowning_ent()
	end)

	if success and result then
		if DEBUG then 
			return false 
		else 
			return true
		end
	end

	return
end

-- Fallback function to prevent errors grabbing settings
local function getContrabandSetting(key, default)
	local values = contraband and contraband["Values"]

	if not istable(values) then
		return default
	end

	local value = values[key]

	if value == nil then
		return default
	end

	return value
end

-- Function to add a purchase hold for a specific player and entity class
function AddPurchaseHold(ply, class)
	if not IsValid(ply) or not class then return end

	local steamid = ply:SteamID64()
	local holdTime = getContrabandSetting("HoldTime", 0)

	PurchaseHold[steamid] = PurchaseHold[steamid] or {}

	PurchaseHold[steamid][class] = CurTime() + holdTime
end

-- Helper function to check if a player is currently under a purchase hold for a specific entity class
function IsPurchaseHeld(ply, class)
	if not IsValid(ply) or not class then return true end

	local playerHolds = PurchaseHold[ply:SteamID64()]
	if not playerHolds then return true end

	local expires = playerHolds[class]
	if not expires then return true end

	-- Expired, remove it.
	if expires <= CurTime() then
		playerHolds[class] = nil

		if next(playerHolds) == nil then
			PurchaseHold[ply:SteamID64()] = nil
		end

		return true
	end

	return false
end

-- This is all the calculations for how much a user is awarded per aliveTime of the entity
-- Longer time alive = more money, Frequency and amount per interval is determined by config
local function getTimeAliveBonus(ent)
	local interval = getContrabandSetting("time_bonus_interval", 15)
	local value = getContrabandSetting("time_bonus_amount", 2800)

	if interval <= 0 or value <= 0 then return 0 end
	if not IsValid(ent) or not ent.GetCreationTime then return 0 end

	local aliveTime = math.max(CurTime() - ent:GetCreationTime(), 0)

	return math.floor(aliveTime / interval) * value
end

local function getContrabandValue(ent)
	local baseValue = contraband[ent:GetClass()] or 0

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

-- Hook to prevent barred users from purchasing contraband entities while under a purchase hold
hook.Add("canBuyCustomEntity", "ConfiscationPurchaseHold", function(ply, entityTable)
    local allowed = IsPurchaseHeld(ply, entityTable.ent)

    if not allowed then
        local expires = PurchaseHold[ply:SteamID64()][entityTable.ent]
        local remaining = math.ceil(expires - CurTime())

        DarkRP.notify(ply, 1, 4, "The Police Confiscated your printers and must wait ".. formatAliveTime(remaining) .. " before purchasing again.")

        return false
    end
end)

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
			else
				notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime)
			end

			owner:addMoney(money + getContrabandValue(ent))
		
			return true
		end

		if string.find(ent:GetClass(), "zmlab2_tent") then
			local getType = string.match(ent:GetModel(), "zmlab2_tent(%d+)") or "unbuilt"
			local tentValue = contraband["Tents"][getType] or 0

			notifyConfiscation(owner, tentValue, ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime)

			owner:addMoney(tentValue + getContrabandValue(ent))

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
					money = money + printer:GetWithdrawAmount()
					printervalue = printervalue + getContrabandValue(printer)
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
		local money = ent:GetHolding()
		
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
		local money = 0
		if ent.GetMoney then
			local ok, value = pcall(ent.GetMoney, ent)
			if ok and isnumber(value) then
				money = math.max(value, 0)
			end
		end

		local slotCount = 1
		if ent.GetSlots then
			local ok, value = pcall(ent.GetSlots, ent)
			if ok and isnumber(value) then
				slotCount = math.max(1, value)
			end
		end

		local printerValue = math.min(getContrabandValue(ent), 2000000) * slotCount
		
		if money == 0 then
			notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime)
		else
			notifyConfiscation(owner, printerValue, ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime, money, "printed money")
		end

		owner:addMoney(money + printerValue)
	
		return true
	end

	-- Zero's Yeastbeast
	if string.sub(ent:GetClass(), 1, 4) == "zyb_" then
		if ent:GetClass() == "zyb_jar" then
			local moonshineMultiplier = getContrabandSetting("moonshine_multiplier", 42)
			if ent:GetMoonShine() == 0 then return false
			else 
				notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime, ent:GetMoonShine() * moonshineMultiplier, "jar value") 
			end
			owner:addMoney(ent:GetMoonShine() * moonshineMultiplier + getContrabandValue(ent))

			return true
		end	
		
		if string.find(ent:GetClass(), "zyb_jarcrate") then
			local MegaLongFormula = (zyb.config.Jar.MoonshineAmount * ent:GetJarCount()) * getContrabandSetting("moonshine_multiplier", 42)

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
			notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime, zgo2.Plant.GetSellValue(ent:GetPlantID()), "weed") 

			owner:addMoney(zgo2.Plant.GetSellValue(ent:GetPlantID()) + getContrabandValue(ent))

			return true
		end		
		
		-- this thing is a nightmare btw
		-- It doesn't JUST be the clipper, it can also have: a jar, a jar with weed contents, a jar with weed contents and branches churning
		-- no branches with a motor & jar, or any combination of that 4 shit to check.
		-- of course, it doesn't help that zero is a shit coder and checking the contents of an empty jar for weed THROWS AN ERROR
		-- HEY BUDDY, HAVE YOU HEARD OF IsValid()? OR THIS NEAT THING CALLED 'or 0'????
		if string.find(ent:GetClass(), "zgo2_clipper") then
			local weedvalue = 0

			if ent:GetWeedAmount() > 0 then
				weedvalue = ent:GetWeedAmount() * zgo2.Plant.GetSellValue(ent:GetWeedID())
			end

			local jarvalue = 0

			for _, child in pairs(ent:GetChildren()) do
				if IsValid(child) and child:GetClass() == "zgo2_jar" then
					if child:GetWeedAmount() > 0 then
						jarvalue = jarvalue + (zgo2.Plant.GetSellValue(child:GetWeedID()) * child:GetWeedAmount()) + contraband["zgo2_jar"] 
					else
						jarvalue = jarvalue + contraband["zgo2_jar"]
					end
				end
			end

			local motorvalue = ent:GetHasMotor() and contraband["zgo2_motor"] or 0
			local extravalue = motorvalue + weedvalue + jarvalue
			local value = getContrabandValue(ent) + extravalue

			if extravalue > 0 then
				notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime, extravalue, "parts and contents", "equipment")
			else
				notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime)
			end

			owner:addMoney(value)

			return true
		end

		if string.find(ent:GetClass(), "zgo2_packer") then
			local weedvalue = 0

			-- Packer can store weed, check that incase
			if ent:GetWeedAmount() > 0 then
				weedvalue = ent:GetWeedAmount() * zgo2.Plant.GetSellValue(ent:GetWeedID())
			end

			if weedvalue > 0 then
				notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime, weedvalue, "packed weed", "machine")
			else
				notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime)
			end

			owner:addMoney(weedvalue + getContrabandValue(ent))

			return true
		end

		-- Account for all branches attached to a drying line
		if string.find(ent:GetClass(), "zgo2_dryline") then
			local weedvalue = 0

			for _, branch in pairs(ent.WeedBranches) do
				if not branch.id or not branch.amount then continue end

				weedvalue = weedvalue + (branch.amount * zgo2.Plant.GetSellValue(branch.id))
			end

			if weedvalue > 0 then
				notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime, weedvalue, "weed branches", "hook") 
			else
				notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime)
			end

			owner:addMoney(weedvalue + getContrabandValue(ent))

			return true
		end
		
		if ent:GetClass() == "zgo2_jar" then
			local jarweed = 0
			local WeedValue = 0

			if ent:GetWeedAmount() > 0 then
				WeedValue = zgo2.Plant.GetSellValue(ent:GetWeedID()) * ent:GetWeedAmount()
			end

			if WeedValue > 0 then
				notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime, WeedValue, "weed")
			else
				notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime)
			end

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

			if money > 0 then
				notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime, money, "weed blocks") 
			else
				notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime)
			end

			owner:addMoney(getContrabandValue(ent) + money)
			return true
		end	
		
		if string.find(ent:GetClass(), "zgo2_crate") then
			local weedvalue = 0

			for _, branch in pairs(ent.WeedBranches or {}) do
				if not branch.id or not branch.amount then continue end

				weedvalue = weedvalue + (branch.amount * zgo2.Plant.GetSellValue(branch.id))
			end

			if weedvalue > 0 then
				notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime, weedvalue, "weed branches", "container")
			else
				notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime)
			end

			owner:addMoney(weedvalue + getContrabandValue(ent))

			return true
		end

		if string.find(ent:GetClass(), "zgo2_jarcrate") then
			local jarvalue = 0

			for _, jar in pairs(ent.WeedList or {}) do
				if not IsValid(jar) then continue end

				jarvalue = jarvalue + (contraband["zgo2_jar"] or 0)

				if jar:GetWeedAmount() > 0 then
					jarvalue = jarvalue + (zgo2.Plant.GetSellValue(jar:GetWeedID()) * jar:GetWeedAmount())
				end
			end

			if jarvalue > 0 then
				notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime, jarvalue, "stored weed jars", "container")
			else
				notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime)
			end

			owner:addMoney(jarvalue + getContrabandValue(ent))

			return true
		end
		
		if string.find(ent:GetClass(), "zgo2_baggy") then
			local WeedValue = ent:GetWeedAmount() * ent:GetWeedTHC()
			notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime, WeedValue, "weed") 
		
			owner:addMoney(WeedValue + getContrabandValue(ent))

			return true
		end
		
		if string.find(ent:GetModel(), "zgo2_sodium_lamp") then
			local getType = string.match(ent:GetModel(), "zgo2_sodium_lamp(%d+)")
			local lampValue = contraband["SodiumLamps"][getType] or 0

			notifyConfiscation(owner, getContrabandValue(ent) + lampValue, ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime) 

			owner:addMoney(getContrabandValue(ent) + lampValue)

			return true
		end	
		
		if string.find(ent:GetModel(), "zgo2_led_lamp") then
			local getType = string.match(ent:GetModel(), "zgo2_led_lamp(%d+)")
			local lampValue = contraband["LEDLamps"][getType] or 0

			notifyConfiscation(owner, getContrabandValue(ent) + lampValue, ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime) 

			owner:addMoney(getContrabandValue(ent) + lampValue)

			return true
		end	
		
		if string.find(ent:GetModel(), "zgo2_tent_led_lamp") then
			notifyConfiscation(owner, getContrabandValue(ent) + contraband["LEDLamps"]["01"], ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime) 

			owner:addMoney(getContrabandValue(ent))

			return true
		end	
		
		if string.find(ent:GetModel(), "zgo2_tent_sodium_lamp") then
			notifyConfiscation(owner, getContrabandValue(ent) + contraband["SodiumLamps"]["01"], ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime) 

			owner:addMoney(getContrabandValue(ent))

			return true
		end
		
		if string.find(ent:GetClass(), "zgo2_generator") then
			local getType = string.match(ent:GetModel(), "zgo2_generator(%d+)") or "large_generator"
			local generatorValue = contraband["Generators"][getType] or 0
			
			notifyConfiscation(owner, generatorValue + getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime) 

			owner:addMoney(generatorValue + getContrabandValue(ent))

			return true
		end	
		
		
		if string.find(ent:GetClass(), "zgo2_pot") then
			local getType = string.match(ent:GetModel(), "zgo2_pot(%d+)") or "default"
			local potValue = contraband["Pots"][getType] or 0
			local weedValue = 0

			local plant = ent.GetPlant and ent:GetPlant()

			if IsValid(plant) and plant.GetPlantID then
				local plantID = plant:GetPlantID()

				if plantID and plantID > 0 then
					weedValue = weedValue + zgo2.Plant.GetSellValue(plantID)
				end
			end

			local value = getContrabandValue(ent) + potValue + weedValue

			if weedValue > 0 then
				notifyConfiscation(owner, getContrabandValue(ent) + potValue, ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime, weedValue, "growing weed", "pot")
			else
				notifyConfiscation(owner, getContrabandValue(ent) + potValue, ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime)
			end

			owner:addMoney(value)

			return true
		end	
		
		if string.find(ent:GetClass(), "zgo2_backmix") then
			local getType = string.match(ent:GetModel(), "zgo2_backmix_(%w+)")
			local mixValue = contraband["Mixes"][getType] or 0
			
			notifyConfiscation(owner, getContrabandValue(ent) + mixValue, ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime) 

			owner:addMoney(mixValue + getContrabandValue(ent))

			return true
		end	
		
		if string.find(ent:GetClass(), "zgo2_rack") then
			local getType = string.match(ent:GetModel(), "zgo2_rack(%d+)") or "default"
			local rackValue = contraband["Racks"][getType] or 0
			local potValue = 0
			local weedValue = 0

			if istable(ent.Pots) then
				for _, pot in pairs(ent.Pots) do
					if not IsValid(pot) then continue end

					local potType = string.match(pot:GetModel() or "", "zgo2_pot(%d+)") or "default"
					potValue = potValue + (contraband["Pots"][potType] or 0)

					local plant = pot.GetPlant and pot:GetPlant()

					if IsValid(plant) and plant.GetPlantID then
						local plantID = plant:GetPlantID()

						if plantID and plantID > 0 then
							weedValue = weedValue + zgo2.Plant.GetSellValue(plantID)
						end
					end
				end
			end

			local value = rackValue + potValue + weedValue + getContrabandValue(ent)

			if weedValue > 0 then
				notifyConfiscation(owner, value, ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime, weedValue + potValue, "growing weed", "rack")
			else
				notifyConfiscation(owner, value, ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime, potValue, "pots", "rack")
			end

			owner:addMoney(value)

			return true
		end
		
		if string.find(ent:GetClass(), "zgo2_tent") then
			local getType = string.match(ent:GetModel(), "zgo2_tent(%d+)")
			local tentValue = contraband["WeedTents"][getType] or 0

			local stored = 0

			-- automatically profits attached equipment
			for _, child in pairs(ent:GetChildren()) do
				if string.find(child:GetModel(), "zgo2_tent_sodium_lamp") then
					stored = stored + getContrabandValue(child)
					child:Remove()
				end				
				if string.find(child:GetModel(), "zgo2_tent_led_lamp") then
					stored = stored + getContrabandValue(child)
					child:Remove()
				end
			end
			
			if stored == 0 then
				notifyConfiscation(owner, getContrabandValue(ent) + tentValue, ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime) 
				owner:addMoney(getContrabandValue(ent) + tentValue)
			else
				notifyConfiscation(owner, getContrabandValue(ent) + tentValue, ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime, stored, "attached equipment", "the operating tent") 
				owner:addMoney(getContrabandValue(ent) + stored + tentValue)
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

	-- The Opium Factory
	if string.sub(ent:GetClass(), 1, 9) == "the_opium" then
		if ent:GetClass() == "the_opium_barrel" then
			local storedValue = 0

			-- Sum ingredient values using getters
			local getters = {"Getcodeine", "Getpapaverine", "Getsulfate", "Getwater"}
			for _, func in ipairs(getters) do
				storedValue = storedValue + (ent[func](ent) or 0)
			end

			storedValue = storedValue * getContrabandSetting("opium_multiplier", 400)

			notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime, storedValue, "opium ingredients")

			owner:addMoney(getContrabandValue(ent) + storedValue)

			return true
		end

		if ent:GetClass() == "the_opium_packer" or ent:GetClass() == "the_opium_packed" then
			local value = (ent:Getprice() * 2) or 0
			local label = ent:GetClass() == "the_opium_packer" and "opium bottles" or "packed opium"

			notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime, value, label)

			owner:addMoney(getContrabandValue(ent) + value)

			return true
		end

		if ent:GetClass() == "the_opium_bottle" then
			local bottlePrices = {
				Low = opium.ahshop.LowOpiumPrice,
				Medium = opium.ahshop.mediumOpiumPrice,
				Premium = opium.ahshop.PremiumOpiumPrice,
			}

			local bottleValue = bottlePrices[ent:GetValue()] or 0
			local label = bottleValue > 0 and "bottle ingredients" or nil

			notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime, bottleValue, label)

			owner:addMoney(getContrabandValue(ent) + bottleValue)

			return true
		end

		if ent:GetClass() == "the_opium_heater" then
			local gasValue = 0

			-- check if it has a gas canister
			if IsValid(ent.gas) then
				gasValue = getContrabandValue(ent.gas)
			end

			if gasValue > 0 then
				notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime, gasValue, "attached equipment", "the heater")
			else
				notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime)
			end

			owner:addMoney(getContrabandValue(ent) + gasValue)

			return true
		end
	end

	-- Zero's Botnet
	if string.sub(ent:GetClass(), 1, 4) == "zbf_" then
		if string.find(ent:GetClass(), "zbf_rack") then
			local GetPrice = 0
			local botnetMultiplier = getContrabandSetting("botnet_multiplier", 2)

			for _, botnet in pairs(ent:GetChildren()) do
				if IsValid(botnet) and botnet:GetClass() == "zbf_bot" then
					GetPrice = GetPrice + ((zbf.Bot.GetPrice(botnet:GetBotID()) * botnet:GetLevel()) * botnetMultiplier)
					botnet:Remove()
				end
			end

			if GetPrice > 0 then
				notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime, GetPrice, "botnets", "the botnet rack")
			else
				notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime)
			end

			owner:addMoney(GetPrice + getContrabandValue(ent))

			return true
		end

		-- Individual botnets not on a rack
		if string.find(ent:GetClass(), "zbf_bot") then
			local GetPrice = 0
			local Rack, RackClass = nil, nil
			local botnetMultiplier = getContrabandSetting("botnet_multiplier", 2)

			success, Rack, RackClass = pcall(function()
				return ent:GetParent(), ent:GetParent():GetClass()
			end)

			-- Botnets within a rack
			if RackClass == "zbf_rack" then
				for _, botnet in pairs(Rack:GetChildren()) do
					if IsValid(botnet) and botnet:GetClass() == "zbf_bot" then
						GetPrice = GetPrice + ((zbf.Bot.GetPrice(botnet:GetBotID()) * botnet:GetLevel()) * botnetMultiplier)
						botnet:Remove()
					end
				end
			else
				GetPrice = GetPrice + ((zbf.Bot.GetPrice(ent:GetBotID()) * ent:GetLevel()) * botnetMultiplier)
			end

			if RackClass == "zbf_rack" then
				notifyConfiscation(owner, getContrabandValue(Rack), getContrabandValue(Rack), math.max(CurTime() - Rack:GetCreationTime(), 0), GetPrice, "botnets", "the botnet rack")
				Rack:Remove()
			else
				notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime, GetPrice, "botnet value")
			end

			owner:addMoney(GetPrice + getContrabandValue(RackClass == "zbf_rack" and Rack or ent))

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

	if not istable(contraband["Values"]) then
		loadContraband()
	end
	
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
					local success, owner = pcall(function()
						return ent:Getowning_ent()
					end)

					if success then
						-- Ban only printer type entities
						if string.find(item, "printer") then
							AddPurchaseHold(result, item)
						end
					end

					ent:Remove()
				else
					notifyConfiscation(self:GetOwner(), confiscationValue, timeBonus, aliveTime, nil, nil, "destroying this illegal entity")

					local success, owner = pcall(function()
						return ent:Getowning_ent()
					end)

					if success then
						-- Ban only printer type entities
						if string.find(item, "printer") then
							AddPurchaseHold(owner, item)
						end
					end

					self:GetOwner():addMoney(confiscationValue)
					if not DEBUG then
						ent:Remove()
					end
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
