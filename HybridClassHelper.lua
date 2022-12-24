local BATTLEMAGE_INTRO_TEXT = "Congratulations, you are now a Battlemage!\n\n"..
    "Your new Hybrid Class combines all the abilities of a Mage, with several new abilities that make you a formidable\nmelee fighter."..
    "Your Stamina and Armor have been increased, and you will be able to dual-wield one-handed weapons.\n\n"..
    "You also start with two new abilities: Shoulder Charge and Arcane Cleave. Shoulder Charge allows you to rush an opponent and stun them with your impact."..
    "Arcane Cleave allows you to strike multiple opponents with a single blow.\n\n"..
    "To speed you in your quests, cast Mount Speed+ to enjoy a super-fast riding experience!\n\n"..
    "In addition to these abilities, you will gain additional skills as you level up. And level up you will, as your XP will accrue much faster as a Hybrid Class.\n\n"..
    "Now, go forth, and become legend!"

local function clearActionBar(from, to)
    for i = from, to do
        PickupAction(i);
        PutItemInBackpack();
        ClearCursor();
    end
end

local function setActionSlot(spell, location)
    PickupSpell(spell);
    PlaceAction(location);
    ClearCursor();
end

function HybridClassHelper_OnLoad()
    this:RegisterEvent("CHAT_MSG_ADDON");
    end

function HybridClassHelper_OnEvent()
	if (event == "CHAT_MSG_ADDON" and arg1 == "HybridClassHelper") then
		if (arg2 == "Grant 801") then
            clearActionBar(1, 12)
            SetHybridActionBar("BATTLEMAGE")
        elseif (arg2 == "Grant 401") then
            clearActionBar(1, 12)
            clearActionBar(73, 84)
            SetHybridActionBar("HIGHWAYMAN")
        elseif (arg2 == "Grant 101") then
            clearActionBar(1, 12)
            clearActionBar(73, 84)
            clearActionBar(85, 96)
            clearActionBar(97, 108)
            SetHybridActionBar("SHADOWWARRIOR")
        end
	end
end

function SetHybridActionBar(hybridClass)
    
    if (hybridClass == "HIGHWAYMAN") then
        setActionSlot("Auto Shot", 1);
        setActionSlot("Poisoned Shot", 2);
        setActionSlot("Sinister Strike", 3);
        setActionSlot("Slice and Dice", 4);
        setActionSlot("Eviscerate", 5);
        setActionSlot("Trueshot Aura", 11);
        setActionSlot("Mount Speed+ DND", 12);
    end
    if (hybridClass == "BATTLEMAGE") then
        setActionSlot("Auto Attack", 1);
        setActionSlot("Shoulder Charge", 2);
        setActionSlot("Arcane Cleave", 3);
        setActionSlot("Fire Blast", 4);
        setActionSlot("Frost Nova", 5);
        setActionSlot("Arcane Intellect", 10);
        setActionSlot("Frost Armor", 11);
        setActionSlot("Mount Speed+ DND", 12);
    end
    if (hybridClass == "SHADOWWARRIOR") then
        setActionSlot("Auto Attack", 1);
        setActionSlot("Shadowstep", 2);
        setActionSlot("Shadowsurge", 3);
        setActionSlot("Victory Rush", 4);
        setActionSlot("Thunder Clap", 5);
        setActionSlot("Resist Shadow", 10);
        setActionSlot("Shadowform", 11);
        setActionSlot("Mount Speed+ DND", 12);
        setActionSlot("Auto Attack", 73);
        setActionSlot("Shadowstep", 74);
        setActionSlot("Shadowsurge", 75);
        setActionSlot("Victory Rush", 76);
        setActionSlot("Thunder Clap", 77);
        setActionSlot("Resist Shadow", 82);
        setActionSlot("Shadowform", 83);
        setActionSlot("Mount Speed+ DND", 84);
        setActionSlot("Auto Attack", 85);
        setActionSlot("Shadowstep", 86);
        setActionSlot("Shadowsurge", 87);
        setActionSlot("Victory Rush", 88);
        setActionSlot("Thunder Clap", 89);
        setActionSlot("Resist Shadow", 94);
        setActionSlot("Shadowform", 95);
        setActionSlot("Mount Speed+ DND", 96);
        setActionSlot("Auto Attack", 97);
        setActionSlot("Shadowstep", 98);
        setActionSlot("Shadowsurge", 99);
        setActionSlot("Victory Rush", 100);
        setActionSlot("Thunder Clap", 101);
        setActionSlot("Shadowform", 106);
        setActionSlot("Shadowform", 107);
        setActionSlot("Mount Speed+ DND", 108);
    end
end
