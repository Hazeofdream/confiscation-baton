AddCSLuaFile()

-- Add your list of items here
-- By default, This supports:
-- Default Money Printers
-- Zero's Methlab 2 
-- Zero's GrowOP
-- Zero's Yeastbeast

local contraband = {
	-- Default
    ["money_printer"] = "2000",
    ["gunlab"] = "400",
	
	-- Zero's GrowOP
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
	
	-- Zero's Yeastbeast aka Moonshine
	["zyb_distillery"] = 15000, -- High value because the condenser and cooler are not seperate entities but conjoined, this assumes they are attached.
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
	
	-- sPrinters
	["sprinter_tier_1"] = 6000,
	["sprinter_tier_2"] = 8000,
	["sprinter_tier_3"] = 9000,
	["sprinter_tier_4"] = 15000,
	
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

	["sprinter_rack"] = 50000,

	["zmlab2_item_meth"] = 500,
	["zmlab2_item_crate"] = 1000,
	["zmlab2_item_palette"] = 2000,

	["zyb_jar"] = 100
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

function SWEP:SetupDataTables()
    BaseClass.SetupDataTables(self)
    -- Float 0 = IronsightsTime
    -- Float 1 = LastPrimaryAttack
    -- Float 2 = ReloadEndTime
    -- Float 3 = BurstTime
    -- Float 4 = SeqIdleTime
    -- Float 5 = HoldTypeChangeTime
    self:NetworkVar("Float", 6, "LastReload")
end

function SWEP:Think()
    BaseClass.Think(self)
    if self.WaitingForAttackEffect and self:GetSeqIdleTime() ~= 0 and CurTime() >= self:GetSeqIdleTime() - 0.35 then
        self.WaitingForAttackEffect = false

        local Owner = self:GetOwner()

        local effectData = EffectData()
        effectData:SetOrigin(Owner:GetShootPos() + (Owner:EyeAngles():Forward() * 45))
        effectData:SetNormal(Owner:EyeAngles():Forward())
        util.Effect("StunstickImpact", effectData)
    end
end

local function getEnt(ent)
    return contraband[ent]
end

-- The darkrp function Getowning_ent does not work on certain things like zero's weed, so we filter that.

local function checkOwner(ent, owner)
	if string.find(ent:GetClass(), "zwf") then return end
	if string.find(ent:GetClass(), "zmlab2") then return end
	if string.find(ent:GetClass(), "zyb") then return end
	if owner == ent:Getowning_ent() then return true end
end


-- For some items like weed and meth, We use the original addons values to get the real value rather than use a flat amount.
local function getValue(ent, owner)
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
	
	if string.find(ent:GetClass(), "sprinter_rack") then 
		local money = 0
		for _, printer in pairs(ent.printers) do
			if !IsValid(printer) then continue end
			local stored = printer:GetWithdrawAmount()
			money = money + stored
			-- p:OnWithdrawn(ply, true) -- We dont want to do this or it logs as a withdrawn, inb4 "HE WITHDREW FROM THE PRINTERS! CORRUPTION!"
		end
		
		if money == 0 then return false
		else 
			DarkRP.notify(owner, 1, 4, "You received " .. tostring(DarkRP.formatMoney(contraband[ent:GetClass()])) .. " for this entity and " .. tostring(DarkRP.formatMoney(money)) .. " in printed money.") 
			for _, printer in pairs(ent.printers) do
				if !IsValid(printer) then continue end
				printer:SetMoney(0)
			end
		end

		owner:addMoney(money + contraband[ent:GetClass()])
	
		return true
	end	

	if string.find(ent:GetClass(), "sprinter_tier") then 
		if ent:GetWithdrawAmount() == 0 then return false
		else 
			DarkRP.notify(owner, 1, 4, "You received " .. tostring(DarkRP.formatMoney(contraband[ent:GetClass()])) .. " for this entity and " .. tostring(DarkRP.formatMoney(ent:GetWithdrawAmount())) .. " in printed money.")	
		end
		owner:addMoney(ent:GetWithdrawAmount() + contraband[ent:GetClass()])

		return true
	end	

	local AdjustedMoonShineValue = 85 -- Multiplier because moonshine values are legit pathetic.

	if string.find(ent:GetClass(), "zyb_jar") and not string.find(ent:GetClass(), "pack") and not string.find(ent:GetClass(), "crate") then -- SCREW YOU ZERO, STOP HAVING SIMILARLY NAMED ITEMS
		if ent:GetMoonShine() == 0 then return false
		else 
			DarkRP.notify(owner, 1, 4, "You received " .. tostring(DarkRP.formatMoney(contraband[ent:GetClass()])) .. " for this entity and " .. tostring(DarkRP.formatMoney(ent:GetMoonShine() * AdjustedMoonShineValue)) .. " in jar value.") 
		end
		owner:addMoney(ent:GetMoonShine() * AdjustedMoonShineValue + contraband[ent:GetClass()])

		return true
	end	
	
	if string.find(ent:GetClass(), "zyb_jarcrate") then
		local MegaLongFormula = (zyb.config.Jar.MoonshineAmount * ent:GetJarCount()) * AdjustedMoonShineValue

		if ent:GetJarCount() == 0 then return false
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
	
	local Owner = self:GetOwner()

	-- Make noise
	self:EmitSound(self.FleshHit[math.random(#self.Hit)])
	
	-- Do entity check
    local trace = self.Owner:GetEyeTrace()
	
    if trace.HitPos:Distance(self.Owner:GetShootPos()) <= 100 then
		
		if not IsValid(trace.Entity) then return end

		local ent = trace.Entity
		local item = ent:GetClass()
        local value = getEnt(item)
		
		-- If the entity is valid in the contraband list, reward with money.
        if value then
			if checkOwner(ent, self.Owner) then
				DarkRP.notify(Owner, 1, 4, "You tried, but you own this entity!")
			else
				if getValue(ent, self.Owner) then -- For entities with not set values
					ent:Remove()
				else
					self.WaitingForAttackEffect = true
					DarkRP.notify(Owner, 1, 4, "You received " .. tostring(DarkRP.formatMoney(value)) .. " for destroying this illegal entity.")
					
					ent:Remove()
					Owner:addMoney(value)
				end
			end
		end
    end
end