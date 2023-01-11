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
        setActionSlot("Aimed Shot", 2);
        setActionSlot("Sinister Strike", 3);
        setActionSlot("Slice and Dice", 4);
        setActionSlot("Eviscerate", 5);
        setActionSlot("Trueshot Aura", 12);
    end
    if (hybridClass == "BATTLEMAGE") then
        setActionSlot("Auto Attack", 1);
        setActionSlot("Shoulder Charge", 2);
        setActionSlot("Arcane Cleave", 3);
        setActionSlot("Fire Blast", 4);
        setActionSlot("Fireball", 5);
        setActionSlot("Frost Nova", 6);
        setActionSlot("Arcane Intellect", 10);        
        setActionSlot("Frost Armor", 12);
    end
    if (hybridClass == "SHADOWWARRIOR") then
        setActionSlot("Auto Attack", 1);
        setActionSlot("Shadowstep", 2);
        setActionSlot("Shadowsurge", 3);
        setActionSlot("Victory Rush", 4);
        setActionSlot("Thunder Clap", 5);
        setActionSlot("Resist Shadow", 10);
        setActionSlot("Shadowform", 12);
        setActionSlot("Auto Attack", 73);
        setActionSlot("Shadowstep", 74);
        setActionSlot("Shadowsurge", 75);
        setActionSlot("Victory Rush", 76);
        setActionSlot("Thunder Clap", 77);
        setActionSlot("Resist Shadow", 82);
        setActionSlot("Shadowform", 84);
        setActionSlot("Auto Attack", 85);
        setActionSlot("Shadowstep", 86);
        setActionSlot("Shadowsurge", 87);
        setActionSlot("Victory Rush", 88);
        setActionSlot("Thunder Clap", 89);
        setActionSlot("Resist Shadow", 94);
        setActionSlot("Shadowform", 96);
        setActionSlot("Auto Attack", 97);
        setActionSlot("Shadowstep", 98);
        setActionSlot("Shadowsurge", 99);
        setActionSlot("Victory Rush", 100);
        setActionSlot("Thunder Clap", 101);
        setActionSlot("Shadowform", 107);
    end
end
