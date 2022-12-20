function HybridClassHelper_OnLoad()
    this:RegisterEvent("CHAT_MSG_ADDON");
end

function HybridClassHelper_OnEvent()
	if (event == "CHAT_MSG_ADDON" and arg1 == "HybridClassHelper") then
		if (arg2 == "Grant 801") then
            SetHybridActionBar("BATTLEMAGE")
        elseif (arg2 == "Grant 401") then
            SetHybridActionBar("HIGHWAYMAN")
        end
	end
end

local function clearActionBar(from, to)
    for i = from, to do
        PickupAction(i);
        PutItemInBackpack();
        ClearCursor();
    end
end

function SetHybridActionBar(hybridClass)
    clearActionBar(1, 12)
    if (hybridClass == "HIGHWAYMAN") then
        PickupSpell("Auto Shot");
        PlaceAction(1);
        ClearCursor();
        PickupSpell("Poisoned Shot");
        PlaceAction(2);
        ClearCursor();
        PickupSpell("Sinister Strike");
        PlaceAction(3);
        ClearCursor();
        PickupSpell("Slice and Dice");
        PlaceAction(4);
        ClearCursor();
        PickupSpell("Eviscerate");
        PlaceAction(5);
        ClearCursor();
        PickupSpell("Trueshot Aura");
        PlaceAction(12);
        ClearCursor();
    end
    if (hybridClass == "BATTLEMAGE") then
        PickupSpell("Auto Attack");
        PlaceAction(1);
        ClearCursor();
        PickupSpell("Shoulder Charge");
        PlaceAction(2);
        ClearCursor();
        PickupSpell("Arcane Cleave");
        PlaceAction(3);
        ClearCursor();
        PickupSpell("Fire Blast");
        PlaceAction(4);
        ClearCursor();
        PickupSpell("Frost Nova");
        PlaceAction(5);
        ClearCursor();
        PickupSpell("Arcane Intellect");
        PlaceAction(11);
        ClearCursor();
    end
end
