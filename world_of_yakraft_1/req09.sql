select name
from creature_template
join creature on creature.gid = creature_template.id and creature.id = 6
