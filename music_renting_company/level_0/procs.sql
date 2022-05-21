create or replace FUNCTION duration_to_string(duration INT)
rETURNS VARCHAR(16) as

$$
begin
    if duration < 0 then return '0:00';
    elsif duration is NULL then return '0:00';
    elsif mod(duration, 60) < 10 then return concat(duration/60, ':0', mod(duration, 60));
else return concat (duration/60, ':', mod(duration, 60));
    end if;
end
$$ LANGUAGE plpgsql;
