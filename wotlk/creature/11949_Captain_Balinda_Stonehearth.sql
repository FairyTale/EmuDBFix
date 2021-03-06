SET @NPC = 11949;
UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'boss_balinda' WHERE `entry` = @NPC;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;

DELETE FROM `script_texts` WHERE `npc_entry` = @NPC;
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `type`, `comment`) VALUES
(@NPC, -1810023, 'Begone, uncouth scum! The Alliance shall prevail in Alterac Valley!', 1, 'balinda YELL_AGGRO'),
(@NPC, -1810024, 'Filthy Frostwolf cowards! If you want a fight, you\'ll have to come to me!', 1, 'balinda YELL_EVADE');