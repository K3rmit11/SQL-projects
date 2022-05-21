select title, name
from quest, character, character_quests
where quest.id = character_quests.quest_id and character.id = character_quests.character_id and character_quests.complete = 0
order by title, name
