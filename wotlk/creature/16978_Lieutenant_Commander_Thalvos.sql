SET @NPC = 16978;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @NPC;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;

DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`,
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`,
`action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`,
`target_y`, `target_z`, `target_o`, `comment`) VALUES
(@NPC, 0, 0, 0, 0, 0, 50, 0, 4000, 4000, 8000, 8000, 11, 8242, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'cast'),
(@NPC, 0, 1, 0, 0, 0, 50, 0, 5000, 5000, 10000, 10000, 11, 11976, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'cast');
