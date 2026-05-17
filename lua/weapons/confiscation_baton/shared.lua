AddCSLuaFile()

-- Add your list of items here
-- refer to https://steamcommunity.com/sharedfiles/filedetails/?id=2981130069 for a list of completely supported addons
-- contact https:/steamcommunity.com/id/Haze_of_dream for issues if it's an emergency
-- otherwise PLEASE use https://steamcommunity.com/workshop/filedetails/discussion/2981130069/3834298194196734223/

local contraband = {
	Values  = {
		-- controls how much the actual printer values get multiplied
		-- we multiply to encourage hitting hard targets, only giving the base amount of the printer would discorage pd raids as it would be more profitable to print yourself.
		["printer_multiplier"] = 5,
		
		-- this looks like alot until you print moonshine's predicted values
		["moonshine_multiplier"] = 42,
		
		-- bonus payout added for every x seconds an entity exists
		-- This is intentionally high because of the following considerations:
		-- 1) It has to obviously be worth raiding, if you are getting consistently less than 100% of the entity's value back then there is no point in raiding at all, 
		-- 2) The longer an entity exist, the more likelihood of the base being extremely tough to crack, so we need to make sure that it's worth the risk of cracking a tough base, and
		-- 3) We dont want to make the time scale too harshly towards the end or it encourages police to wait intentionally, and encouraging non-interaction is detrimental to roleplay.
		["time_bonus_interval"] = 20,
		["time_bonus_amount"] = 1800
	},

	-- Default
	["money_printer"] = 1000,
	["gunlab"] = 200,
	
	-- Zero's Weedfarm aka Zero's GrowOP
	["zwf_doobytable"] = 4000,
	["zwf_mixer"] = 4000,
	["zwf_muffinmix"] = 350,
	["zwf_oven"] = 4000,
	["zwf_generator"] = 4000,
	["zwf_fuel"] = 1000,
	["zwf_lamp"] = 2500,
	["zwf_ventilator"] = 2500,
	["zwf_outlet"] = 250,
	["zwf_pot"] = 250,
	["zwf_pot_hydro"] = 400,
	["zwf_soil"] = 250,
	["zwf_watertank"] = 2500,
	["zwf_drystation"] = 2500,
	["zwf_packingstation"] = 2500,
	["zwf_autopacker"] = 7500,
	["zwf_splice_lab"] = 4000,
	["zwf_seed_bank"] = 1000,
	["zwf_seed"] = 2500,
	["zwf_nutrition"] = 2000,
	["zwf_weedstick"] = 1000,
	["zwf_muffin"] = 1000,
	["zwf_bong01_ent"] = 1000,
	["zwf_bong02_ent"] = 1000,
	["zwf_bong03_ent"] = 1000,
	["zwf_seed_bank"] = 1000,
	["zwf_jar"] = 2500,
	
	-- Zero's GrowOP 2
	["zgo2_lamp"] = 0,
	["zgo2_tent"] = 0,
	["zgo2_pot"] = 0,
	["zgo2_rack"] = 0,
	["zgo2_backmix"] = 0,
	["zgo2_doobytable"] = 1000,
	["zgo2_mixer"] = 1000,
	["zgo2_oven"] = 1000,
	["zgo2_soil"] = 200,
	["zgo2_battery"] = 1000,
	["zgo2_bulb"] = 1000,
	["zgo2_seedlibary"] = 1000,
	["zgo2_seed"] = 1000,
	["zgo2_watertank_small"] = 3000,
	["zgo2_watertank"] = 4000,
	["zgo2_pump"] = 3000,
	["zgo2_splicer"] = 1000,
	["zgo2_packer"] = 4000,
	["zgo2_dryline"] = 1500,
	["zgo2_weedblock"] = 20000,
	["zgo2_logbook"] = 1000,
	["zgo2_crate"] = 1000,
	["zgo2_motor"] = 1000,
	
	-- Zeros' Meth Lab 2
	["zmlab2_tent"] = 750,
	["zmlab2_equipment"] = 750,
	["zmlab2_item_autobreaker"] = 4000,
	["zmlab2_item_acid"] = 1000,
	["zmlab2_item_aluminium"] = 1000,
	["zmlab2_item_lox"] = 1000,
	["zmlab2_item_methylamine"] = 1000,
	["zmlab2_machine_filler"] = 1000,
	["zmlab2_machine_filter"] = 1000,
	["zmlab2_machine_frezzer"] = 1000,
	["zmlab2_machine_furnace"] = 1000,
	["zmlab2_machine_mixer"] = 1000,
	["zmlab2_machine_ventilation"] = 1000,
	["zmlab2_storage"] = 1000,
	["zmlab2_table"] = 1000,

	SodiumLamps = {
			["01"] = 1000,
			["02"] = 2000,
			["03"] = 4000
	},

	LEDLamps = {
			["01"] = 2000,
			["02"] = 4000,
			["03"] = 6000
	},

	Generators = {
			["01"] = 2000,
			[".m"] = 4000
	},

	Pots = {
			[".m"] = 1000,
			["04"] = 500,
			["01"] = 1500,
			["02"] = 2000,
			["03"] = 1500,
			["05"] = 1000,
			["06"] = 500
	},

	Mixes = {
			["muffin"] = 500,
			["brownie"] = 500,
			["patty"] = 500,
			["cookie"] = 500,
			["cinnamon"] = 500,
			["donut"] = 500
	},

	Tents = {
			["01"] = 2000,
			["02"] = 4000
	},
	
	-- Zero's Yeastbeast aka Moonshine
	["zyb_constructionkit_condenser"] = 2500,
	["zyb_constructionkit_cooler"] = 2500,
	["zyb_fermbarrel"] = 500,
	["zyb_yeastgrinder"] = 2000,
	["zyb_jarcrate"] = 200,
	["zyb_jarpack"] = 200,
	["zyb_paperbag"] = 100,
	["zyb_sugar"] = 100,
	["zyb_water"] = 100,
	["zyb_fuel"] = 50,
	["zyb_yeast"] = 100,
	["zyb_distillery_cooler"] = 4500,
	["zyb_distillery_condenser"] = 4500,
	
	-- Zeros' CrackerMaker
	["zcm_blackpowder"] = 2000,
	["zcm_crackermachine"] = 5000,
	["zcm_paperroll"] = 2000,
	["zcm_firecracker"] = 1500,
	
	-- sPrinters
	["sprinter_tier_1"] = 5000,
	["sprinter_tier_2"] = 6000,
	["sprinter_tier_3"] = 7000,
	["sprinter_tier_4"] = 9000,
	
	-- Cocaine Factory
	["cocaine_baking_soda"] = 50,
	["cocaine_water"] = 75,
	["cocaine_box"] = 100,
	["cocaine_bucket"] = 75,
	["cocaine_extractor"] = 1750,
	["cocaine_drying_rack"] = 1500,
	["cocaine_gas"] = 350,
	["cocaine_cooking_plate"] = 250,
	["cocaine_leaves"] = 50,
	["cocaine_stove"] = 1500,
	["cocaine_pack"] = 2500,

	-- Dynamic values
	["zwf_palette"] = 2500,
	["zwf_weedblock"] = 1000,
	["zwf_seed"] = 1000,
	["zyb_distillery"] = 5000,
	["sprinter_rack"] = 25000,
	["zmlab2_item_meth"] = 250,
	["zmlab2_item_crate"] = 500,
	["zmlab2_item_palette"] = 1000,
	["zyb_jar"] = 50,
	["zgo2_jarcrate"] = 50,
	["zgo2_weedbranch"] = 500,
	["zgo2_jar"] = 500,
	["zgo2_baggy"] = 250,
	["zgo2_palette"] = 50,
	["zgo2_clipper"] = 5000,
	["zcm_box"] = 200
}

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
	-- NOTICE HOW THIS IS ALL ZERO'S SHIT????
	local strings = {
		"zwf_",
		"zmlab2_",
		"zyb_",
		"zgo2_",
		"zcm_"
	}

	for _, comp in pairs(strings) do
		if string.StartsWith(ent:GetClass(), comp) then return end
	end

	if owner == ent:Getowning_ent() then return true end
end

-- This is all the calculations for how much a user is awarded per aliveTime of the entity
-- Longer time alive = more money, Frequency and amount per interval is determined by config
local function getTimeAliveBonus(ent)
	local interval = contraband["Values"]["time_bonus_interval"] or 120
	local value = contraband["Values"]["time_bonus_amount"] or 250

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
		
			if money == 0 then return false
			else 
				notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime, money, "meth")			end

			owner:addMoney(money + getContrabandValue(ent))
		
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
			local MegaLongFormula = (zyb.config.Jar.MoonshineAmount * ent:GetJarCount()) * confiscation_config["moonshine_multiplier"]

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
				totalvalue = totalvalue + contraband["zyb_distillery_cooler"]
				-- remove attached cooler after value calculation
				ent:GetCooler():Remove()
			end			
			
			if IsValid(ent:GetCondenser()) then
				totalvalue = totalvalue + contraband["zyb_distillery_condenser"]
				-- remove attached condenser after value calculation
				ent:GetCondenser():Remove()
			end

			if totalvalue then
				notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime, totalvalue, "attached equipment")	
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
			notifyConfiscation(owner, zgo2.Plant.GetWeedAmount(ent:GetPlantID()), zgo2.Plant.GetTotalMoney(ent:GetPlantID()), "weed") 

			owner:addMoney(zgo2.Plant.GetTotalMoney(ent:GetPlantID()))

			return true
		end		
		
		if string.find(ent:GetClass(), "zgo2_clipper") then
			if ent:GetHasMotor() then 
				local value = getContrabandValue(ent) + contraband["zgo2_motor"]
				notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime, contraband["zgo2_motor"], "parts", "equipment") 
			else
				value = getContrabandValue(ent)
				notifyConfiscation(owner, value, nil, nil, "equipment") 
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
			notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime) 
			owner:addMoney(getContrabandValue(ent))

			return true
		end		
		
		if string.find(ent:GetClass(), "zgo2_palette") then
			money = contraband["zgo2_weedblock"] * #ent.WeedList
			
			if #ent.WeedList > 0 then
				notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime, contraband["zgo2_weedblock"] * #ent.WeedList, "weed blocks") 
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

			notifyConfiscation(owner, contraband["SodiumLamps"][getType], nil, nil, "operation equipment") 

			owner:addMoney(contraband["SodiumLamps"][getType])

			return true
		end	
		
		if string.find(ent:GetClass(), "zgo2_lamp") and string.find(ent:GetModel(), "led") and not string.find(ent:GetModel(), "tent") then
			local pathtrim = string.Split(ent:GetModel(), "models/zerochain/props_growop2/")[2]
			local getType = string.sub(pathtrim, 15, 16)

			notifyConfiscation(owner, contraband["LEDLamps"][getType], nil, nil, "operation equipment") 

			owner:addMoney(contraband["LEDLamps"][getType])

			return true
		end	
		
		if string.find(ent:GetClass(), "zgo2_lamp") and string.find(ent:GetModel(), "led") and string.find(ent:GetModel(), "tent") then
			notifyConfiscation(owner, contraband["LEDLamps"]["01"], nil, nil, "operation equipment") 

			owner:addMoney(contraband["LEDLamps"]["01"])

			return true
		end	
		
		if string.find(ent:GetClass(), "zgo2_lamp") and string.find(ent:GetModel(), "sodium") and string.find(ent:GetModel(), "tent") then
			notifyConfiscation(owner, contraband["SodiumLamps"]["01"], nil, nil, "operation equipment") 

			owner:addMoney(contraband["SodiumLamps"]["01"])

			return true
		end
		
		if string.find(ent:GetClass(), "zgo2_generator") then
			local pathtrim = string.Split(ent:GetModel(), "models/zerochain/props_growop2/")[2]
			local getType = string.sub(pathtrim, 15, 16)
			
			notifyConfiscation(owner, contraband["Generators"][getType], nil, nil, "operation equipment") 

			owner:addMoney(contraband["Generators"][getType])

			return true
		end	
		
		
		if string.find(ent:GetClass(), "zgo2_pot") then
			local pathtrim = string.Split(ent:GetModel(), "models/zerochain/props_growop2/")[2]
			local getType = string.sub(pathtrim, 9, 10)
			
			notifyConfiscation(owner, contraband["Pots"][getType], nil, nil, "growing equipment") 

			owner:addMoney(contraband["Pots"][getType])

			return true
		end		
		
		if string.find(ent:GetClass(), "zgo2_backmix") then
			local pathtrim = string.Split(ent:GetModel(), "models/zerochain/props_growop2/")[2]
			local mdltrim = string.Split(pathtrim, ".mdl")[1]
			local getType = string.sub(mdltrim, 14, 25)
			
			notifyConfiscation(owner, contraband["Mixes"][getType], nil, nil, "ingredients") 

			owner:addMoney(contraband["Mixes"][getType])

			return true
		end	
		
		if string.find(ent:GetClass(), "zgo2_rack") then
			local pathtrim = string.Split(ent:GetModel(), "models/zerochain/props_growop2/")[2]
			local getType = string.sub(pathtrim, 10, 11)
			
			notifyConfiscation(owner, contraband["Pots"][getType], nil, nil, "holding equipment") 

			owner:addMoney(contraband["Pots"][getType])

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
						stored = stored + contraband["SodiumLamps"]["01"]
					end				
					if string.find(child:GetModel(), "led") then
						stored = stored + contraband["LEDLamps"]["01"]
					end
				end
			end
			
			if stored == 0 then
				notifyConfiscation(owner, contraband["Tents"][getType], nil, nil, "the operating tent") 
				owner:addMoney(contraband["Tents"][getType])
			else
				notifyConfiscation(owner, contraband["Tents"][getType], stored, "attached equipment", "the operating tent") 
				owner:addMoney(contraband["Tents"][getType] + stored)
			end

			return true
		end
	end
	
	-- yes, i copied my code from zero's meth jars, cry about it :)
	if string.find(ent:GetClass(), "zcm_box") then
		local MegaLongFormula = contraband["zcm_firecracker"] * ent:GetFireworkCount()

		if ent:GetFireworkCount() == 0 then return false
		else 
			notifyConfiscation(owner, getContrabandValue(ent), ent.ConfiscationTimeBonus, ent.ConfiscationAliveTime, MegaLongFormula, "contained jar values") 
		end
		owner:addMoney(MegaLongFormula + getContrabandValue(ent))
		
		return true
	end
end

function SWEP:PrimaryAttack()
    BaseClass.PrimaryAttack(self)
    self:SetNextSecondaryFire(self:GetNextPrimaryFire())
	
	if CLIENT then return end

	-- Make noise
	self:EmitSound(self.FleshHit[math.random(#self.Hit)])
	
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
					ent:Remove()
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
		end
    end
end

local ConfiscationBatonVersion = 3.1

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
