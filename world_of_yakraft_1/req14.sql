select title from quest
join character_quests on quest_id = quest.id and complete = 1
join character on character.id = character_id and character.name = 'Kuro'
order by title
