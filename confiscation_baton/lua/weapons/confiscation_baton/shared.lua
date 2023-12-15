AddCSLuaFile()

-- Add your list of items here
-- refer to https://steamcommunity.com/sharedfiles/filedetails/?id=2981130069 for a list of completely supported addons
-- contact https:/steamcommunity.com/id/Haze_of_dream for issues if it's an emergency
-- otherwise PLEASE use https://steamcommunity.com/workshop/filedetails/discussion/2981130069/3834298194196734223/

-- newly added config for previously hardcoded values
local confiscation_config = {
	-- controls how much the actual printer values get multiplied
	-- we multiply to encourage hitting hard targets, only giving the base amount of the printer would discorage pd raids as it would be more profitable to print yourself.
	["printer_multiplier"] = 5,
	
	-- this looks like alot until you print moonshine's predicted values
	["moonshine_multiplier"] = 85
}

local contraband = {
	-- Default
	["money_printer"] = 2000,
	["gunlab"] = 400,
	
	-- Zero's Weedfarm aka Zero's GrowOP
	["zwf_doobytable"] = 8000,
	["zwf_mixer"] = 8000,
	["zwf_muffinmix"] = 700,
	["zwf_oven"] = 8000,
	["zwf_generator"] = 8000,
	["zwf_fuel"] = 2000,
	["zwf_lamp"] = 5000,
	["zwf_ventilator"] = 5000,
	["zwf_outlet"] = 500,
	["zwf_pot"] = 500,
	["zwf_pot_hydro"] = 800,
	["zwf_soil"] = 500,
	["zwf_watertank"] = 5000,
	["zwf_drystation"] = 5000,
	["zwf_packingstation"] = 5000,
	["zwf_autopacker"] = 15000,
	["zwf_splice_lab"] = 8000,
	["zwf_seed_bank"] = 2000,
	["zwf_seed"] = 5000,
	["zwf_nutrition"] = 4000,
	["zwf_weedstick"] = 2000,
	["zwf_muffin"] = 2000,
	["zwf_bong01_ent"] = 2000,
	["zwf_bong02_ent"] = 2000,
	["zwf_bong03_ent"] = 2000,
	["zwf_seed_bank"] = 2000,
	["zwf_jar"] = 5000, -- Although this has values like THC and grams that affect this, Zero's does not adjust this until it turns into a weedblock.
	
	-- Zero's GrowOP 2
	["zgo2_lamp"] = 0,
	["zgo2_tent"] = 0,
	["zgo2_pot"] = 0,
	["zgo2_rack"] = 0,
	["zgo2_backmix"] = 0,
	["zgo2_doobytable"] = 2000,
	["zgo2_mixer"] = 2000,
	["zgo2_oven"] = 2000,
	["zgo2_soil"] = 400,
	["zgo2_battery"] =  2000,
	["zgo2_bulb"] =  2000,
	["zgo2_seedlibary"] =  2000,
	["zgo2_seed"] =  2000,
	["zgo2_watertank_small"] =  6000,
	["zgo2_watertank"] =  8000,
	["zgo2_pump"] =  6000,
	["zgo2_splicer"] =  2000,
	["zgo2_packer"] =  8000,
	["zgo2_dryline"] =  3000, -- compensate for lines (and distance if possible)
	["zgo2_weedblock"] = 40000, -- Although this has values like grams that affect this, Zero's does not adjust this until it turns into a jar.
	["zgo2_logbook"] = 2000,
	["zgo2_crate"] = 2000,
	["zgo2_motor"] = 2000,
	
	-- Zeros' Meth Lab 2
	["zmlab2_tent"] = 1500,
	["zmlab2_equipment"] = 1500,
	["zmlab2_item_autobreaker"] = 8000,
	["zmlab2_item_acid"] = 2000,
	["zmlab2_item_aluminium"] = 2000,
	["zmlab2_item_lox"] = 2000,
	["zmlab2_item_methylamine"] = 2000,
	["zmlab2_machine_filler"] = 2000,
	["zmlab2_machine_filter"] = 2000,
	["zmlab2_machine_frezzer"] = 2000,
	["zmlab2_machine_furnace"] = 2000,
	["zmlab2_machine_mixer"] = 2000,
	["zmlab2_machine_ventilation"] = 2000,
	["zmlab2_storage"] = 2000,
	["zmlab2_table"] = 2000,
	
	-- These used to be hardcoded in the dynamic check but it made more sense to move here
	SodiumLamps = {
			["01"] = 2000,
			["02"] = 4000,
			["03"] = 8000
	},

	LEDLamps = {
			["01"] = 4000, -- Small
			["02"] = 8000, -- Medium
			["03"] = 12000 -- Large
	},

	Generators = {
			["01"] = 4000, -- Small
			[".m"] = 8000 -- Large
	},

	Pots = {
			["04"] = 1000, -- Basic
			["01"] = 3000, -- Auto pot
			["02"] = 4000, -- Jumbo Pot
			["03"] = 3000, -- Valhalla
			["05"] = 2000, -- Steel
			["06"] = 1000 -- Jute Bag
	},

	Mixes = {
			["muffin"] = 1000,
			["brownie"] = 1000,
			["patty"] = 1000,
			["cookie"] = 1000,
			["cinnamon"] = 1000,
			["donut"] = 1000
	},

	Tents = {
			["01"] = 4000, -- Big
			["02"] = 8000 -- Small
	},
	
	-- Zero's Yeastbeast aka Moonshine
	["zyb_constructionkit_condenser"] = 5000,
	["zyb_constructionkit_cooler"] = 5000,
	["zyb_fermbarrel"] = 1000,
	["zyb_yeastgrinder"] = 4000,
	["zyb_jarcrate"] = 400,
	["zyb_jarpack"] = 400,
	["zyb_paperbag"] = 200,
	["zyb_sugar"] = 200,
	["zyb_water"] = 200,
	["zyb_fuel"] = 100,
	["zyb_yeast"] = 200,
	["zyb_distillery_cooler"] = 9000,
	["zyb_distillery_condenser"] = 9000,
	
	-- Zeros' CrackerMaker (aka Fireworks)
	["zcm_blackpowder"] = 4000,
	["zcm_crackermachine"] = 10000,
	["zcm_paperroll"] = 4000,
	["zcm_firecracker"] = 3000,
	
	-- sPrinters
	["sprinter_tier_1"] = 10000,
	["sprinter_tier_2"] = 12000,
	["sprinter_tier_3"] = 14000,
	["sprinter_tier_4"] = 18000,
	
	-- Cocaine Factory
	["cocaine_baking_soda"] = 100,
	["cocaine_water"] = 150,
	["cocaine_box"] = 200,
	["cocaine_bucket"] = 150,
	["cocaine_bucket"] = 150,
	["cocaine_extractor"] = 3500,
	["cocaine_drying_rack"] = 3000,
	["cocaine_drying_rack"] = 3000,
	["cocaine_gas"] = 700,
	["cocaine_cooking_plate"] = 500,
	["cocaine_leaves"] = 100,
	["cocaine_stove"] = 3000,
	["cocaine_pack"] = 5000,
	
	-- THESE ARE DYNAMIC VALUES
	-- They are dynamic because while they have a base value, they have additional values that can add onto, such as weed purity and content.
	-- Any additions must be specified and added in block line 186
	-- Some addons (mostly zero's) does not bode at all with how darkrp's Getowning_ent() handles checking owners, If yours is one of those, make an exception in line 177
	["zwf_palette"] = 5000,
	["zwf_weedblock"] = 2000,
	["zwf_seed"] = 2000,
	
	-- can have additional attachments like the cooler
	["zyb_distillery"] = 10000,

	["sprinter_rack"] = 50000,

	["zmlab2_item_meth"] = 500,
	["zmlab2_item_crate"] = 1000,
	["zmlab2_item_palette"] = 2000,

	["zyb_jar"] = 100,
	
	["zgo2_jarcrate"] = 100,
	["zgo2_weedbranch"] = 1000,
	["zgo2_jar"] = 1000,
	["zgo2_baggy"] = 500,
	["zgo2_palette"] = 100,
	["zgo2_clipper"] =  10000, -- motor moment!

	["zcm_box"] = 400
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
	if string.sub(ent:GetClass(), 1, 4) == "zwf_" then return end
	if string.sub(ent:GetClass(), 1, 7) == "zmlab2_" then return end
	if string.sub(ent:GetClass(), 1, 4) == "zyb_" then return end
	if string.sub(ent:GetClass(), 1, 5) == "zgo2_" then return end
	if string.sub(ent:GetClass(), 1, 4) == "zcm_" then return end
	if owner == ent:Getowning_ent() then return true end
end


-- For some items like weed and meth, We use the original addons values to get the real value rather than use a flat amount.
local function getValue(ent, owner)
	-- Start breaking this into if arguments, instead of string checking 5+ times we can check once initially to see if it's even that addon's entity

	-- Zero's Weedfarm
	if string.sub(ent:GetClass(), 1, 4) == "zwf_" then
		if string.find(ent:GetClass(), "zwf_palette") then

			if ent:GetMoney() == 0 then return false -- If it has nothing, return false and remand it to config values
			else
				DarkRP.notify(owner, 1, 4, "You received " .. tostring(DarkRP.formatMoney(contraband[ent:GetClass()])) .. " for this entity and " .. tostring(DarkRP.formatMoney(ent:GetMoney())) .. " in weed.")
				owner:addMoney(ent:GetMoney() + contraband[ent:GetClass()])
			end
			
			return true
		end

		if string.find(ent:GetClass(), "zwf_weedblock") then

			DarkRP.notify(owner, 1, 4, "You received " .. tostring(DarkRP.formatMoney(contraband[ent:GetClass()])) .. " for this entity and " .. tostring(DarkRP.formatMoney(zwf.config.Plants[ent:GetWeedID()].sellvalue)) .. " in weed.") 
			owner:addMoney(zwf.config.Plants[ent:GetWeedID()].sellvalue + contraband[ent:GetClass()])
		
			return true
		end
		
		if string.find(ent:GetClass(), "zwf_seed") and not string.find(ent:GetClass(), "bank") then -- Seed banks, they have "seed" so lmao on me i guess

			DarkRP.notify(owner, 1, 4, "You received " .. tostring(DarkRP.formatMoney(contraband[ent:GetClass()])) .. " for this entity and " .. tostring(DarkRP.formatMoney(zwf.config.Plants[ent:GetSeedID()].sellvalue)) .. " in weed.")
			owner:addMoney(zwf.config.Plants[ent:GetSeedID()].sellvalue + contraband[ent:GetClass()])
		
			return true
		end
	end
	
	-- Zero's Methlab 2
	if string.sub(ent:GetClass(), 1, 7) == "zmlab2_" then
		if string.find(ent:GetClass(), "zmlab2_item_meth") then 
			if ent:GetMethAmount() == 0 and ent:GetMethQuality() == 0 then return false
			else
				DarkRP.notify(owner, 1, 4, "You received " .. tostring(DarkRP.formatMoney(contraband[ent:GetClass()])) .. " for this entity and " .. tostring(DarkRP.formatMoney(ent:GetMethAmount() + ent:GetMethQuality())) .. " in meth.")
			end

			owner:addMoney(ent:GetMethAmount() + ent:GetMethQuality() + contraband[ent:GetClass()])
		
			return true
		end		
		
		if string.find(ent:GetClass(), "zmlab2_item_crate") then
			if ent:GetMethAmount() == 0 and ent:GetMethQuality() <= 1 then return false-- zero counts an empty crate as 1 in meth quality lmao
			else 
				DarkRP.notify(owner, 1, 4, "You received " .. tostring(DarkRP.formatMoney(contraband[ent:GetClass()])) .. " for this entity and " .. tostring(DarkRP.formatMoney(ent:GetMethAmount() + ent:GetMethQuality())) .. " in meth.")
			end

			owner:addMoney(ent:GetMethAmount() + ent:GetMethQuality() + contraband[ent:GetClass()])
		
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
				DarkRP.notify(owner, 1, 4, "You received " .. tostring(DarkRP.formatMoney(contraband[ent:GetClass()])) .. " for this entity and " .. tostring(DarkRP.formatMoney(money)) .. " in meth.")
			end

			owner:addMoney(money + contraband[ent:GetClass()])
		
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
					money = money + printer:GetWithdrawAmount() * confiscation_config["printer_multiplier"]
					printervalue = printervalue + contraband[printer:GetClass()]
					printer:Remove()
					-- p:OnWithdrawn(ply, true) -- We dont want to do this or it logs as a withdrawn, inb4 "HE WITHDREW FROM THE PRINTERS! CORRUPTION!"
				end
			end
			
			if money == 0 then
				DarkRP.notify(owner, 1, 4, "You received " .. tostring(DarkRP.formatMoney(contraband[ent:GetClass()])) .. " for this entity")
			else
				DarkRP.notify(owner, 1, 4, string.format("You received %s for this entity, %s in printer value and %s in printed money.", DarkRP.formatMoney(contraband[ent:GetClass()]), DarkRP.formatMoney(printervalue), DarkRP.formatMoney(money)))
			end

			owner:addMoney(money + printervalue + contraband[ent:GetClass()])
		
			return true
		end	

		if string.find(ent:GetClass(), "sprinter_tier") then 
			local money = 0
			if ent:GetWithdrawAmount() == 0 then
				DarkRP.notify(owner, 1, 4, "You received " .. tostring(DarkRP.formatMoney(contraband[ent:GetClass()])) .. " for this entity")
			else 
				DarkRP.notify(owner, 1, 4, "You received " .. tostring(DarkRP.formatMoney(contraband[ent:GetClass()])) .. " for this entity and " .. tostring(DarkRP.formatMoney(ent:GetWithdrawAmount())) .. " in printed money.")	
				money = ent:GetWithdrawAmount()
			end
			owner:addMoney(ent:GetWithdrawAmount() + contraband[ent:GetClass()])

			return true
		end
	end

	-- Zero's Yeastbeast
	if string.sub(ent:GetClass(), 1, 4) == "zyb_" then
		if string.find(ent:GetClass(), "zyb_jar") and not string.find(ent:GetClass(), "pack") and not string.find(ent:GetClass(), "crate") then -- SCREW YOU ZERO, STOP HAVING SIMILARLY NAMED ITEMS
			if ent:GetMoonShine() == 0 then return false
			else 
				DarkRP.notify(owner, 1, 4, "You received " .. tostring(DarkRP.formatMoney(contraband[ent:GetClass()])) .. " for this entity and " .. tostring(DarkRP.formatMoney(ent:GetMoonShine() * confiscation_config["moonshine_multiplier"])) .. " in jar value.") 
			end
			owner:addMoney(ent:GetMoonShine() * confiscation_c["moonshine_multiplier"] + contraband[ent:GetClass()])

			return true
		end	
		
		if string.find(ent:GetClass(), "zyb_jarcrate") then
			local MegaLongFormula = (zyb.config.Jar.MoonshineAmount * ent:GetJarCount()) * confiscation_config["moonshine_multiplier"]

			if ent:GetJarCount() == 0 then return false
			else 
				DarkRP.notify(owner, 1, 4, "You received " .. tostring(DarkRP.formatMoney(contraband[ent:GetClass()])) .. " for this entity and " .. tostring(DarkRP.formatMoney(MegaLongFormula)) .. " in contained jar values") 
			end
			owner:addMoney(MegaLongFormula + (ent:GetJarCount() + contraband["zyb_jar"]) + contraband[ent:GetClass()])

			return true
		end		
		
		if string.find(ent:GetClass(), "zyb_distillery") then
			local totalvalue = 0
			if IsValid(ent:GetCooler()) then
				totalvalue = totalvalue + contraband["zyb_distillery_cooler"]
				ent:GetCooler():Remove()
			end			
			
			if IsValid(ent:GetCondenser()) then
				totalvalue = totalvalue + contraband["zyb_distillery_condenser"]
				ent:GetCondenser():Remove()
			end

			if totalvalue then
				DarkRP.notify(owner, 1, 4, "You received " .. tostring(DarkRP.formatMoney(contraband[ent:GetClass()])) .. " for this entity and " .. tostring(DarkRP.formatMoney(totalvalue)) .. " from attached equipment")	
			else
				DarkRP.notify(owner, 1, 4, "You received " .. tostring(DarkRP.formatMoney(contraband[ent:GetClass()])) .. " for this entity")
			end
			
			owner:addMoney(contraband[ent:GetClass()] + totalvalue)

			return true
		end
	end
	
	-- Zero's GrowOP 2 uses models to differentiate instead of classes -_-
	
	if string.sub(ent:GetClass(), 1, 5) == "zgo2_" then
		if string.find(ent:GetClass(), "zgo2_weedbranch") then
			DarkRP.notify(owner, 1, 4, "You received " .. tostring(DarkRP.formatMoney(zgo2.Plant.GetWeedAmount(ent:GetPlantID()))) .. " for this entity and " .. tostring(DarkRP.formatMoney(zgo2.Plant.GetTotalMoney(ent:GetPlantID()))) .. " in weed") 

			owner:addMoney(zgo2.Plant.GetTotalMoney(ent:GetPlantID()))

			return true
		end		
		
		if string.find(ent:GetClass(), "zgo2_clipper") then
			if ent:GetHasMotor() then 
				local value = contraband[ent:GetClass()] + contraband["zgo2_motor"]
				DarkRP.notify(owner, 1, 4, "You received " .. tostring(DarkRP.formatMoney(contraband[ent:GetClass()])) .. " for this equipment and " .. tostring(DarkRP.formatMoney(contraband["zgo2_motor"])) .. " in parts") 
			else
				value = contraband[ent:GetClass()]
				DarkRP.notify(owner, 1, 4, "You received " .. tostring(DarkRP.formatMoney(value)) .. " for equipment") 
			end

			owner:addMoney(value)

			return true
		end	
		
		if string.find(ent:GetClass(), "zgo2_jar")  and not string.find(ent:GetClass(), "crate") then
			local WeedValue = ent:GetWeedAmount() * ent:GetWeedTHC() -- im using this cause growop 2 is retarded and doesn't have a direct function for checking money (except for when exporting the data, no im not sifting that shit)
			DarkRP.notify(owner, 1, 4, "You received " .. tostring(DarkRP.formatMoney(contraband[ent:GetClass()])) .. " for this entity and " .. tostring(DarkRP.formatMoney(WeedValue)) .. " in weed") 
			owner:addMoney(WeedValue + contraband[ent:GetClass()])

			return true
		end		
		
		if string.find(ent:GetClass(), "zgo2_weedblock")  then	
			DarkRP.notify(owner, 1, 4, "You received " .. tostring(DarkRP.formatMoney(contraband[ent:GetClass()])) .. " for this entity") 
			owner:addMoney(contraband[ent:GetClass()])

			return true
		end		
		
		if string.find(ent:GetClass(), "zgo2_palette") then
			money = contraband["zgo2_weedblock"] * #ent.WeedList
			
			if #ent.WeedList > 0 then
				DarkRP.notify(owner, 1, 4, "You received " .. tostring(DarkRP.formatMoney(contraband[ent:GetClass()])) .. " for this entity and " .. tostring(DarkRP.formatMoney(contraband["zgo2_weedblock"] * #ent.WeedList)).. " in weed blocks") 
			else
				DarkRP.notify(owner, 1, 4, "You received " .. tostring(DarkRP.formatMoney(contraband[ent:GetClass()])) .. " for this entity")
			end

			owner:addMoney(contraband[ent:GetClass()] + money)
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
				DarkRP.notify(owner, 1, 4, "You received " .. tostring(DarkRP.formatMoney(contraband[ent:GetClass()])) .. " for this entity and " .. tostring(DarkRP.formatMoney(money)).. " in weed jars") 
			else
				DarkRP.notify(owner, 1, 4, "You received " .. tostring(DarkRP.formatMoney(contraband[ent:GetClass()])) .. " for this entity")
			end

			owner:addMoney(contraband[ent:GetClass()] + money)
			return true
		end
		
		if string.find(ent:GetClass(), "zgo2_baggy") then
			local WeedValue = ent:GetWeedAmount() * ent:GetWeedTHC()
			DarkRP.notify(owner, 1, 4, "You received " .. tostring(DarkRP.formatMoney(contraband[ent:GetClass()])) .. " for this entity and " .. tostring(DarkRP.formatMoney(WeedValue)) .. " in weed") 
		
			owner:addMoney(WeedValue + contraband[ent:GetClass()])

			return true
		end
		
		if string.find(ent:GetClass(), "zgo2_lamp") and string.find(ent:GetModel(), "sodium")  and not string.find(ent:GetModel(), "tent") then
			local pathtrim = string.Split(ent:GetModel(), "models/zerochain/props_growop2/")[2]
			local getType = string.sub(pathtrim, 17, 18)

			DarkRP.notify(owner, 1, 4, "You received " .. tostring(DarkRP.formatMoney(contraband["SodiumLamps"][getType])) .. " for operation equipment") 

			owner:addMoney(contraband["SodiumLamps"][getType])

			return true
		end	
		
		if string.find(ent:GetClass(), "zgo2_lamp") and string.find(ent:GetModel(), "led") and not string.find(ent:GetModel(), "tent") then
			local pathtrim = string.Split(ent:GetModel(), "models/zerochain/props_growop2/")[2]
			local getType = string.sub(pathtrim, 15, 16)

			DarkRP.notify(owner, 1, 4, "You received " .. tostring(DarkRP.formatMoney(contraband["LEDLamps"][getType])) .. " for operation equipment") 

			owner:addMoney(contraband["LEDLamps"][getType])

			return true
		end	
		
		if string.find(ent:GetClass(), "zgo2_lamp") and string.find(ent:GetModel(), "led") and string.find(ent:GetModel(), "tent") then
			DarkRP.notify(owner, 1, 4, "You received " .. tostring(DarkRP.formatMoney(4000)) .. " for operation equipment") 

			owner:addMoney(4000)

			return true
		end	
		
		if string.find(ent:GetClass(), "zgo2_lamp") and string.find(ent:GetModel(), "sodium") and string.find(ent:GetModel(), "tent") then
			DarkRP.notify(owner, 1, 4, "You received " .. tostring(DarkRP.formatMoney(2000)) .. " for operation equipment") 

			owner:addMoney(2000)

			return true
		end
		
		if string.find(ent:GetClass(), "zgo2_generator") then
			local pathtrim = string.Split(ent:GetModel(), "models/zerochain/props_growop2/")[2]
			local getType = string.sub(pathtrim, 15, 16)
			
			DarkRP.notify(owner, 1, 4, "You received " .. tostring(DarkRP.formatMoney(contraband["Generators"][getType])) .. " for operation equipment") 

			owner:addMoney(contraband["Generators"][getType])

			return true
		end	
		
		
		if string.find(ent:GetClass(), "zgo2_pot") then
			local pathtrim = string.Split(ent:GetModel(), "models/zerochain/props_growop2/")[2]
			local getType = string.sub(pathtrim, 9, 10)
			
			DarkRP.notify(owner, 1, 4, "You received " .. tostring(DarkRP.formatMoney(contraband["Pots"][getType])) .. " for growing equipment") 

			owner:addMoney(contraband["Pots"][getType])

			return true
		end		
		
		if string.find(ent:GetClass(), "zgo2_backmix") then
			local pathtrim = string.Split(ent:GetModel(), "models/zerochain/props_growop2/")[2]
			local mdltrim = string.Split(pathtrim, ".mdl")[1]
			local getType = string.sub(mdltrim, 14, 25)
			
			DarkRP.notify(owner, 1, 4, "You received " .. tostring(DarkRP.formatMoney(contraband["Mixes"][getType])) .. " for ingrediants") 

			owner:addMoney(contraband["Mixes"][getType])

			return true
		end	
		
		if string.find(ent:GetClass(), "zgo2_rack") then
			local pathtrim = string.Split(ent:GetModel(), "models/zerochain/props_growop2/")[2]
			local getType = string.sub(pathtrim, 10, 11)
			
			local Pots = {
					[".m"] = 4000, -- Regular
					["01"] = 2000 -- Small
			}
			
			DarkRP.notify(owner, 1, 4, "You received " .. tostring(DarkRP.formatMoney(contraband["Pots"][getType])) .. " for holding equipment") 

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
				DarkRP.notify(owner, 1, 4, "You received " .. tostring(DarkRP.formatMoney(contraband["Tents"][getType] + stored)) .. " for the operating tent") 
				owner:addMoney(contraband["Tents"][getType])
			else
				DarkRP.notify(owner, 1, 4, "You received " .. tostring(DarkRP.formatMoney(contraband["Tents"][getType] + stored)) .. " for the operating tent and attached equipment") 
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
			DarkRP.notify(owner, 1, 4, "You received " .. tostring(DarkRP.formatMoney(contraband[ent:GetClass()])) .. " for this entity and " .. tostring(DarkRP.formatMoney(MegaLongFormula)) .. " in contained jar values") 
		end
		owner:addMoney(MegaLongFormula + contraband[ent:GetClass()])
		
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
	local startpos = self.Owner:GetShootPos()
	local trace = util.TraceLine({
		start = startpos, 
		endpos = startpos + self.Owner:GetAimVector() * 100, 
		filter = {self.Owner}
	})
	
    if trace.Entity:IsValid() then
		local ent = trace.Entity
		local item = ent:GetClass()
        local value = contraband[item]
		
		-- If the entity is valid in the contraband list, reward with money.
        if value then
			if checkOwner(ent, self.Owner) then
				DarkRP.notify(self:GetOwner(), 1, 4, "You tried, but you own this entity!")
			else
				if getValue(ent, self.Owner) then -- For entities with not set values
					ent:Remove()
				else
					DarkRP.notify(self:GetOwner(), 1, 4, "You received " .. tostring(DarkRP.formatMoney(value)) .. " for destroying this illegal entity.")
					
					ent:Remove()
					self:GetOwner():addMoney(value)
				end
			end
		end
    end
end

local ConfiscationBatonVersion = 2.0

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
