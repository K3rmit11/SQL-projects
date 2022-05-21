select name
from creature_template
where id not in (select creature.gid from creature)
